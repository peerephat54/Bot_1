import asyncio
import json
import logging
import os
import re
import time
from datetime import datetime
from logging.handlers import RotatingFileHandler
from pathlib import Path

import truststore

# Configure the system trust store before importing HTTP clients such as
# discord.py/aiohttp and Supabase/httpx.
truststore.inject_into_ssl()

import discord
from discord import app_commands
from dotenv import load_dotenv
from supabase import Client, create_client
from screening import FIELDS as SCREENING_FIELDS, group_universities, screening_entries
from admission_dates import event_date, portfolio_dates
from application_cards import application_question_fields
from local_admissions import load_catalog, local_candidates, calendar_fields
from rule_engine import evaluate_application_rules, render_rule_checks
from usage_metrics import new_flow_id, record_event

load_dotenv()

logger = logging.getLogger("bot_portfolio")
logger.setLevel(logging.INFO)
if not logger.handlers:
    log_handler = RotatingFileHandler(
        Path(__file__).with_name("bot.log"),
        maxBytes=1_000_000,
        backupCount=2,
        encoding="utf-8",
    )
    log_handler.setFormatter(
        logging.Formatter("%(asctime)s %(levelname)s %(message)s")
    )
    logger.addHandler(log_handler)

discord_token = os.getenv("DISCORD_BOT_TOKEN")
supabase_url = os.getenv("SUPABASE_URL")
supabase_key = os.getenv("SUPABASE_KEY")

if not discord_token:
    raise RuntimeError("ไม่พบ DISCORD_BOT_TOKEN กรุณากำหนดค่าในไฟล์ .env")
if not supabase_url or not supabase_key:
    raise RuntimeError("ไม่พบ SUPABASE_URL หรือ SUPABASE_KEY กรุณากำหนดค่าในไฟล์ .env")

database: Client = create_client(supabase_url, supabase_key)
intents = discord.Intents.default()

NAVIGATION_CACHE_TTL_SECONDS = 300

THAI_MONTHS = (
    "",
    "ม.ค.",
    "ก.พ.",
    "มี.ค.",
    "เม.ย.",
    "พ.ค.",
    "มิ.ย.",
    "ก.ค.",
    "ส.ค.",
    "ก.ย.",
    "ต.ค.",
    "พ.ย.",
    "ธ.ค.",
)


def format_checked_at(value):
    """Format an ISO source timestamp without pretending it is a publish date."""
    if not value:
        return "ไม่ระบุ"
    try:
        parsed = datetime.fromisoformat(str(value).replace("Z", "+00:00"))
    except (TypeError, ValueError):
        return str(value)
    return f"{parsed.day} {THAI_MONTHS[parsed.month]} {parsed.year + 543}"


def load_dataset_checked_at():
    try:
        dataset_path = Path(__file__).with_name("datasets") / "tcas70_admissions.json"
        payload = json.loads(dataset_path.read_text(encoding="utf-8"))
        return format_checked_at(payload.get("checked_at"))
    except (OSError, ValueError, TypeError):
        logger.exception("could not read dataset checked_at")
        return "ไม่ระบุ"


DATASET_CHECKED_AT_DISPLAY = load_dataset_checked_at()


def load_local_preview_catalog():
    """Load audited fallback references that the read-only Supabase role cannot update."""
    try:
        dataset_path = Path(__file__).with_name("datasets") / "tcas70_admissions.json"
        payload = json.loads(dataset_path.read_text(encoding="utf-8"))
        return {
            program["code"]: program.get("admission_previews") or []
            for program in payload.get("programs") or []
            if program.get("code") and program.get("admission_previews")
        }
    except (OSError, ValueError, TypeError):
        logger.exception("could not read local admission preview catalog")
        return {}


LOCAL_PREVIEW_CATALOG = load_local_preview_catalog()
LOCAL_ADMISSIONS_CATALOG = load_catalog()


def fetch_local_project_additions():
    """Prefer readable Supabase records, including visible closed projects."""
    codes = LOCAL_ADMISSIONS_CATALOG.get("runtime_local_project_codes", [])
    if not codes:
        return []
    response = database.table("admission_projects").select("code").in_("code", codes).execute()
    remote_codes = {row["code"] for row in response.data or []}
    return local_candidates(LOCAL_ADMISSIONS_CATALOG, remote_codes)


def merge_admission_previews(remote_previews, local_previews):
    merged = {}
    # The audited local catalog is regenerated from source files and is the
    # authoritative fallback while the runtime Supabase role is read-only.
    # Using both catalogs left stale aggregate rows visible beside newer,
    # project-level rows.
    source_previews = local_previews or remote_previews or []
    for preview in source_previews:
        key = (
            preview.get("title"),
            preview.get("reference_academic_year"),
            preview.get("source_url"),
        )
        merged[key] = dict(preview)
    return sorted(
        merged.values(),
        key=lambda item: (
            -(item.get("reference_academic_year") or 0),
            str(item.get("title") or "").casefold(),
        ),
    )

# Keep the complete official curriculum catalog in Supabase, but limit the
# Discord navigation to the three IT KMITL majors requested for this bot.
# The source page confirms all four programs; BIT remains stored and can be
# restored to the menu later without recreating its data.
PROGRAM_CODES_EXCLUDED_FROM_BOT_SCOPE = {
    "kmitl-bit",
}

PROGRAM_CODE_NAVIGATION_ORDER = {
    "kmitl-ait": 0,
    "kmitl-it": 1,
    "kmitl-dsba": 2,
}

# Discord autocomplete must answer within roughly three seconds. University
# names change rarely and the verified scope is intentionally kept explicit,
# so use native command choices that Discord can render immediately. Faculty,
# program, and project data continue to load from Supabase after selection.
UNIVERSITY_SLASH_CHOICES = [
    app_commands.Choice(
        name="CU — จุฬาลงกรณ์มหาวิทยาลัย", value="CU"
    ),
    app_commands.Choice(
        name="KMITL — สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง",
        value="KMITL",
    ),
    app_commands.Choice(
        name="KMUTNB — มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ",
        value="KMUTNB",
    ),
    app_commands.Choice(
        name="KMUTT — มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี",
        value="KMUTT",
    ),
    app_commands.Choice(name="KU — มหาวิทยาลัยเกษตรศาสตร์", value="KU"),
    app_commands.Choice(name="MU — มหาวิทยาลัยมหิดล", value="MU"),
    app_commands.Choice(name="CMU — มหาวิทยาลัยเชียงใหม่", value="CMU"),
    app_commands.Choice(name="TU — มหาวิทยาลัยธรรมศาสตร์", value="TU"),
    app_commands.Choice(name="SWU — มหาวิทยาลัยศรีนครินทรวิโรฒ", value="SWU"),
]


class MyBot(discord.Client):
    def __init__(self):
        super().__init__(intents=intents)
        self.tree = app_commands.CommandTree(self)
        self.navigation_programs_cache = []
        self.navigation_cache_loaded_at = 0.0

    async def load_navigation_programs(self, *, force=False, timeout=15):
        cache_is_fresh = (
            self.navigation_programs_cache
            and time.monotonic() - self.navigation_cache_loaded_at
            < NAVIGATION_CACHE_TTL_SECONDS
        )
        if cache_is_fresh and not force:
            return self.navigation_programs_cache

        try:
            programs = await asyncio.wait_for(
                asyncio.to_thread(fetch_navigation_programs),
                timeout=timeout,
            )
        except Exception:
            if self.navigation_programs_cache:
                logger.exception(
                    "could not refresh navigation cache; using stale data"
                )
                return self.navigation_programs_cache
            raise

        self.navigation_programs_cache = programs
        self.navigation_cache_loaded_at = time.monotonic()
        return programs

    async def setup_hook(self):
        try:
            await self.load_navigation_programs(timeout=15)
        except Exception:
            logger.exception("could not preload navigation choices")
        await self.tree.sync()
        print("Synced slash commands successfully!")

    async def on_ready(self):
        print(f"Logged in as {self.user} (ID: {self.user.id})")
        print("------")


bot = MyBot()


def first_relation(value):
    if isinstance(value, list):
        return value[0] if value else {}
    return value or {}


def criteria_for_program(value, program_id):
    """Pick exact project/program criteria; use a legacy project row only as fallback."""
    if isinstance(value, list):
        rows = value
    elif value:
        rows = [value]
    else:
        rows = []

    for row in rows:
        if row.get("faculty_id") == program_id:
            return row
    for row in rows:
        if not row.get("faculty_id"):
            return row
    return {}


def fetch_program_projects(program_code: str):
    program_response = (
        database.table("faculties_and_majors")
        .select(
            "id,code,faculty_name,major_name,academic_year,program_type,language,"
            "curriculum_credits,curriculum_year,duration_years,official_program_url,"
            "admission_previews,"
            "universities(name,short_name,logo_url),"
            "university_campuses(code,name,is_main,official_url)"
        )
        .eq("code", program_code)
        .eq("data_status", "official")
        .limit(1)
        .execute()
    )
    if not program_response.data:
        # A newly imported university may be available from the audited local
        # fallback before its delta seed has been run in Supabase. Keep the
        # direct University -> Campus -> Faculty -> Major flow usable in that
        # state instead of showing a misleading "not found" message.
        local_items = [
            item
            for item in fetch_local_project_additions()
            if item["program"].get("code") == program_code
        ]
        if not local_items:
            return None
        program = local_items[0]["program"]
        program["admission_previews"] = merge_admission_previews(
            program.get("admission_previews"),
            LOCAL_PREVIEW_CATALOG.get(program_code),
        )
        program["projects"] = [item["project"] for item in local_items]
        program["projects"].sort(
            key=lambda item: (
                str(item.get("round_variant") or ""),
                str(item.get("name") or ""),
            )
        )
        return program

    program = program_response.data[0]
    program["admission_previews"] = merge_admission_previews(
        program.get("admission_previews"),
        LOCAL_PREVIEW_CATALOG.get(program_code),
    )
    project_response = (
        database.table("admission_project_programs")
        .select(
            "slots_available,program_notes,"
            "admission_projects!inner("
            "id,code,name,academic_year,tcas_round,round_label,round_variant,"
            "publication_status,selection_order_limit,application_fee,"
            "tuition_fee_per_semester,source_url,source_published_at,"
            "source_checked_at,data_notes,"
            "admission_criteria("
            "faculty_id,criteria_summary,min_gpax,gpax_requirements,subject_gpax,"
            "min_english_score,standardized_scores,applicant_qualifications,"
            "portfolio_requirements,"
            "portfolio_details,accepted_achievements,required_documents,"
            "selection_methods,additional_requirements),"
            "admission_timeline("
            "event_name,start_on,end_on,date_display,date_status)"
            ")"
        )
        .eq("program_id", program["id"])
        .eq("admission_projects.publication_status", "official")
        .eq("admission_projects.is_visible", True)
        .execute()
    )

    projects = []
    for link in project_response.data or []:
        project = first_relation(link.get("admission_projects"))
        if not project:
            continue
        project["slots_available"] = link.get("slots_available")
        project["program_notes"] = link.get("program_notes")
        project["selected_criteria"] = criteria_for_program(
            project.get("admission_criteria"), program["id"]
        )
        projects.append(project)

    projects.extend(
        item["project"] for item in fetch_local_project_additions()
        if item["program"]["code"] == program_code
    )
    projects.sort(
        key=lambda item: (
            str(item.get("round_variant") or ""),
            str(item.get("name") or ""),
        )
    )
    program["projects"] = projects
    return program


def fetch_recommendation_projects():
    """Return official project/program pairs for deterministic beginner filtering."""
    response = (
        database.table("admission_project_programs")
        .select(
            "slots_available,program_notes,"
            "faculties_and_majors!inner("
            "id,code,faculty_name,major_name,academic_year,program_type,language,"
            "curriculum_credits,curriculum_year,duration_years,official_program_url,"
            "universities(name,short_name,logo_url),"
            "university_campuses(code,name,is_main,official_url)),"
            "admission_projects!inner("
            "id,code,name,academic_year,tcas_round,round_label,round_variant,"
            "publication_status,selection_order_limit,application_fee,"
            "tuition_fee_per_semester,source_url,source_published_at,"
            "source_checked_at,data_notes,"
            "admission_criteria("
            "faculty_id,criteria_summary,min_gpax,gpax_requirements,subject_gpax,"
            "min_english_score,standardized_scores,applicant_qualifications,"
            "portfolio_requirements,portfolio_details,accepted_achievements,"
            "required_documents,selection_methods,additional_requirements),"
            "admission_timeline("
            "event_name,start_on,end_on,date_display,date_status))"
        )
        .eq("admission_projects.academic_year", 2570)
        .eq("admission_projects.publication_status", "official")
        .eq("admission_projects.is_visible", True)
        .execute()
    )

    candidates = []
    for row in response.data or []:
        program = first_relation(row.get("faculties_and_majors"))
        project = first_relation(row.get("admission_projects"))
        if (
            not program
            or not project
            or program.get("code") in PROGRAM_CODES_EXCLUDED_FROM_BOT_SCOPE
        ):
            continue
        project["slots_available"] = row.get("slots_available")
        project["program_notes"] = row.get("program_notes")
        project["selected_criteria"] = criteria_for_program(
            project.get("admission_criteria"), program.get("id")
        )
        candidates.append({"program": program, "project": project})
    candidates.extend(fetch_local_project_additions())
    return candidates


def fetch_grade_screening(navigation_programs, gpax, field):
    catalog_path = Path(__file__).with_name("datasets") / "tcas70_admissions.json"
    catalog = json.loads(catalog_path.read_text(encoding="utf-8"))
    # A failed live query must not masquerade as an absence of current criteria.
    candidates = fetch_recommendation_projects()
    return screening_entries(candidates, catalog, navigation_programs, gpax, field)


def fetch_navigation_programs():
    """Return every official technology curriculum in the TCAS70 dataset."""
    response = (
        database.table("admission_project_programs")
        .select(
            "faculties_and_majors!inner("
            "code,faculty_name,major_name,admission_previews,"
            "university_campuses(code,name,is_main),"
            "universities!inner(name,short_name)),"
            "admission_projects!inner(academic_year,publication_status,is_visible)"
        )
        .eq("admission_projects.academic_year", 2570)
        .eq("admission_projects.publication_status", "official")
        .eq("admission_projects.is_visible", True)
        .execute()
    )

    programs = {}

    def add_program(program, *, has_official_projects):
        code = program.get("code")
        if not code or code in PROGRAM_CODES_EXCLUDED_FROM_BOT_SCOPE:
            return
        previews = merge_admission_previews(
            program.get("admission_previews"),
            LOCAL_PREVIEW_CATALOG.get(code),
        )
        current_preview_count = sum(
            1
            for preview in previews
            if preview.get("reference_academic_year") == 2570
        )
        prior_years = [
            preview.get("reference_academic_year")
            for preview in previews
            if isinstance(preview.get("reference_academic_year"), int)
            and preview.get("reference_academic_year") < 2570
        ]
        has_reference_details = any(
            preview.get("slots_available") is not None
            or preview.get("min_gpax") is not None
            or preview.get("gpax_summary")
            or preview.get("selection_summary")
            for preview in previews
        )
        university = first_relation(program.get("universities"))
        campus = first_relation(program.get("university_campuses"))
        existing = programs.get(code)
        programs[code] = {
            "code": code,
            "faculty_name": program.get("faculty_name") or "ไม่ระบุคณะ",
            "major_name": program.get("major_name") or program.get("faculty_name"),
            "university_short_name": university.get("short_name") or "มหาวิทยาลัย",
            "university_name": university.get("name") or "ไม่ระบุมหาวิทยาลัย",
            "campus_code": campus.get("code") or "main",
            "campus_name": campus.get("name") or "วิทยาเขตหลัก",
            "is_main_campus": bool(campus.get("is_main")),
            "has_official_projects": has_official_projects
            or bool(existing and existing.get("has_official_projects")),
            "has_admission_previews": bool(previews)
            or bool(existing and existing.get("has_admission_previews")),
            "current_preview_count": max(
                current_preview_count,
                int((existing or {}).get("current_preview_count") or 0),
            ),
            "latest_reference_year": max(
                prior_years + [int((existing or {}).get("latest_reference_year") or 0)]
            )
            or None,
            "has_reference_details": has_reference_details
            or bool(existing and existing.get("has_reference_details")),
        }

    for row in response.data or []:
        program = first_relation(row.get("faculties_and_majors"))
        add_program(program, has_official_projects=True)

    catalog_response = (
        database.table("faculties_and_majors")
        .select(
            "code,faculty_name,major_name,admission_previews,"
            "university_campuses(code,name,is_main),"
            "universities!inner(name,short_name)"
        )
        .eq("academic_year", 2570)
        .eq("data_status", "official")
        .execute()
    )
    for program in catalog_response.data or []:
        add_program(program, has_official_projects=False)

    for candidate in fetch_local_project_additions():
        add_program(candidate["program"], has_official_projects=True)

    return sorted(
        programs.values(),
        key=lambda item: (
            item["university_name"].casefold(),
            item["faculty_name"].casefold(),
            PROGRAM_CODE_NAVIGATION_ORDER.get(item["code"], 999),
            item["major_name"].casefold(),
        ),
    )


def fetch_searchable_programs():
    """Backward-compatible compact list used by diagnostics and tests."""
    return [
        (
            item["code"],
            f"{item['university_short_name']} — {item['major_name']}"[:100],
        )
        for item in fetch_navigation_programs()
    ]


def shorten(value, limit=1024):
    text = str(value or "ไม่ระบุ").strip()
    if len(text) <= limit:
        return text
    return text[: limit - 1].rstrip() + "…"


def format_json_scores(value):
    if not value:
        return "ไม่มีคะแนนสอบเพิ่มเติม"
    if isinstance(value, dict):
        parts = []
        for name, requirement in value.items():
            if isinstance(requirement, dict):
                if "score" in requirement:
                    operator = requirement.get("operator", "≥")
                    detail = f"{operator} {requirement['score']}"
                    if requirement.get("note"):
                        detail += f" ({requirement['note']})"
                else:
                    detail = ", ".join(
                        f"{key} {item}" for key, item in requirement.items()
                    )
                parts.append(f"{name}: {detail}")
            else:
                parts.append(f"{name} ≥ {requirement}")
        return "\n".join(f"• {part}" for part in parts)
    return json.dumps(value, ensure_ascii=False)


def format_timeline(events):
    if not events:
        return "ยังไม่ประกาศกำหนดการ"

    def event_key(event):
        return event.get("start_on") or "9999-12-31"

    lines = []
    for event in sorted(events, key=event_key):
        display = event_date(event)
        lines.append(f"• {event.get('event_name', 'เหตุการณ์')}: {display}")
    return "\n".join(lines)


def format_timeline_summary(events, max_events=4):
    """Pick the milestones students need first instead of showing every date."""
    if not events:
        return "ยังไม่ประกาศกำหนดการ"

    sorted_events = sorted(
        events, key=lambda event: event.get("start_on") or "9999-12-31"
    )
    milestone_checks = [
        lambda name: (
            ("รับสมัคร" in name or "สมัครทาง" in name or "สร้าง Portfolio" in name)
            and "ชำระ" not in name
        ),
        lambda name: "สัมภาษณ์" in name and "ประกาศ" not in name,
        lambda name: "ผู้ผ่านการคัดเลือก" in name,
        lambda name: "ยืนยันสิทธิ์" in name,
    ]
    selected = []
    selected_ids = set()
    for check in milestone_checks:
        match = next(
            (
                event
                for event in sorted_events
                if id(event) not in selected_ids
                and check(str(event.get("event_name") or ""))
            ),
            None,
        )
        if match:
            selected.append(match)
            selected_ids.add(id(match))

    for event in sorted_events:
        if len(selected) >= max_events:
            break
        if id(event) not in selected_ids:
            selected.append(event)
            selected_ids.add(id(event))

    selected.sort(key=lambda event: event.get("start_on") or "9999-12-31")
    return format_timeline(selected[:max_events])


def interview_requirement(criteria):
    """Read an explicit no-interview rule or an interview selection method."""
    criteria = criteria or {}
    additional = criteria.get("additional_requirements")
    if isinstance(additional, dict) and "interview_required" in additional:
        return additional["interview_required"]
    methods = criteria.get("selection_methods")
    if "สัมภาษณ์" in json.dumps(methods, ensure_ascii=False):
        return True
    return None


HUMAN_LABELS = {
    "name": "หัวข้อ",
    "weight_percent": "สัดส่วน",
    "semesters": "จำนวนภาคเรียน",
    "studying_semesters": "ผู้กำลังเรียน: จำนวนภาคเรียน",
    "graduated_semesters": "ผู้จบแล้ว: จำนวนภาคเรียน",
    "graduated": "ผู้จบแล้ว",
    "minimum_subject_credits": "หน่วยกิตขั้นต่ำรายกลุ่มวิชา",
    "interview_required": "มีสอบสัมภาษณ์",
    "written_exam_required": "มีสอบข้อเขียน",
    "program_code_in_announcement": "รหัสในประกาศ",
    "selection_limit_within_project": "เลือกได้สูงสุด",
    "advanced_placement_courses": "รายวิชาโครงการเรียนล่วงหน้า",
    "choose_courses": "จำนวนวิชาที่ต้องเลือก",
    "minimum_grade": "เกรดขั้นต่ำ",
    "minimum_average_grade": "เกรดเฉลี่ยขั้นต่ำ",
    "interview_language": "ภาษาสัมภาษณ์",
    "interview_breakdown": "สัดส่วนสัมภาษณ์",
    "qualification_paths": "ทางเลือกคุณสมบัติ",
    "path": "ทางเลือก",
    "sat_math_min": "SAT Math ขั้นต่ำ",
    "sat_total_min": "SAT รวมขั้นต่ำ",
    "english_score_one_of": "คะแนนภาษาอังกฤษอย่างใดอย่างหนึ่ง",
    "subjects": "รายวิชา",
    "minimum_each": "ขั้นต่ำต่อวิชา",
    "course_01204111_selection_only": "ใช้คัดเลือกเฉพาะรหัส 01204111",
    "tuition_first_and_later_terms": "ค่าเทอมภาคแรกและภาคถัดไป",
    "tuition_first_term": "ค่าเทอมภาคแรก",
    "tuition_later_terms": "ค่าเทอมภาคถัดไป",
    "video_max_minutes": "ความยาววิดีโอสูงสุด (นาที)",
    "max_featured_awarded_projects": "จำนวนผลงานรางวัลที่นำเสนอได้สูงสุด",
    "minimum_primary_contribution_percent": "สัดส่วนผลงานที่ทำหลักขั้นต่ำ",
    "ai_usage_disclosure_required": "ต้องระบุการใช้ AI",
}


def human_label(key):
    """Turn dataset keys into labels that are readable in Discord cards."""
    key = str(key)
    if key in HUMAN_LABELS:
        return HUMAN_LABELS[key]
    return key.replace("_", " ").strip().capitalize()


def format_human_inline(value):
    """Render nested JSON values without exposing Python/JSON notation."""
    if value in (None, "", [], {}):
        return ""
    if isinstance(value, bool):
        return "ใช่" if value else "ไม่"
    if isinstance(value, dict):
        simple_pairs = all(
            not isinstance(item, (dict, list, tuple))
            and str(key) not in HUMAN_LABELS
            and "_" not in str(key)
            for key, item in value.items()
        )
        if simple_pairs:
            return "; ".join(
                f"{key} {format_human_inline(item)}"
                for key, item in value.items()
                if format_human_inline(item)
            )
        parts = []
        for key, item in value.items():
            detail = format_human_inline(item)
            if detail:
                parts.append(f"{human_label(key)}: {detail}")
        return "; ".join(parts)
    if isinstance(value, (list, tuple)):
        return "; ".join(
            format_human_inline(item) for item in value if format_human_inline(item)
        )
    return str(value)


def format_bullets(values, limit=600):
    if not values:
        return None
    if isinstance(values, dict):
        values = [
            f"{human_label(key)}: {format_human_inline(item)}"
            for key, item in values.items()
            if format_human_inline(item)
        ]
    elif not isinstance(values, (list, tuple)):
        values = [values]
    text = "\n".join(
        f"• {format_human_inline(item)}"
        for item in values
        if format_human_inline(item)
    )
    return shorten(text, limit) if text else None


def format_key_values(value, limit=600):
    if not value:
        return None
    if not isinstance(value, dict):
        return format_bullets(value, limit)

    lines = []
    for key, item in value.items():
        detail = format_human_inline(item)
        if detail:
            lines.append(f"• {human_label(key)}: {detail}")
    return shorten("\n".join(lines), limit) if lines else None


def format_selection_method(method):
    """Make weighted selection methods read like normal Thai text."""
    if not isinstance(method, dict):
        return format_human_inline(method)
    name = method.get("name") or method.get("method")
    weight = method.get("weight_percent")
    if name and weight is not None:
        weight_text = str(weight)
        if not weight_text.endswith("%"):
            weight_text += "%"
        return f"{name} — {weight_text}"
    return format_human_inline(method)


def format_selection_methods(methods, limit=700):
    if not methods:
        return None
    if not isinstance(methods, (list, tuple)):
        methods = [methods]
    return format_bullets(
        [format_selection_method(method) for method in methods], limit
    )


def format_money(value):
    if value is None:
        return "ประกาศไม่ได้ระบุ"
    if isinstance(value, (int, float)):
        return f"{value:,.0f} บาท"
    return str(value)


def display_value(value, suffix=None):
    if value in (None, "", [], {}):
        return "ประกาศไม่ได้ระบุ"
    return f"{value}{suffix or ''}"


def parse_gpax(value):
    try:
        gpax = float(str(value).strip().replace(",", "."))
    except (TypeError, ValueError):
        return None
    return gpax if 0 <= gpax <= 4 else None


def parse_budget(value):
    text = str(value or "").replace(",", "")
    if any(term in text.casefold() for term in ("ไม่จำกัด", "ไม่ติด", "any")):
        return None
    amounts = [int(item) for item in re.findall(r"\d{4,6}", text)]
    return amounts[0] if amounts else None


def preferred_language(value):
    text = str(value or "").casefold()
    if any(term in text for term in ("ได้ทั้ง", "ไม่จำกัด", "อะไรก็", "any")):
        return "any"
    if any(term in text for term in ("นานาชาติ", "อังกฤษ", "english", "inter")):
        return "english"
    if "ไทย" in text:
        return "thai"
    return "any"


def language_matches(preference, program_language):
    if preference == "any" or not program_language:
        return True
    language = str(program_language).casefold()
    is_english = (
        language.strip() in {"อังกฤษ", "english"}
        or "นานาชาติ" in language
        or "สองภาษา" in language
        or "ไทยและอังกฤษ" in language
        or "bilingual" in language
    )
    if preference == "english":
        return is_english
    return not (language.strip() == "อังกฤษ" or language.strip() == "english")


INTEREST_GROUPS = {
    "ai": ("ai", "ปัญญาประดิษฐ์", "machine learning", "แมชชีนเลิร์นนิง"),
    "data": ("data", "ข้อมูล", "วิเคราะห์", "analytics"),
    "software": ("เว็บ", "web", "แอป", "app", "software", "ซอฟต์แวร์", "เขียนโปรแกรม"),
    "hardware": ("หุ่นยนต์", "robot", "iot", "วงจร", "hardware", "ฮาร์ดแวร์"),
    "security": ("security", "cyber", "ความปลอดภัย", "ไซเบอร์"),
    "design": ("เกม", "game", "ออกแบบ", "design", "สื่อ", "media"),
}

PROGRAM_LOCATION_KEYS = {
    ("CU", "main"): "bangkok",
    ("CU", "pathum-wan"): "bangkok",
    ("KMITL", "ladkrabang"): "bangkok",
    ("KMITL", "chumphon"): "chumphon",
    ("KMUTNB", "main"): "bangkok",
    ("KMUTNB", "bangkok"): "bangkok",
    ("KMUTNB", "prachinburi"): "prachinburi",
    ("KMUTT", "bangmod"): "bangkok",
    ("KMUTT", "bangkhuntien"): "bangkok",
    ("KMUTT", "ratchaburi"): "ratchaburi",
    ("KU", "bangkhen"): "bangkok",
    ("KU", "sakon-nakhon"): "sakon-nakhon",
    ("MU", "salaya"): "nakhon-pathom",
    ("CMU", "main"): "chiang-mai",
    ("TU", "rangsit"): "pathum-thani",
}


def requested_location_keys(value):
    text = str(value or "").casefold()
    if any(term in text for term in ("ไม่จำกัด", "ได้ทุก", "ทั่วประเทศ", "any")):
        return set()
    keys = set()
    terms = {
        "bangkok": ("กรุงเทพ", "กทม", "bangkok"),
        "chumphon": ("ชุมพร", "chumphon"),
        "prachinburi": ("ปราจีนบุรี", "prachin"),
        "ratchaburi": ("ราชบุรี", "ratchaburi"),
        "sakon-nakhon": ("สกลนคร", "sakon"),
        "nakhon-pathom": ("นครปฐม", "ศาลายา", "salaya"),
        "chiang-mai": ("เชียงใหม่", "chiang mai"),
        "pathum-thani": ("ปทุมธานี", "รังสิต", "rangsit"),
    }
    for key, aliases in terms.items():
        if any(alias in text for alias in aliases):
            keys.add(key)
    if "ปริมณฑล" in text:
        keys.update(("bangkok", "nakhon-pathom", "pathum-thani"))
    return keys


def interest_score(profile_text, candidate_text):
    profile_folded = str(profile_text or "").casefold()
    candidate_folded = str(candidate_text or "").casefold()
    score = 0
    for terms in INTEREST_GROUPS.values():
        if any(term in profile_folded for term in terms) and any(
            term in candidate_folded for term in terms
        ):
            score += 3
    return score


def evaluate_project_fit(profile, program, project):
    """Keep the old call site while delegating decisions to the rule engine."""
    assessment = evaluate_application_rules(profile, program, project)
    candidate_text = " ".join(
        str(value or "")
        for value in (
            program.get("faculty_name"),
            program.get("major_name"),
            project.get("name"),
            (project.get("selected_criteria") or {}).get("criteria_summary"),
            (project.get("selected_criteria") or {}).get("accepted_achievements"),
        )
    )
    assessment["score"] += interest_score(profile.get("interests"), candidate_text)
    return assessment


def rank_beginner_matches(profile, candidates, limit=10):
    matches = []
    excluded_count = 0
    for candidate in candidates:
        assessment = evaluate_project_fit(
            profile, candidate["program"], candidate["project"]
        )
        if assessment["blockers"]:
            excluded_count += 1
            continue
        matches.append({**candidate, "assessment": assessment})
    matches.sort(
        key=lambda item: (
            item["assessment"]["status"] != "ผ่าน",
            -item["assessment"]["score"],
            str(item["program"].get("major_name") or "").casefold(),
        )
    )
    return matches[:limit], len(matches), excluded_count


def applicant_assessment_text(profile, program, project):
    if not profile:
        return (
            "ยังไม่ได้กรอกข้อมูลผู้สมัคร\n"
            "ใช้ `/grade_check` เพื่อกรอก GPAX หรือใช้ `/start` "
            "เพื่อกรอกข้อมูลเพิ่มเติม"
        )
    assessment = evaluate_project_fit(profile, program, project)
    lines = [
        f"**สถานะ: {assessment['status']}**",
        "**ผลตรวจรายเงื่อนไข**",
        render_rule_checks(assessment),
        "ผลนี้เป็นการคัดกรองเบื้องต้น ไม่ใช่การรับรองสิทธิ์สมัคร",
    ]
    return shorten("\n".join(lines), 1000)


def trim_embed_to_limit(embed, limit=5900):
    """Keep rich TCAS cards below Discord's 6,000-character embed limit."""
    while len(embed) > limit:
        candidates = [
            (len(str(field.value)), index, field)
            for index, field in enumerate(embed.fields)
            if len(str(field.value)) > 120
        ]
        if not candidates:
            break
        _, index, field = max(candidates)
        over_by = len(embed) - limit
        target = max(120, len(str(field.value)) - over_by - 10)
        embed.set_field_at(
            index,
            name=field.name,
            value=shorten(field.value, target),
            inline=field.inline,
        )
    return embed


def clean_preview_title(preview):
    title = str(preview.get("title") or "รายละเอียดรับสมัคร")
    for suffix in (
        " - TCAS69 (ข้อมูลอ้างอิง)",
        " (ใช้เป็นข้อมูลอ้างอิง)",
    ):
        if title.endswith(suffix):
            title = title[: -len(suffix)]
    return title


def format_current_preview_summary(previews):
    """Keep preliminary TCAS70 entries scannable in one compact section."""
    lines = []
    for preview in previews or []:
        title = clean_preview_title(preview)
        source_url = preview.get("source_url")
        title_text = f"[{title}]({source_url})" if source_url else title
        slots = preview.get("slots_available")
        slots_text = f" — **{slots} คน**" if slots is not None else ""
        entry = f"• {title_text}{slots_text}"
        if preview.get("note"):
            entry += f"\n{preview['note']}"
        lines.append(entry)
    return shorten("\n\n".join(lines), 1024) if lines else None


def preview_year_label(preview):
    year = preview.get("reference_academic_year")
    return f"TCAS{str(year)[-2:]}" if year else "ไม่ระบุปี"


def preview_gpax_text(preview):
    summary = preview.get("gpax_summary")
    if summary:
        # The heading already says GPAX; retain all qualification conditions.
        return re.sub(r"^GPAX\s*:?\s*", "", str(summary), flags=re.IGNORECASE)
    if preview.get("min_gpax") is not None:
        return f"ไม่น้อยกว่า {float(preview['min_gpax']):.2f}"
    return "ไม่ระบุในข้อมูลอ้างอิง"


def build_program_profile_embed(program, section="summary", reference_index=0):
    """Show a short overview, with curriculum and each reference on separate pages."""
    university = first_relation(program.get("universities"))
    campus = first_relation(program.get("university_campuses"))
    duration = program.get("duration_years")
    duration_text = (
        f"{float(duration):g} ปี" if duration is not None else "ไม่ได้ระบุในหน้าหลักสูตร"
    )
    credits = program.get("curriculum_credits")
    credits_text = (
        f"{credits} หน่วยกิต" if credits is not None else "ไม่ได้ระบุในหน้าหลักสูตร"
    )
    curriculum_year = program.get("curriculum_year")
    curriculum_year_text = (
        f"พ.ศ. {curriculum_year}"
        if curriculum_year is not None
        else "ไม่ได้ระบุในหน้าหลักสูตร"
    )

    previews = program.get("admission_previews") or []
    current_previews = [
        item
        for item in previews
        if item.get("reference_academic_year") == 2570
    ]
    prior_previews = [
        item
        for item in previews
        if item.get("reference_academic_year") != 2570
    ]
    embed = discord.Embed(
        title=shorten(program.get("major_name") or program.get("faculty_name"), 256),
        url=program.get("official_program_url") or None,
        description=(
            f"{university.get('name', 'ไม่ระบุมหาวิทยาลัย')}\n"
            f"{campus.get('name', 'วิทยาเขตหลัก')}\n"
            f"{program.get('faculty_name', 'ไม่ระบุคณะ')}"
        ),
        color=discord.Color.orange(),
    )
    footer_note = "ข้อมูลที่ยังไม่ยืนยัน ไม่ใช่เกณฑ์สมัคร TCAS70"
    if section == "curriculum":
        for label, value in (
            ("ชื่อปริญญา", display_value(program.get("program_type"))),
            ("ภาษาที่เรียน", display_value(program.get("language"))),
            ("ระยะเวลาเรียน", duration_text),
            ("หน่วยกิต", credits_text),
            ("ปีหลักสูตร", curriculum_year_text),
        ):
            embed.add_field(name=label, value=value, inline=False)
    elif section == "references" and prior_previews:
        reference_index = max(0, min(reference_index, len(prior_previews) - 1))
        preview = prior_previews[reference_index]
        year_label = preview_year_label(preview)
        embed.add_field(
            name=f"{year_label} • เกณฑ์ปีก่อน | {reference_index + 1}/{len(prior_previews)}",
            value=(
                f"**{clean_preview_title(preview)}**\n\n"
                "ใช้วางแผนเตรียมตัวเท่านั้น\n"
                "**ไม่ใช่เกณฑ์หรือกำหนดการสมัคร TCAS70**"
            ),
            inline=False,
        )
        # Full-width sections remain readable on narrow Discord/mobile screens.
        details = [
            (f"วันรับสมัครและประกาศผล {year_label} (ปีก่อน)", portfolio_dates(preview=preview)),
            ("ช่วงสมัครของปีก่อน", preview.get("application_period")),
            ("ใครสมัครได้", preview.get("qualification_summary")),
            ("เกรดเฉลี่ย (GPAX)", preview_gpax_text(preview)),
        ]
        slots = preview.get("slots_available")
        details.append(("จำนวนรับของปีก่อน", f"{slots} คน" if slots is not None else "ไม่ระบุจำนวนรับเฉพาะสาขา"))
        details.append(("รอบรับสมัคร", preview.get("round_label")))
        for label, key in (
            ("เตรียม Portfolio อย่างไร", "portfolio_summary"),
            ("คัดเลือกอย่างไร", "selection_summary"),
            ("คะแนนภาษาอังกฤษ", "english_score_summary"),
        ):
            value = preview.get(key)
            if value:
                # Semicolons separate existing criteria; do not reinterpret scores.
                value = "\n".join(f"• {part.strip()}" for part in value.split(";") if part.strip())
            details.append((label, value))
        costs = []
        if preview.get("application_fee") is not None:
            costs.append(f"ค่าสมัคร {float(preview['application_fee']):,.0f} บาท")
        if preview.get("tuition_fee_per_semester") is not None:
            costs.append(f"ค่าเรียน {float(preview['tuition_fee_per_semester']):,.0f} บาท/ภาค")
        if costs:
            details.append(("ค่าใช้จ่ายของปีก่อน", "\n".join(costs)))
        details.append(("หมายเหตุจากข้อมูลอ้างอิง", preview.get("note")))
        for label, value in details:
            if value:
                embed.add_field(name=label, value=shorten(value, 1024), inline=False)
        if preview.get("source_url"):
            embed.add_field(
                name="ประกาศทางการของปีก่อน",
                value=f"[เปิดประกาศ {year_label}]({preview['source_url']})",
                inline=False,
            )
        footer_note = f"{year_label} เป็นข้อมูลปีก่อน • ไม่ใช้ยืนยันสิทธิ์สมัคร TCAS70"
    else:
        has_slots = any(item.get("slots_available") is not None for item in current_previews)
        status = (
            "มีชื่อโครงการและจำนวนรับเบื้องต้น\n**ยังไม่ยืนยันเกณฑ์สมัครฉบับสมบูรณ์**"
            if has_slots else "**ยังไม่มีเกณฑ์สมัครฉบับสมบูรณ์ในชุดข้อมูลนี้**"
        )
        embed.add_field(
            name="TCAS70 • สมัครได้หรือยัง?",
            value=f"{status}\nตรวจประกาศล่าสุดจากลิงก์คณะก่อนสมัคร",
            inline=False,
        )
        embed.add_field(
            name="เรียนอะไร • กี่ปี",
            value=(
                f"{display_value(program.get('program_type'))}\n"
                f"ภาษา{display_value(program.get('language'))} • {duration_text}"
            ),
            inline=False,
        )
        current_summary = format_current_preview_summary(current_previews)
        if current_summary:
            embed.add_field(name="ข้อมูลปี 2570 ที่ตรวจพบ", value=current_summary, inline=False)
        if prior_previews:
            reference = prior_previews[0]
            reference_text = f"มีข้อมูลอ้างอิง {len(prior_previews)} รายการ"
            if len(prior_previews) == 1:
                reference_text = f"**{preview_year_label(reference)} • {clean_preview_title(reference)}**"
                if reference.get("slots_available") is not None:
                    reference_text += f"\nจำนวนรับปีก่อน {reference['slots_available']} คน"
                reference_text += f"\nGPAX: {preview_gpax_text(reference)}"
            embed.add_field(
                name="เตรียมตัวจากข้อมูลปีก่อน",
                value=shorten(reference_text + "\n\nกด **เกณฑ์ปีก่อน** เพื่อดูคุณสมบัติ ผลงาน และวิธีคัดเลือก\nไม่ใช่เกณฑ์ TCAS70", 1024),
                inline=False,
            )
    if section == "summary":
        for heading, value in calendar_fields(program, LOCAL_ADMISSIONS_CATALOG):
            embed.add_field(name=heading, value=shorten(value, 1024), inline=False)
    if program.get("official_program_url") and section != "references":
        embed.add_field(
            name="ข้อมูลหลักสูตรทางการ",
            value=f"[เปิดหน้าเว็บไซต์หลักสูตร]({program['official_program_url']})",
            inline=False,
        )
    if university.get("logo_url"):
        embed.set_thumbnail(url=university["logo_url"])
    embed.set_footer(
        text=(
            f"ตรวจชุดข้อมูลล่าสุด {DATASET_CHECKED_AT_DISPLAY} • "
            f"{footer_note}"
        )
    )
    return trim_embed_to_limit(embed)


def project_choice_description(project):
    criteria = project.get("selected_criteria") or {}
    parts = []
    min_gpax = criteria.get("min_gpax")
    gpax_requirements = criteria.get("gpax_requirements") or {}
    thai_gpax_only = (
        isinstance(gpax_requirements, dict)
        and "Grade 12 / Year 13 / GED" in gpax_requirements
    )
    parts.append(
        f"GPAX ≥ {float(min_gpax):.2f}"
        + (" (วุฒิไทย)" if thai_gpax_only else "")
        if min_gpax is not None
        else "GPAX ดูเกณฑ์รายประเภท"
    )
    slots = project.get("slots_available")
    parts.append(f"รับ {slots} คน" if slots is not None else "จำนวนรับดูหมายเหตุ")
    methods = criteria.get("selection_methods") or []
    if methods:
        method_texts = [format_selection_method(method) for method in methods]
        highlighted_method = next(
            (
                method_text
                for method_text in method_texts
                if "portfolio" in method_text.lower()
                or "ผลงาน" in method_text
            ),
            method_texts[0],
        )
        parts.append(highlighted_method)
    return shorten(" • ".join(parts), 100)


def project_header_description(program, project, section_label):
    university = first_relation(program.get("universities"))
    campus = first_relation(program.get("university_campuses"))
    program_name = program.get("major_name") or program.get("faculty_name")
    tags = [
        "TCAS70",
        f"Portfolio {project.get('round_variant') or project.get('round_label')}",
    ]
    if program.get("language"):
        tags.append(f"ภาษา {program['language']}")
    tag_text = " • ".join(f"`{tag}`" for tag in tags)
    return (
        f"**{university.get('name', 'ไม่ระบุมหาวิทยาลัย')}**\n"
        f"{campus.get('name', 'วิทยาเขตหลัก')}\n"
        f"{program.get('faculty_name', 'ไม่ระบุคณะ')}\n"
        f"**{program_name}**\n\n"
        f"{tag_text}\n"
        f"**{section_label}**"
    )


def build_project_shell(program, project, section_label, color):
    university = first_relation(program.get("universities"))
    embed = discord.Embed(
        title=shorten(project.get("name"), 256),
        url=project.get("source_url") or None,
        description=project_header_description(
            program, project, section_label
        ),
        color=discord.Color(color),
    )
    if university.get("logo_url"):
        embed.set_thumbnail(url=university["logo_url"])
    return embed


def project_gpax_text(criteria):
    min_gpax = criteria.get("min_gpax")
    gpax_requirements = criteria.get("gpax_requirements") or {}
    thai_gpax_only = (
        isinstance(gpax_requirements, dict)
        and "Grade 12 / Year 13 / GED" in gpax_requirements
    )
    if min_gpax is None:
        return "ดูตามประเภทผู้สมัคร"
    return f"{float(min_gpax):.2f} ขึ้นไป" + (
        "\nเฉพาะวุฒิไทย" if thai_gpax_only else ""
    )


def build_project_embed(program, project, applicant_profile=None):
    """Answer the main application questions; full rules remain in detail tabs."""
    timeline = project.get("admission_timeline") or []
    criteria = project.get("selected_criteria") or {}

    embed = build_project_shell(
        program, project, "สรุปที่ต้องรู้ก่อนสมัคร", 0x2ECC71
    )
    embed.add_field(
        name="ฉันสมัครได้ไหม?",
        value=applicant_assessment_text(applicant_profile, program, project),
        inline=False,
    )

    embed.add_field(
        name=f"กำหนดการสมัคร สัมภาษณ์ และผล • TCAS{str(project.get('academic_year') or 2570)[-2:]}",
        value=shorten(portfolio_dates(timeline, interview_required=interview_requirement(criteria)), 1000),
        inline=False,
    )

    for question, answer in application_question_fields(project):
        embed.add_field(
            name=question,
            value=shorten(answer, 1024),
            inline=False,
        )

    embed.set_footer(
        text=(
            f"ตรวจข้อมูลล่าสุด {format_checked_at(project.get('source_checked_at'))} • "
            "กดดูคุณสมบัติ Portfolio และกำหนดการด้านล่าง"
        )
    )
    return trim_embed_to_limit(embed)


def build_project_criteria_embed(program, project):
    criteria = project.get("selected_criteria") or {}
    embed = build_project_shell(
        program, project, "คุณสมบัติและคะแนนคัดเลือก", 0x3498DB
    )

    summary = criteria.get("criteria_summary")
    if summary:
        embed.add_field(
            name="เกณฑ์หลัก", value=shorten(summary, 600), inline=False
        )

    qualifications = format_bullets(
        criteria.get("applicant_qualifications"), 900
    )
    if qualifications:
        embed.add_field(
            name="ใครสมัครได้บ้าง", value=qualifications, inline=False
        )

    gpax_parts = []
    gpax_requirements = format_key_values(
        criteria.get("gpax_requirements"), 500
    )
    if gpax_requirements:
        gpax_parts.append(gpax_requirements)
    subject_gpax = format_key_values(criteria.get("subject_gpax"), 500)
    if subject_gpax:
        gpax_parts.append("**เกรดรายกลุ่มวิชา**\n" + subject_gpax)
    if gpax_parts:
        embed.add_field(
            name="รายละเอียดผลการเรียน",
            value=shorten("\n\n".join(gpax_parts), 900),
            inline=False,
        )

    scores = []
    if criteria.get("min_english_score"):
        scores.append(
            "**ภาษาอังกฤษ**\n"
            + format_json_scores(criteria["min_english_score"])
        )
    if criteria.get("standardized_scores"):
        scores.append(
            "**คะแนนมาตรฐาน**\n"
            + format_json_scores(criteria["standardized_scores"])
        )
    if scores:
        embed.add_field(
            name="คะแนนสอบที่ใช้",
            value=shorten("\n\n".join(scores), 850),
            inline=False,
        )

    methods = format_selection_methods(criteria.get("selection_methods"), 700)
    if methods:
        embed.add_field(
            name="วิธีและสัดส่วนคัดเลือก", value=methods, inline=False
        )

    additional = format_bullets(
        criteria.get("additional_requirements"), 750
    )
    if additional:
        embed.add_field(
            name="เงื่อนไขเพิ่มเติม", value=additional, inline=False
        )

    embed.set_footer(
        text=(
            f"ตรวจข้อมูลล่าสุด {format_checked_at(project.get('source_checked_at'))} • "
            "ตรวจคุณสมบัติกับประกาศทางการก่อนสมัคร"
        )
    )
    return trim_embed_to_limit(embed)


def build_project_portfolio_embed(program, project):
    criteria = project.get("selected_criteria") or {}
    embed = build_project_shell(
        program, project, "Portfolio ผลงาน และเอกสาร", 0x9B59B6
    )

    portfolio_requirements = criteria.get("portfolio_requirements")
    if portfolio_requirements:
        embed.add_field(
            name="รูปแบบ Portfolio",
            value=shorten(portfolio_requirements, 850),
            inline=False,
        )

    portfolio_details = format_key_values(
        criteria.get("portfolio_details"), 750
    )
    if portfolio_details:
        embed.add_field(
            name="รายละเอียดและน้ำหนัก",
            value=portfolio_details,
            inline=False,
        )

    achievements = format_bullets(criteria.get("accepted_achievements"), 900)
    if achievements:
        embed.add_field(
            name="ผลงานที่ส่งได้ในรอบนี้", value=achievements, inline=False
        )
    elif portfolio_requirements:
        embed.add_field(
            name="ผลงานที่ส่งได้ในรอบนี้",
            value=(
                "ประกาศที่ตรวจยังไม่ได้แจกแจงประเภทผลงานเป็นรายการเพิ่มเติม\n"
                "ให้ยึดรูปแบบ Portfolio ด้านบนและรายละเอียดในประกาศต้นทาง"
            ),
            inline=False,
        )

    documents = format_bullets(criteria.get("required_documents"), 900)
    if documents:
        embed.add_field(
            name="เอกสารที่ต้องเตรียม", value=documents, inline=False
        )

    if not any(
        (
            portfolio_requirements,
            portfolio_details,
            achievements,
            documents,
        )
    ):
        embed.add_field(
            name="ข้อมูลในประกาศ",
            value="ประกาศไม่ได้แจกแจง Portfolio หรือเอกสารเพิ่มเติม",
            inline=False,
        )

    embed.set_footer(
        text=(
            f"ตรวจข้อมูลล่าสุด {format_checked_at(project.get('source_checked_at'))} • "
            "เปิดประกาศทางการเพื่ออ่านฉบับเต็ม"
        )
    )
    return trim_embed_to_limit(embed)


def build_project_timeline_embed(program, project):
    timeline = project.get("admission_timeline") or []
    embed = build_project_shell(
        program, project, "กำหนดการและประกาศต้นทาง", 0xF1C40F
    )
    embed.add_field(
        name="กำหนดการทั้งหมด",
        value=shorten(format_timeline(timeline), 1000),
        inline=False,
    )
    embed.add_field(
        name="ค่าสมัคร",
        value=format_money(project.get("application_fee")),
        inline=True,
    )
    embed.add_field(
        name="ค่าเล่าเรียน/ภาค",
        value=format_money(project.get("tuition_fee_per_semester")),
        inline=True,
    )
    embed.add_field(
        name="จำนวนอันดับ",
        value=(
            f"สูงสุด {project['selection_order_limit']} อันดับ"
            if project.get("selection_order_limit") is not None
            else "ประกาศไม่ได้ระบุ"
        ),
        inline=True,
    )

    if project.get("program_notes"):
        embed.add_field(
            name="หมายเหตุจำนวนรับ",
            value=shorten(project["program_notes"], 650),
            inline=False,
        )

    source_details = []
    if project.get("source_published_at"):
        source_details.append(f"เผยแพร่: {project['source_published_at']}")
    if project.get("source_checked_at"):
        source_details.append(f"ตรวจล่าสุด: {project['source_checked_at']}")
    if project.get("source_url"):
        source_details.append(f"[เปิดประกาศฉบับเต็ม]({project['source_url']})")
    embed.add_field(
        name="แหล่งข้อมูลทางการ",
        value=shorten("\n".join(source_details) or "ไม่ระบุ", 600),
        inline=False,
    )
    embed.set_footer(
        text=(
            f"สถานะ official • ตรวจข้อมูลล่าสุด "
            f"{format_checked_at(project.get('source_checked_at'))}"
        )
    )
    return trim_embed_to_limit(embed)


SELECT_PAGE_SIZE = 25
VIEW_TIMEOUT_SECONDS = 300


def university_name_for(navigation_programs, university_short_name):
    return next(
        (
            program["university_name"]
            for program in navigation_programs
            if program["university_short_name"] == university_short_name
        ),
        university_short_name,
    )


def campuses_for_university(navigation_programs, university_short_name):
    campuses = {}
    for program in navigation_programs:
        if program["university_short_name"] != university_short_name:
            continue
        code = program["campus_code"]
        campus = campuses.setdefault(
            code,
            {
                "code": code,
                "name": program["campus_name"],
                "is_main": program.get("is_main_campus", False),
                "program_count": 0,
                "faculties": set(),
            },
        )
        campus["program_count"] += 1
        campus["faculties"].add(program["faculty_name"])
    return sorted(
        campuses.values(),
        key=lambda item: (not item["is_main"], item["name"].casefold()),
    )


def campus_name_for(navigation_programs, university_short_name, campus_code):
    return next(
        (
            program["campus_name"]
            for program in navigation_programs
            if program["university_short_name"] == university_short_name
            and program["campus_code"] == campus_code
        ),
        "วิทยาเขตหลัก",
    )


def selection_path(
    university_short_name,
    faculty_name=None,
    major_name=None,
    campus_name=None,
):
    parts = [university_short_name]
    if campus_name:
        parts.append(campus_name)
    if faculty_name:
        parts.append(faculty_name)
    if major_name:
        parts.append(major_name)
    return " › ".join(parts)


def university_menu_content(navigation_programs):
    university_count = len(
        {program["university_short_name"] for program in navigation_programs}
    )
    official_count = sum(
        1 for program in navigation_programs if program.get("has_official_projects")
    )
    reference_count = sum(
        1
        for program in navigation_programs
        if not program.get("has_official_projects")
        and program.get("has_admission_previews")
    )
    waiting_count = len(navigation_programs) - official_count - reference_count
    return (
        "## ค้นหาเกณฑ์ TCAS70 รอบ Portfolio\n"
        "เลือกตามลำดับ: **มหาวิทยาลัย → วิทยาเขต → คณะ → สาขา → โครงการ**\n"
        "มหาวิทยาลัยที่มีวิทยาเขตเดียวจะข้ามขั้นให้อัตโนมัติ\n\n"
        f"**ขอบเขตข้อมูล:** ดูเกณฑ์สมัครได้ {official_count} สาขา • "
        f"มีเพียงข้อมูลแนวทาง {reference_count} สาขา • รอประกาศ {waiting_count} สาขา\n"
        f"*ตรวจชุดข้อมูลล่าสุด {DATASET_CHECKED_AT_DISPLAY}*\n\n"
        f"### ขั้นที่ 1/5: เลือกมหาวิทยาลัย\nมี {university_count} แห่ง"
    )


def campus_menu_content(navigation_programs, university_short_name):
    university_name = university_name_for(navigation_programs, university_short_name)
    campuses = campuses_for_university(navigation_programs, university_short_name)
    return (
        "## ค้นหาเกณฑ์ TCAS70 รอบ Portfolio\n"
        f"**มหาวิทยาลัย:** {university_name}\n\n"
        f"### ขั้นที่ 2/5: เลือกวิทยาเขต/พื้นที่การศึกษา\n"
        f"มี {len(campuses)} แห่ง • ตัวเลือกที่ระบุว่า “วิทยาเขตหลัก” คือพื้นที่หลัก\n"
        f"*ตรวจข้อมูลล่าสุด {DATASET_CHECKED_AT_DISPLAY}*"
    )


def faculty_menu_content(
    navigation_programs, university_short_name, campus_code
):
    university_name = university_name_for(
        navigation_programs, university_short_name
    )
    matching = [
        program
        for program in navigation_programs
        if program["university_short_name"] == university_short_name
        and program["campus_code"] == campus_code
    ]
    campus_name = campus_name_for(
        navigation_programs, university_short_name, campus_code
    )
    has_multiple_campuses = len(
        campuses_for_university(navigation_programs, university_short_name)
    ) > 1
    step = "3/5" if has_multiple_campuses else "2/4"
    faculty_count = len({program["faculty_name"] for program in matching})
    return (
        "## ค้นหาเกณฑ์ TCAS70 รอบ Portfolio\n"
        f"**เส้นทาง:** {university_name} › {campus_name}\n\n"
        f"### ขั้นที่ {step}: เลือกคณะ\nมี {faculty_count} คณะ\n"
        "เปิดดูเกณฑ์สมัครได้  •  ยังต้องรอประกาศฉบับสมบูรณ์\n"
        f"*ตรวจข้อมูลล่าสุด {DATASET_CHECKED_AT_DISPLAY}*"
    )


def program_menu_content(
    navigation_programs, university_short_name, campus_code, faculty_name
):
    matching = [
        program
        for program in navigation_programs
        if program["university_short_name"] == university_short_name
        and program["campus_code"] == campus_code
        and program["faculty_name"] == faculty_name
    ]
    campus_name = campus_name_for(
        navigation_programs, university_short_name, campus_code
    )
    has_multiple_campuses = len(
        campuses_for_university(navigation_programs, university_short_name)
    ) > 1
    step = "4/5" if has_multiple_campuses else "3/4"
    announced_count = sum(
        1 for program in matching if program.get("has_official_projects")
    )
    preview_count = sum(
        1
        for program in matching
        if not program.get("has_official_projects")
        and program.get("has_admission_previews")
    )
    return (
        "## ค้นหาเกณฑ์ TCAS70 รอบ Portfolio\n"
        f"**เส้นทาง:** {selection_path(university_short_name, faculty_name, campus_name=campus_name)}\n\n"
        f"### ขั้นที่ {step}: เลือกสาขา\nมี {len(matching)} สาขา\n"
        f"{announced_count} สาขาเปิดดูเกณฑ์สมัคร TCAS70 ได้\n"
        f"{preview_count} สาขามีเพียงข้อมูลแนวทาง ยังใช้ยืนยันการสมัครไม่ได้\n"
        "ที่เหลือยังไม่พบประกาศรับสมัครฉบับสมบูรณ์\n"
        f"*ตรวจข้อมูลล่าสุด {DATASET_CHECKED_AT_DISPLAY}*"
    )


def project_menu_content(
    university_short_name, faculty_name, program_data, campus_name=None
):
    major_name = program_data.get("major_name") or "ไม่ระบุสาขา"
    projects = program_data.get("projects") or []
    return (
        "## ค้นหาเกณฑ์ TCAS70 รอบ Portfolio\n"
        f"**เส้นทาง:** {selection_path(university_short_name, faculty_name, major_name, campus_name)}\n\n"
        f"### ขั้นสุดท้าย: เลือกโครงการรับสมัคร\nมี {len(projects)} โครงการ\n"
        "ใต้ชื่อโครงการมี GPAX จำนวนรับ และวิธีคัดเลือกแบบย่อ\n"
        f"*ตรวจข้อมูลล่าสุด {DATASET_CHECKED_AT_DISPLAY}*"
    )


def project_detail_content(
    university_short_name,
    faculty_name,
    program_data,
    section="summary",
    campus_name=None,
):
    section_labels = {
        "summary": "สรุปโครงการ",
        "criteria": "คุณสมบัติและคะแนน",
        "portfolio": "Portfolio และเอกสาร",
        "timeline": "กำหนดการทั้งหมด",
    }
    major_name = program_data.get("major_name") or "ไม่ระบุสาขา"
    section_label = section_labels.get(section, section_labels["summary"])
    return (
        f"**เส้นทาง:** {selection_path(university_short_name, faculty_name, major_name, campus_name)}\n"
        f"## {section_label}\n"
        "กดปุ่มด้านล่างเพื่อเปลี่ยนหมวดข้อมูล\n"
        f"*ตรวจชุดข้อมูลล่าสุด {DATASET_CHECKED_AT_DISPLAY}*"
    )


def start_menu_content(navigation_programs):
    official_count = sum(
        1 for item in navigation_programs if item.get("has_official_projects")
    )
    return (
        "## เริ่มวางแผน TCAS70 รอบ Portfolio\n"
        "ไม่จำเป็นต้องรู้ชื่อมหาวิทยาลัยหรือศัพท์ TCAS มาก่อน เลือกทางที่ตรงกับคุณได้เลย\n\n"
        "**รู้มหาวิทยาลัยแล้ว** — เปิดค้นหาตามมหาวิทยาลัย\n"
        "**ฉันผ่านเกณฑ์อะไรบ้าง** — เลือกสายและกรอก GPAX แล้วเลือกมหาวิทยาลัยเพื่อดูเกณฑ์\n"
        "**ยังไม่รู้ว่าจะเรียนอะไร** — กรอกข้อมูล 5 ข้อ แล้วรับรายการที่ควรตรวจต่อ\n"
        "**อยากเปรียบเทียบหลักสูตร** — เลือก 2–3 สาขาในมหาวิทยาลัยเดียวกัน\n\n"
        f"**พร้อมดูเกณฑ์:** {official_count} สาขา\n"
        f"*ตรวจข้อมูลล่าสุด {DATASET_CHECKED_AT_DISPLAY}*"
    )


def grade_screening_intro():
    return (
        "## ฉันผ่านเกณฑ์อะไรบ้าง\n"
        "เลือกสายที่สนใจ แล้วกรอก **GPAX สเกล 4.00**\n"
        "หรือเรียกหน้านี้โดยตรงด้วย `/grade_check`\n\n"
        "**เลือกสาย → ใส่เกรด → เลือกมหาวิทยาลัย → ดูผลเทียบเกณฑ์**\n\n"
        "จัดกลุ่มจากคณะและสาขาที่บอทมีข้อมูล ไม่ครอบคลุมทุกหลักสูตรในประเทศ\n"
        "ผลแต่ละเงื่อนไขจะแสดงเป็น ผ่าน / ไม่ผ่าน / ต้องตรวจเพิ่ม / ไม่มีข้อมูล\n"
        "ผลนี้เป็นการคัดกรอง ไม่ใช่การรับรองสิทธิ์สมัคร"
    )


def grade_group_summary(group):
    return (
        f"ผ่าน GPAX TCAS70 {group['current']} • "
        f"ถึงเกณฑ์ปีก่อน {group['reference']} • ต้องตรวจ {group['unknown']}"
    )


def screening_gpax_requirements(criteria):
    labels = {
        "semesters": "จำนวนภาคเรียน", "studying_semesters": "ผู้กำลังเรียน: จำนวนภาคเรียน",
        "graduated_semesters": "ผู้จบแล้ว: จำนวนภาคเรียน", "graduated": "ผู้จบแล้ว",
    }
    requirements = criteria.get("gpax_requirements") or {}
    if isinstance(requirements, dict):
        requirements = {labels.get(key, key): value for key, value in requirements.items()}
    return format_key_values(requirements, 700)


def build_grade_universities_embed(profile, groups, excluded, page=0):
    embed = discord.Embed(
        title="เลือกมหาวิทยาลัยเพื่อดูเกณฑ์",
        description=(
            f"**GPAX {profile['gpax']:.2f} • สาย{SCREENING_FIELDS[profile['field']]}**\n\n"
            "เลือกมหาวิทยาลัยแล้วเปิดผลเทียบเกณฑ์ได้ทันที\n"
            "ผ่าน GPAX ไม่ได้แปลว่าผ่านคุณสมบัติทั้งหมดหรือกำลังเปิดรับสมัคร"
        ),
        color=discord.Color.blurple(),
    )
    for group in groups[page * SELECT_PAGE_SIZE:(page + 1) * SELECT_PAGE_SIZE]:
        embed.add_field(
            name=shorten(f"{group['key']} • {group['name']}", 256),
            value=grade_group_summary(group), inline=False,
        )
    if not groups:
        embed.add_field(
            name="ยังไม่พบรายการที่แนะนำได้ในชุดข้อมูลนี้",
            value="ใช้ปุ่มแก้เกรด / เปลี่ยนสายเพื่อตรวจข้อมูลที่กรอก หรือเปิดค้นหามหาวิทยาลัยจากหน้าเริ่มต้น\nไม่ได้แปลว่าไม่มีสิทธิ์สมัครที่อื่น", inline=False,
        )
    embed.set_footer(text=f"จำนวนเป็นรายการ ไม่ใช่ที่นั่ง • ต่ำกว่า GPAX TCAS70 {excluded} รายการ • ตรวจข้อมูล {DATASET_CHECKED_AT_DISPLAY}")
    return trim_embed_to_limit(embed)


def build_grade_result_embed(entry, profile, index, total, section="assessment"):
    program = entry["program"]
    project = entry.get("project") or {}
    preview = entry.get("preview") or {}
    if section != "assessment":
        if entry["kind"] == "current":
            builders = {"criteria": build_project_criteria_embed, "portfolio": build_project_portfolio_embed, "timeline": build_project_timeline_embed}
            return builders[section](program, project)
        return build_program_profile_embed(
            program, "references" if entry["kind"] == "reference" else "summary",
            entry.get("reference_index", 0),
        )
    university = first_relation(program.get("universities"))
    campus = first_relation(program.get("university_campuses"))
    year_label = f"TCAS{str(entry['year'])[-2:]}"
    kind_label = {"current": "เกณฑ์ปีที่ติดตาม", "reference": "ข้อมูลปีก่อนเท่านั้น", "pending": "ยังไม่มีเกณฑ์ใช้เทียบ"}[entry["kind"]]
    embed = discord.Embed(
        title=shorten(program.get("major_name"), 256),
        description=(
            f"{university.get('name', '')}\n{campus.get('name', '')} • {program.get('faculty_name', '')}\n\n"
            f"**{year_label} • {kind_label}**\n"
            f"{project.get('name') or preview.get('title') or 'ข้อมูลหลักสูตร'}"
        ),
        color=discord.Color.blurple() if entry["kind"] == "current" else discord.Color.orange(),
    )
    meets = entry["assessment"]["status"] == "meets"
    result_label = (
        ("ผ่านขั้นต่ำ GPAX" if entry["kind"] == "current" else "ถึงขั้นต่ำ GPAX ของปีก่อน")
        if meets else "ยังสรุปผล GPAX ไม่ได้"
    )
    embed.add_field(name=result_label, value=entry["assessment"]["reason"], inline=False)
    if entry["kind"] == "current":
        application_assessment = evaluate_project_fit(profile, program, project)
        embed.add_field(
            name="ผลตรวจรายเงื่อนไข",
            value=shorten(render_rule_checks(application_assessment), 1024),
            inline=False,
        )
    round_label = project.get("round_label") or preview.get("round_label") or "รอบ Portfolio"
    variant = project.get("round_variant")
    if variant and str(variant) not in round_label:
        round_label = f"{round_label} • {variant}"
    dates_label = f"กำหนดการ {year_label} • {round_label}"
    if entry["kind"] == "reference":
        dates_label += " (ปีก่อน)"
    embed.add_field(
        name=shorten(dates_label, 256),
        value=shorten(
            portfolio_dates(
                project.get("admission_timeline"),
                preview=preview,
                interview_required=interview_requirement(project.get("selected_criteria") or {}),
            ),
            1000,
        ),
        inline=False,
    )
    if entry["kind"] == "reference":
        embed.add_field(name="ใช้เตรียมตัวเท่านั้น", value="ข้อมูลนี้เป็นของปีก่อน **ไม่ใช้ยืนยันสิทธิ์หรือเกณฑ์สมัคร TCAS70**", inline=False)
    if entry["kind"] in ("current", "reference"):
        embed.add_field(
            name="ยังต้องตรวจอะไรเพิ่ม?",
            value="วุฒิ / จำนวนภาคเรียน, เกรดรายวิชา, คะแนนสอบ และผลงานตามเงื่อนไขด้านล่าง\n**ผล GPAX อย่างเดียวไม่รับรองสิทธิ์สมัคร**",
            inline=False,
        )
        hint = "ปุ่มเกณฑ์ปีก่อน" if preview else "ปุ่มคุณสมบัติ / Portfolio"
        for question, answer in application_question_fields(project, preview, hint):
            embed.add_field(name=question, value=shorten(answer, 1024), inline=False)
    else:
        embed.add_field(
            name="ต้องเตรียมอะไร / สมัครที่ไหน?",
            value="ยังไม่มีเกณฑ์โครงการพอจะสรุปพอร์ต เอกสาร คะแนน หรือค่าใช้จ่ายได้\nกด **ข้อมูลหลักสูตร** เพื่อดูสถานะและแหล่งทางการ",
            inline=False,
        )
    if entry["kind"] != "current":
        for heading, value in calendar_fields(program, LOCAL_ADMISSIONS_CATALOG):
            embed.add_field(name=heading, value=shorten(value, 1024), inline=False)
    embed.set_footer(text=f"รายการ {index + 1}/{total} • GPAX {profile['gpax']:.2f} • ตรวจข้อมูล {DATASET_CHECKED_AT_DISPLAY}")
    return trim_embed_to_limit(embed)


def build_beginner_results_embed(profile, matches, total_matches, excluded_count):
    embed = discord.Embed(
        title="ผลคัดกรองเบื้องต้น",
        description=(
            f"พบ {total_matches} โครงการที่ไม่ขัดกับ GPAX ภาษา และงบที่ระบุ "
            f"(แสดง {len(matches)} อันดับแรก)\n"
            f"ตัดออกจากตัวกรอง {excluded_count} รายการ\n\n"
            "**นี่ไม่ใช่การรับรองสิทธิ์สมัคร** ระบบตรวจเฉพาะข้อมูลที่เป็นโครงสร้างได้ "
            "ส่วนวุฒิ แผนการเรียน ผลงาน และเงื่อนไขเฉพาะต้องเปิดประกาศตรวจอีกครั้ง"
        ),
        color=discord.Color.blurple(),
    )
    for index, match in enumerate(matches, start=1):
        program = match["program"]
        project = match["project"]
        assessment = match["assessment"]
        university = first_relation(program.get("universities"))
        criteria = project.get("selected_criteria") or {}
        min_gpax = criteria.get("min_gpax")
        gpax_text = (
            f"GPAX ≥ {float(min_gpax):.2f}"
            if min_gpax is not None
            else "GPAX ต้องตรวจตามประเภทผู้สมัคร"
        )
        embed.add_field(
            name=shorten(
                f"{index}. {university.get('short_name', '')} — {program.get('major_name')}",
                256,
            ),
            value=shorten(
                f"**สถานะ: {assessment['status']}** • {gpax_text}\n"
                f"{project.get('name')}\n"
                + render_rule_checks(assessment, max_items=3)
                + "\nเปิดรายการเพื่อดูผลตรวจครบทุกเงื่อนไข",
                700,
            ),
            inline=False,
        )
    embed.set_footer(
        text=f"เลือกโครงการด้านล่างเพื่อดูเหตุผล เอกสาร วันสมัคร และประกาศต้นทาง • {DATASET_CHECKED_AT_DISPLAY}"
    )
    return trim_embed_to_limit(embed)


def build_program_comparison_embed(programs):
    embed = discord.Embed(
        title="เปรียบเทียบหลักสูตรและการรับสมัคร",
        description=(
            "หลักสูตรที่มีประกาศแล้วจะแสดงเกณฑ์ TCAS70 ส่วนหลักสูตรที่ยังรอประกาศ "
            "จะแสดงเฉพาะข้อมูลหลักสูตรทางการโดยไม่คาดเดาเกณฑ์"
        ),
        color=discord.Color.teal(),
    )
    for program in programs:
        projects = program.get("projects") or []
        previews = program.get("admission_previews") or []
        criteria_rows = [item.get("selected_criteria") or {} for item in projects]
        gpax_values = [
            float(item["min_gpax"])
            for item in criteria_rows
            if item.get("min_gpax") is not None
        ]
        tuition_values = [
            float(item["tuition_fee_per_semester"])
            for item in projects
            if item.get("tuition_fee_per_semester") is not None
        ]
        gpax_text = f"ต่ำสุด {min(gpax_values):.2f}" if gpax_values else None
        tuition_text = (
            f"{min(tuition_values):,.0f}–{max(tuition_values):,.0f} บาท/ภาค"
            if tuition_values and min(tuition_values) != max(tuition_values)
            else (
                f"{tuition_values[0]:,.0f} บาท/ภาค"
                if tuition_values
                else "ยังไม่ระบุ"
            )
        )
        official_program_url = program.get("official_program_url")
        program_link = (
            f"[หลักสูตรทางการ]({official_program_url})"
            if official_program_url
            else "ไม่มีลิงก์หลักสูตร"
        )
        if projects:
            status_text = "มีประกาศ TCAS70 ยืนยันแล้ว"
            source_url = next(
                (item.get("source_url") for item in projects if item.get("source_url")),
                None,
            )
            source_link = (
                f"[ประกาศรับสมัคร]({source_url})"
                if source_url
                else "ไม่มีลิงก์ประกาศ"
            )
            detail_lines = [
                f"โครงการยืนยันแล้ว: {len(projects)}",
                f"GPAX: {gpax_text or 'ต้องดูรายประเภท'}",
                f"ค่าเรียน: {tuition_text}",
            ]
        elif previews:
            current_specific = [
                item
                for item in previews
                if item.get("reference_academic_year") == 2570
                and (
                    item.get("slots_available") is not None
                    or item.get("round_label") not in (None, "สถานะล่าสุด")
                )
            ]
            status_text = (
                "มีข้อมูล TCAS70 รอยืนยัน"
                if current_specific
                else "ยังไม่มีประกาศ TCAS70 • ใช้ข้อมูลปีก่อน"
            )
            detail_lines = ["โครงการยืนยันแล้ว: 0"]
            source_candidate_rows = list(current_specific[:1])

            slot_rows = [
                item for item in previews if item.get("slots_available") is not None
            ]
            if slot_rows:
                slot_year = max(
                    item.get("reference_academic_year") or 0 for item in slot_rows
                )
                slot_total = sum(
                    float(item["slots_available"])
                    for item in slot_rows
                    if item.get("reference_academic_year") == slot_year
                )
                slot_label = (
                    "จำนวนรับที่พบ (ยังไม่ยืนยัน)"
                    if slot_year == 2570
                    else "จำนวนรับปีก่อน"
                )
                detail_lines.append(
                    f"{slot_label}: {slot_total:,.0f} คน • ปี {slot_year}"
                )
                source_candidate_rows.append(
                    next(
                        item
                        for item in slot_rows
                        if item.get("reference_academic_year") == slot_year
                    )
                )

            gpax_row = next(
                (
                    item
                    for item in sorted(
                        previews,
                        key=lambda value: value.get("reference_academic_year") or 0,
                        reverse=True,
                    )
                    if item.get("gpax_summary") or item.get("min_gpax") is not None
                ),
                None,
            )
            if gpax_row:
                source_candidate_rows.append(gpax_row)
                reference_gpax = gpax_row.get("gpax_summary") or (
                    f"≥ {float(gpax_row['min_gpax']):.2f}"
                )
                detail_lines.append(
                    f"GPAX อ้างอิงปี {gpax_row['reference_academic_year']}: {reference_gpax}"
                )

            tuition_row = next(
                (
                    item
                    for item in sorted(
                        previews,
                        key=lambda value: value.get("reference_academic_year") or 0,
                        reverse=True,
                    )
                    if item.get("tuition_fee_per_semester") is not None
                ),
                None,
            )
            if tuition_row:
                source_candidate_rows.append(tuition_row)
                detail_lines.append(
                    f"ค่าเรียนอ้างอิงปี {tuition_row['reference_academic_year']}: "
                    f"{float(tuition_row['tuition_fee_per_semester']):,.0f} บาท/ภาค"
                )

            selection_row = next(
                (
                    item
                    for item in sorted(
                        previews,
                        key=lambda value: value.get("reference_academic_year") or 0,
                        reverse=True,
                    )
                    if item.get("selection_summary")
                ),
                None,
            )
            if selection_row:
                source_candidate_rows.append(selection_row)
                detail_lines.append(
                    f"รูปแบบคัดเลือกปี {selection_row['reference_academic_year']}: "
                    f"{selection_row['selection_summary']}"
                )

            source_links = []
            seen_urls = set()
            fallback_source_rows = sorted(
                previews,
                key=lambda value: value.get("reference_academic_year") or 0,
                reverse=True,
            )
            for item in source_candidate_rows + fallback_source_rows:
                url = item.get("source_url")
                if not url or url in seen_urls:
                    continue
                seen_urls.add(url)
                source_links.append(
                    f"[อ้างอิงปี {item.get('reference_academic_year') or 'ไม่ระบุ'}]({url})"
                )
                if len(source_links) >= 3:
                    break
            source_link = " • ".join(source_links) or "ไม่มีลิงก์อ้างอิง"
        else:
            status_text = "หลักสูตรเปิดสอนจริง และกำลังรอประกาศ TCAS70"
            detail_lines = [
                "โครงการยืนยันแล้ว: 0",
                "ยังไม่มีข้อมูลปีก่อนที่ตรวจสอบแหล่งทางการได้",
            ]
            source_link = "ยังไม่มีประกาศหรือข้อมูลอ้างอิง"
        embed.add_field(
            name=shorten(program.get("major_name") or program.get("faculty_name"), 256),
            value=(
                f"**สถานะ:** {status_text}\n"
                f"ภาษา: {display_value(program.get('language'))}\n"
                + "\n".join(detail_lines)
                + "\n"
                f"{program_link} • {source_link}"
            ),
            inline=False,
        )
    embed.set_footer(
        text=f"จำนวนโครงการไม่ใช่จำนวนที่นั่ง • ตรวจข้อมูลล่าสุด {DATASET_CHECKED_AT_DISPLAY}"
    )
    return trim_embed_to_limit(embed)


class OwnedView(discord.ui.View):
    def __init__(self, owner_id):
        super().__init__(timeout=VIEW_TIMEOUT_SECONDS)
        self.owner_id = owner_id

    async def interaction_check(self, interaction: discord.Interaction):
        if interaction.user.id == self.owner_id:
            return True
        await interaction.response.send_message(
            "เมนูนี้เป็นของผู้ที่เรียกคำสั่ง กรุณาใช้ `/start` ของตัวเองครับ",
            ephemeral=True,
        )
        return False

    async def on_error(self, interaction, error, item):
        logger.error(
            "interactive menu failed item=%s",
            item,
            exc_info=(type(error), error, error.__traceback__),
        )
        if not interaction.response.is_done():
            await interaction.response.send_message(
                "เมนูเกิดข้อผิดพลาด กรุณาเรียก `/start` ใหม่",
                ephemeral=True,
            )


class GradeScreeningFieldSelect(discord.ui.Select):
    def __init__(self):
        super().__init__(
            placeholder="เลือกสายที่สนใจ", min_values=1, max_values=1,
            options=[discord.SelectOption(label=label, value=key) for key, label in SCREENING_FIELDS.items()],
        )

    async def callback(self, interaction):
        parent = self.view
        await interaction.response.send_modal(GradeScreeningModal(
            parent.owner_id, parent.navigation_programs, self.values[0], parent.gpax,
            flow_id=parent.flow_id, started_at=parent.started_at,
        ))


class GradeScreeningFieldView(OwnedView):
    def __init__(self, owner_id, navigation_programs, gpax=None, *, flow_id=None, started_at=None):
        super().__init__(owner_id)
        self.navigation_programs = navigation_programs
        self.gpax = gpax
        self.flow_id = flow_id or new_flow_id()
        self.started_at = started_at or time.monotonic()
        self.add_item(GradeScreeningFieldSelect())
        self.add_item(HomeButton())


class GradeScreeningModal(discord.ui.Modal, title="กรอกเกรดเพื่อเทียบเกณฑ์"):
    gpax_input = discord.ui.TextInput(
        label="เกรดเฉลี่ยสะสม GPAX (0.00–4.00)",
        placeholder="เช่น 3.20 — ไม่ใช่เกรดเฉพาะวิชา", min_length=1, max_length=4,
    )

    def __init__(self, owner_id, navigation_programs, field, gpax=None, *, flow_id=None, started_at=None):
        super().__init__(title=f"GPAX • {SCREENING_FIELDS[field]}", timeout=VIEW_TIMEOUT_SECONDS)
        self.owner_id = owner_id
        self.navigation_programs = navigation_programs
        self.field = field
        self.flow_id = flow_id or new_flow_id()
        self.started_at = started_at or time.monotonic()
        if gpax is not None:
            self.gpax_input.default = f"{gpax:.2f}"

    async def on_submit(self, interaction):
        if interaction.user.id != self.owner_id:
            await interaction.response.send_message("กรุณาใช้ `/start` ของตัวเองครับ", ephemeral=True)
            return
        gpax = parse_gpax(self.gpax_input.value)
        if gpax is None:
            record_event("grade_check_confusion", interaction, flow_id=self.flow_id, confusion="invalid_gpax")
            await interaction.response.send_message(
                "GPAX ต้องเป็นตัวเลขตั้งแต่ 0.00 ถึง 4.00 เลือกสายเพื่อกรอกใหม่ได้ด้านล่าง",
                ephemeral=True, view=GradeScreeningFieldView(self.owner_id, self.navigation_programs),
            )
            return
        await interaction.response.defer(thinking=True, ephemeral=True)
        profile = {"gpax": gpax, "field": self.field}
        try:
            entries, excluded = await asyncio.wait_for(
                asyncio.to_thread(fetch_grade_screening, self.navigation_programs, gpax, self.field), timeout=20,
            )
            groups = group_universities(entries)
            await interaction.edit_original_response(
                content=None, embeds=[build_grade_universities_embed(profile, groups, excluded)],
                view=GradeScreeningUniversityView(
                    self.owner_id, self.navigation_programs, profile, groups, excluded,
                    flow_id=self.flow_id, started_at=self.started_at,
                ),
            )
            record_event(
                "grade_check_results_shown", interaction, flow_id=self.flow_id,
                started_at=self.started_at, success=bool(groups), result_count=len(entries),
            )
        except Exception:
            # Do not log the applicant's grade or persist their profile.
            logger.exception("grade screening could not load criteria")
            await interaction.edit_original_response(
                content="โหลดเกณฑ์ไม่สำเร็จ ไม่ใช่ผลว่าไม่ผ่านนะครับ เลือกสายเพื่อลองใหม่ได้ด้านล่าง",
                embeds=[], view=GradeScreeningFieldView(self.owner_id, self.navigation_programs, gpax),
            )


class GradeScreeningUniversitySelect(discord.ui.Select):
    def __init__(self, groups):
        super().__init__(
            placeholder="เลือกมหาวิทยาลัย → ดูผลเทียบเกณฑ์", min_values=1, max_values=1,
            options=[discord.SelectOption(
                label=shorten(f"{g['key']} — {g['name']}", 100), value=g["key"],
                description=shorten(grade_group_summary(g), 100),
            ) for g in groups],
        )

    async def callback(self, interaction):
        parent = self.view
        view = GradeScreeningResultView(
            parent.owner_id, parent.navigation_programs, parent.profile,
            parent.groups, parent.excluded, self.values[0],
            flow_id=parent.flow_id, started_at=parent.started_at,
        )
        record_event("grade_check_university_selected", interaction, flow_id=parent.flow_id, success=True)
        await interaction.response.edit_message(content=None, embeds=[view.build_embed()], view=view)


class GradeScreeningUniversityView(OwnedView):
    def __init__(self, owner_id, navigation_programs, profile, groups, excluded, page=0, *, flow_id=None, started_at=None):
        super().__init__(owner_id)
        self.navigation_programs = navigation_programs
        self.profile, self.groups, self.excluded = profile, groups, excluded
        self.flow_id = flow_id or new_flow_id()
        self.started_at = started_at or time.monotonic()
        self.total_pages = max(1, (len(groups) + SELECT_PAGE_SIZE - 1) // SELECT_PAGE_SIZE)
        self.page = max(0, min(page, self.total_pages - 1))
        if groups:
            self.add_item(GradeScreeningUniversitySelect(groups[self.page * SELECT_PAGE_SIZE:(self.page + 1) * SELECT_PAGE_SIZE]))
        self.add_item(HomeButton())
        if self.total_pages == 1:
            self.remove_item(self.previous_page)
            self.remove_item(self.next_page)
        else:
            self.previous_page.disabled = self.page == 0
            self.next_page.disabled = self.page == self.total_pages - 1

    async def show_page(self, interaction, page):
        view = GradeScreeningUniversityView(
            self.owner_id, self.navigation_programs, self.profile, self.groups,
            self.excluded, page, flow_id=self.flow_id, started_at=self.started_at,
        )
        await interaction.response.edit_message(
            content=None, embeds=[build_grade_universities_embed(self.profile, self.groups, self.excluded, view.page)], view=view,
        )

    @discord.ui.button(label="แก้เกรด / เปลี่ยนสาย", style=discord.ButtonStyle.secondary, row=1)
    async def edit_profile(self, interaction, button):
        await interaction.response.edit_message(
            content=grade_screening_intro(), embeds=[],
            view=GradeScreeningFieldView(
                self.owner_id, self.navigation_programs, self.profile["gpax"],
                flow_id=self.flow_id, started_at=self.started_at,
            ),
        )

    @discord.ui.button(label="ก่อนหน้า", style=discord.ButtonStyle.secondary, row=2)
    async def previous_page(self, interaction, button):
        await self.show_page(interaction, self.page - 1)

    @discord.ui.button(label="ถัดไป", style=discord.ButtonStyle.secondary, row=2)
    async def next_page(self, interaction, button):
        await self.show_page(interaction, self.page + 1)


class GradeScreeningResultView(OwnedView):
    def __init__(self, owner_id, navigation_programs, profile, groups, excluded, university_key, index=0, section="assessment", *, flow_id=None, started_at=None):
        super().__init__(owner_id)
        self.navigation_programs = navigation_programs
        self.profile, self.groups, self.excluded = profile, groups, excluded
        self.flow_id = flow_id or new_flow_id()
        self.started_at = started_at or time.monotonic()
        self.university_key = university_key
        self.group = next(g for g in groups if g["key"] == university_key)
        self.entries = self.group["entries"]
        self.index = max(0, min(index, len(self.entries) - 1))
        self.section = section
        self.entry = self.entries[self.index]
        if self.entry["kind"] != "current":
            self.remove_item(self.show_portfolio)
            self.remove_item(self.show_timeline)
            self.show_criteria.label = "เกณฑ์ปีก่อน" if self.entry["kind"] == "reference" else "ข้อมูลหลักสูตร"
        for tab, name in ((self.show_assessment, "assessment"), (self.show_criteria, "criteria"), (self.show_portfolio, "portfolio"), (self.show_timeline, "timeline")):
            tab.disabled = section == name
            tab.style = discord.ButtonStyle.primary if tab.disabled else discord.ButtonStyle.secondary
        if len(self.entries) == 1:
            self.remove_item(self.previous_result)
            self.remove_item(self.next_result)
        else:
            self.previous_result.disabled = self.index == 0
            self.next_result.disabled = self.index == len(self.entries) - 1
        home = HomeButton()
        home.row = 2
        self.add_item(home)

    def build_embed(self):
        return build_grade_result_embed(self.entry, self.profile, self.index, len(self.entries), self.section)

    async def render(self, interaction, *, index=None, section="assessment"):
        view = GradeScreeningResultView(
            self.owner_id, self.navigation_programs, self.profile, self.groups,
            self.excluded, self.university_key, self.index if index is None else index, section,
            flow_id=self.flow_id, started_at=self.started_at,
        )
        await interaction.response.edit_message(content=None, embeds=[view.build_embed()], view=view)

    @discord.ui.button(label="ผลของฉัน", style=discord.ButtonStyle.secondary, row=0)
    async def show_assessment(self, interaction, button):
        await self.render(interaction)

    @discord.ui.button(label="คุณสมบัติ", style=discord.ButtonStyle.secondary, row=0)
    async def show_criteria(self, interaction, button):
        await self.render(interaction, section="criteria")

    @discord.ui.button(label="Portfolio", style=discord.ButtonStyle.secondary, row=0)
    async def show_portfolio(self, interaction, button):
        await self.render(interaction, section="portfolio")

    @discord.ui.button(label="กำหนดการ", style=discord.ButtonStyle.secondary, row=0)
    async def show_timeline(self, interaction, button):
        await self.render(interaction, section="timeline")

    @discord.ui.button(label="รายการก่อนหน้า", style=discord.ButtonStyle.secondary, row=1)
    async def previous_result(self, interaction, button):
        await self.render(interaction, index=self.index - 1)

    @discord.ui.button(label="รายการถัดไป", style=discord.ButtonStyle.secondary, row=1)
    async def next_result(self, interaction, button):
        await self.render(interaction, index=self.index + 1)

    @discord.ui.button(label="← มหาวิทยาลัย", style=discord.ButtonStyle.secondary, row=2)
    async def back_to_universities(self, interaction, button):
        page = self.groups.index(self.group) // SELECT_PAGE_SIZE
        await interaction.response.edit_message(
            content=None, embeds=[build_grade_universities_embed(self.profile, self.groups, self.excluded, page)],
            view=GradeScreeningUniversityView(
                self.owner_id, self.navigation_programs, self.profile, self.groups,
                self.excluded, page, flow_id=self.flow_id, started_at=self.started_at,
            ),
        )

    @discord.ui.button(label="แก้เกรด / เปลี่ยนสาย", style=discord.ButtonStyle.secondary, row=2)
    async def edit_profile(self, interaction, button):
        await interaction.response.edit_message(
            content=grade_screening_intro(), embeds=[],
            view=GradeScreeningFieldView(
                self.owner_id, self.navigation_programs, self.profile["gpax"],
                flow_id=self.flow_id, started_at=self.started_at,
            ),
        )


class BeginnerProfileModal(discord.ui.Modal, title="คัดกรอง TCAS เบื้องต้น 5 ข้อ"):
    gpax_input = discord.ui.TextInput(
        label="1. GPAX ปัจจุบัน",
        placeholder="เช่น 3.20",
        min_length=1,
        max_length=4,
    )
    qualification_input = discord.ui.TextInput(
        label="2. วุฒิ/แผนการเรียน",
        placeholder="เช่น ม.6 วิทย์-คณิต, ศิลป์คำนวณ, ปวช., GED",
        max_length=100,
    )
    interests_input = discord.ui.TextInput(
        label="3. สิ่งที่สนใจหรือผลงานที่มี",
        placeholder="เช่น เว็บ แอป AI Data หุ่นยนต์ แข่งขัน หรือยังไม่มี",
        style=discord.TextStyle.paragraph,
        max_length=300,
    )
    language_input = discord.ui.TextInput(
        label="4. ภาษาหลักสูตรที่ต้องการ",
        placeholder="ไทย / นานาชาติ / ได้ทั้งคู่",
        max_length=30,
    )
    location_budget_input = discord.ui.TextInput(
        label="5. พื้นที่และงบค่าเรียนต่อภาค",
        placeholder="เช่น กรุงเทพ ไม่เกิน 40000 หรือ ไม่จำกัด",
        max_length=100,
    )

    def __init__(self, owner_id, *, flow_id=None, started_at=None):
        super().__init__(timeout=VIEW_TIMEOUT_SECONDS)
        self.owner_id = owner_id
        self.flow_id = flow_id or new_flow_id()
        self.started_at = started_at or time.monotonic()

    async def on_submit(self, interaction: discord.Interaction):
        if interaction.user.id != self.owner_id:
            await interaction.response.send_message(
                "แบบสอบถามนี้เป็นของผู้เรียก `/start` ครับ", ephemeral=True
            )
            return
        gpax = parse_gpax(self.gpax_input.value)
        if gpax is None:
            record_event("beginner_profile_confusion", interaction, flow_id=self.flow_id, confusion="invalid_gpax")
            await interaction.response.send_message(
                "GPAX ต้องเป็นตัวเลขตั้งแต่ 0.00 ถึง 4.00 กรุณาเปิด `/start` แล้วกรอกใหม่",
                ephemeral=True,
            )
            return

        profile = {
            "gpax": gpax,
            "qualification": str(self.qualification_input.value).strip(),
            "interests": str(self.interests_input.value).strip(),
            "language": preferred_language(self.language_input.value),
            "location_budget": str(self.location_budget_input.value).strip(),
            "budget": parse_budget(self.location_budget_input.value),
        }
        await interaction.response.defer(thinking=True, ephemeral=True)
        try:
            candidates = await asyncio.wait_for(
                asyncio.to_thread(fetch_recommendation_projects), timeout=20
            )
            matches, total_matches, excluded_count = rank_beginner_matches(
                profile, candidates
            )
            if not matches:
                await interaction.edit_original_response(
                    content=(
                        "ไม่พบโครงการที่ผ่านตัวกรอง GPAX ภาษา และงบพร้อมกัน\n"
                        "ลองเพิ่มงบ เลือกภาษาได้ทั้งคู่ หรือใช้เส้นทางค้นหาตามมหาวิทยาลัย "
                        "แต่ระบบจะไม่แนะนำให้ลด/แก้ GPAX ให้ผิดจากจริง"
                    ),
                    embeds=[],
                    view=None,
                )
                return
            await interaction.edit_original_response(
                content=(
                    "## ผลคัดกรองของคุณ\n"
                    f"**ข้อมูลที่ใช้:** GPAX {gpax:.2f} • "
                    f"วุฒิ/แผน {shorten(profile['qualification'], 80)}\n"
                    "**ขั้นต่อไป:** เลือกหนึ่งโครงการเพื่อดูเหตุผล สิ่งที่ต้องเตรียม และวันปิดรับสมัคร"
                ),
                embeds=[
                    build_beginner_results_embed(
                        profile, matches, total_matches, excluded_count
                    )
                ],
                    view=BeginnerResultsView(
                        self.owner_id, matches, profile,
                        flow_id=self.flow_id,
                    ),
            )
            record_event(
                "beginner_results_shown", interaction, flow_id=self.flow_id,
                started_at=self.started_at, success=bool(matches), result_count=len(matches),
            )
        except asyncio.TimeoutError:
            record_event("beginner_profile_confusion", interaction, flow_id=self.flow_id, confusion="timeout")
            await interaction.edit_original_response(
                content="คัดกรองนานกว่าปกติ กรุณาลอง `/start` อีกครั้ง",
                embeds=[],
                view=None,
            )
        except Exception:
            logger.exception("beginner screening failed")
            record_event("beginner_profile_confusion", interaction, flow_id=self.flow_id, confusion="load_error")
            await interaction.edit_original_response(
                content="คัดกรองไม่สำเร็จ กรุณาลอง `/start` อีกครั้ง",
                embeds=[],
                view=None,
            )


class BeginnerResultSelect(discord.ui.Select):
    def __init__(self, matches):
        self.matches = matches
        options = []
        for index, match in enumerate(matches):
            program = match["program"]
            project = match["project"]
            university = first_relation(program.get("universities"))
            options.append(
                discord.SelectOption(
                    label=shorten(
                        f"{university.get('short_name', '')} — {program.get('major_name')}",
                        100,
                    ),
                    value=str(index),
                    description=shorten(project.get("name"), 100),
                )
            )
        super().__init__(
            placeholder="เลือกโครงการเพื่อดูรายละเอียด",
            min_values=1,
            max_values=1,
            options=options,
        )

    async def callback(self, interaction: discord.Interaction):
        parent = self.view
        selected = self.matches[int(self.values[0])]
        program_code = selected["program"]["code"]
        project_code = selected["project"]["code"]
        await interaction.response.defer()
        try:
            program_data, navigation_programs = await asyncio.gather(
                asyncio.to_thread(fetch_program_projects, program_code),
                bot.load_navigation_programs(timeout=15),
            )
            project = next(
                item
                for item in program_data.get("projects") or []
                if item.get("code") == project_code
            )
            university = first_relation(program_data.get("universities"))
            campus = first_relation(program_data.get("university_campuses"))
            university_short_name = university.get("short_name") or "มหาวิทยาลัย"
            campus_code = campus.get("code") or "main"
            faculty_name = program_data.get("faculty_name") or "ไม่ระบุคณะ"
            await interaction.edit_original_response(
                content=project_detail_content(
                    university_short_name,
                    faculty_name,
                    program_data,
                    campus_name=campus.get("name"),
                ),
                embeds=[build_project_embed(program_data, project, parent.profile)],
                view=ProjectDetailView(
                    parent.owner_id,
                    navigation_programs,
                    university_short_name,
                    campus_code,
                    faculty_name,
                    program_data,
                    project,
                    applicant_profile=parent.profile,
                ),
            )
            record_event(
                "beginner_project_opened", interaction, flow_id=getattr(parent, "flow_id", None),
                success=True, project_code=project_code,
            )
        except Exception:
            logger.exception(
                "could not open beginner recommendation program=%s project=%s",
                program_code,
                project_code,
            )
            record_event(
                "beginner_profile_confusion", interaction,
                flow_id=getattr(parent, "flow_id", None), confusion="project_open_error",
            )
            await interaction.edit_original_response(
                content="เปิดรายละเอียดไม่สำเร็จ กรุณาคัดกรองใหม่ด้วย `/start`",
                embeds=[],
                view=None,
            )


class BeginnerResultsView(OwnedView):
    def __init__(self, owner_id, matches, profile, *, flow_id=None):
        super().__init__(owner_id)
        self.matches = matches
        self.profile = profile
        self.flow_id = flow_id or new_flow_id()
        self.add_item(BeginnerResultSelect(matches))


class CompareUniversitySelect(discord.ui.Select):
    def __init__(self, navigation_programs):
        universities = sorted(
            {
                (item["university_short_name"], item["university_name"])
                for item in navigation_programs
            },
            key=lambda item: item[1].casefold(),
        )
        super().__init__(
            placeholder="เลือกมหาวิทยาลัยที่จะเปรียบเทียบ",
            options=[
                discord.SelectOption(
                    label=shorten(f"{short_name} — {name}", 100),
                    value=short_name,
                )
                for short_name, name in universities
            ],
        )

    async def callback(self, interaction: discord.Interaction):
        parent = self.view
        university = self.values[0]
        programs = [
            item
            for item in parent.navigation_programs
            if item["university_short_name"] == university
        ]
        if len(programs) < 2:
            await interaction.response.edit_message(
                content=(
                    f"ตอนนี้ {university} มีหลักสูตรในขอบเขตบอทไม่ถึง 2 สาขา "
                    "จึงยังเปรียบเทียบไม่ได้ เลือกมหาวิทยาลัยอื่นได้ด้านล่าง"
                ),
                embeds=[],
                view=parent,
            )
            return
        await interaction.response.edit_message(
            content=(
                f"## เปรียบเทียบหลักสูตรใน {university}\n"
                "เลือก 2–3 สาขา ระบบจะแสดงสถานะ ภาษา จำนวนโครงการ GPAX ต่ำสุด "
                "ค่าเรียน และลิงก์ทางการ"
            ),
            embeds=[],
            view=CompareProgramView(parent.owner_id, parent.navigation_programs, programs),
        )


class CompareUniversityView(OwnedView):
    def __init__(self, owner_id, navigation_programs):
        super().__init__(owner_id)
        self.navigation_programs = navigation_programs
        self.add_item(CompareUniversitySelect(navigation_programs))

    @discord.ui.button(label="← หน้าเริ่มต้น", style=discord.ButtonStyle.secondary, row=1)
    async def back_to_start(self, interaction, button):
        del button
        await interaction.response.edit_message(
            content=start_menu_content(self.navigation_programs),
            embeds=[],
            view=StartView(self.owner_id, self.navigation_programs),
        )


class CompareProgramSelect(discord.ui.Select):
    def __init__(self, programs):
        self.programs = programs
        super().__init__(
            placeholder="เลือก 2–3 สาขา",
            min_values=2,
            max_values=min(3, len(programs)),
            options=[
                discord.SelectOption(
                    label=shorten(item["major_name"], 100),
                    value=item["code"],
                    description=shorten(item["faculty_name"], 100),
                )
                for item in programs[:25]
            ],
        )

    async def callback(self, interaction: discord.Interaction):
        await interaction.response.defer()
        try:
            programs = await asyncio.wait_for(
                asyncio.gather(
                    *(
                        asyncio.to_thread(fetch_program_projects, code)
                        for code in self.values
                    )
                ),
                timeout=20,
            )
            programs = [item for item in programs if item]
            await interaction.edit_original_response(
                content=(
                    "## ผลเปรียบเทียบ\n"
                    "ใช้ช่วยเลือกหลักสูตรที่จะอ่านต่อ ไม่ใช่การจัดอันดับมหาวิทยาลัย"
                ),
                embeds=[build_program_comparison_embed(programs)],
                view=self.view,
            )
        except Exception:
            logger.exception("program comparison failed codes=%s", self.values)
            await interaction.edit_original_response(
                content="เปรียบเทียบไม่สำเร็จ กรุณาลองเลือกใหม่",
                embeds=[],
                view=self.view,
            )


class CompareProgramView(OwnedView):
    def __init__(self, owner_id, navigation_programs, programs):
        super().__init__(owner_id)
        self.navigation_programs = navigation_programs
        self.add_item(CompareProgramSelect(programs))

    @discord.ui.button(label="← เลือกมหาวิทยาลัย", style=discord.ButtonStyle.secondary, row=1)
    async def back_to_university(self, interaction, button):
        del button
        await interaction.response.edit_message(
            content="## เปรียบเทียบหลักสูตร\nเลือกมหาวิทยาลัยที่ต้องการเปรียบเทียบ 2–3 สาขา",
            embeds=[],
            view=CompareUniversityView(self.owner_id, self.navigation_programs),
        )


class StartView(OwnedView):
    def __init__(self, owner_id, navigation_programs):
        super().__init__(owner_id)
        self.navigation_programs = navigation_programs

    @discord.ui.button(label="รู้มหาวิทยาลัยแล้ว", style=discord.ButtonStyle.primary)
    async def known_university(self, interaction, button):
        del button
        await interaction.response.edit_message(
            content=university_menu_content(self.navigation_programs),
            embeds=[],
            view=UniversityView(self.owner_id, self.navigation_programs),
        )

    @discord.ui.button(label="ฉันผ่านเกณฑ์อะไรบ้าง", style=discord.ButtonStyle.success)
    async def beginner_screening(self, interaction, button):
        del button
        flow_id = new_flow_id()
        started_at = time.monotonic()
        record_event("grade_check_started", interaction, flow_id=flow_id)
        await interaction.response.edit_message(
            content=grade_screening_intro(),
            embeds=[],
            view=GradeScreeningFieldView(
                self.owner_id, self.navigation_programs,
                flow_id=flow_id, started_at=started_at,
            ),
        )

    @discord.ui.button(label="ยังไม่รู้ว่าจะเรียนอะไร", style=discord.ButtonStyle.primary, row=1)
    async def beginner_recommendation(self, interaction, button):
        del button
        flow_id = new_flow_id()
        started_at = time.monotonic()
        record_event("beginner_profile_started", interaction, flow_id=flow_id)
        await interaction.response.send_modal(
            BeginnerProfileModal(self.owner_id, flow_id=flow_id, started_at=started_at)
        )

    @discord.ui.button(label="เปรียบเทียบหลักสูตร", style=discord.ButtonStyle.secondary)
    async def compare_programs(self, interaction, button):
        del button
        await interaction.response.edit_message(
            content=(
                "## เปรียบเทียบหลักสูตร\n"
                "เลือกมหาวิทยาลัยก่อน แล้วเลือก 2–3 สาขา ระบบจะระบุให้ชัดว่า "
                "สาขาใดมีประกาศ TCAS70 แล้วหรือยังรอประกาศ"
            ),
            embeds=[],
            view=CompareUniversityView(self.owner_id, self.navigation_programs),
        )


class HomeButton(discord.ui.Button):
    def __init__(self):
        super().__init__(
            label="เริ่มใหม่",
            style=discord.ButtonStyle.secondary,
            row=1,
        )

    async def callback(self, interaction: discord.Interaction):
        parent = self.view
        await interaction.response.edit_message(
            content=start_menu_content(parent.navigation_programs),
            embeds=[],
            view=StartView(parent.owner_id, parent.navigation_programs),
        )


class UniversitySelect(discord.ui.Select):
    def __init__(self, navigation_programs):
        universities = {}
        for program in navigation_programs:
            short_name = program["university_short_name"]
            entry = universities.setdefault(
                short_name,
                {
                    "name": program["university_name"],
                    "short_name": short_name,
                    "program_count": 0,
                    "faculties": set(),
                },
            )
            entry["program_count"] += 1
            entry["faculties"].add(program["faculty_name"])

        options = [
            discord.SelectOption(
                label=shorten(
                    f"{item['short_name']} — {item['name']}", 100
                ),
                value=item["short_name"],
                description=shorten(
                    f"{len(item['faculties'])} คณะ • {item['program_count']} สาขา",
                    100,
                ),
            )
            for item in sorted(
                universities.values(), key=lambda value: value["name"].casefold()
            )
        ]
        super().__init__(
            placeholder="1. เลือกมหาวิทยาลัย",
            min_values=1,
            max_values=1,
            options=options,
        )

    async def callback(self, interaction: discord.Interaction):
        parent = self.view
        university_short_name = self.values[0]
        campuses = campuses_for_university(
            parent.navigation_programs, university_short_name
        )
        if len(campuses) > 1:
            await interaction.response.edit_message(
                content=campus_menu_content(
                    parent.navigation_programs, university_short_name
                ),
                embeds=[],
                view=CampusView(
                    parent.owner_id,
                    parent.navigation_programs,
                    university_short_name,
                ),
            )
            return
        campus_code = campuses[0]["code"]
        await interaction.response.edit_message(
            content=faculty_menu_content(
                parent.navigation_programs, university_short_name, campus_code
            ),
            embeds=[],
            view=FacultyView(
                parent.owner_id,
                parent.navigation_programs,
                university_short_name,
                campus_code,
            ),
        )


class UniversityView(OwnedView):
    def __init__(self, owner_id, navigation_programs):
        super().__init__(owner_id)
        self.navigation_programs = navigation_programs
        self.add_item(UniversitySelect(navigation_programs))


class CampusSelect(discord.ui.Select):
    def __init__(self, campuses):
        self.campuses = campuses
        options = [
            discord.SelectOption(
                label=shorten(campus["name"], 100),
                value=campus["code"],
                description=shorten(
                    (
                        "วิทยาเขตหลัก • " if campus["is_main"] else ""
                    )
                    + f"{len(campus['faculties'])} คณะ • {campus['program_count']} สาขา",
                    100,
                ),
            )
            for campus in campuses
        ]
        super().__init__(
            placeholder="2. เลือกวิทยาเขต/พื้นที่การศึกษา",
            min_values=1,
            max_values=1,
            options=options,
        )

    async def callback(self, interaction: discord.Interaction):
        parent = self.view
        campus_code = self.values[0]
        await interaction.response.edit_message(
            content=faculty_menu_content(
                parent.navigation_programs,
                parent.university_short_name,
                campus_code,
            ),
            embeds=[],
            view=FacultyView(
                parent.owner_id,
                parent.navigation_programs,
                parent.university_short_name,
                campus_code,
            ),
        )


class CampusView(OwnedView):
    def __init__(self, owner_id, navigation_programs, university_short_name):
        super().__init__(owner_id)
        self.navigation_programs = navigation_programs
        self.university_short_name = university_short_name
        self.add_item(
            CampusSelect(
                campuses_for_university(navigation_programs, university_short_name)
            )
        )

    @discord.ui.button(
        label="← มหาวิทยาลัย", style=discord.ButtonStyle.secondary, row=1
    )
    async def back_to_universities(self, interaction, button):
        del button
        await interaction.response.edit_message(
            content=university_menu_content(self.navigation_programs),
            embeds=[],
            view=UniversityView(self.owner_id, self.navigation_programs),
        )


class FacultySelect(discord.ui.Select):
    def __init__(self, faculties, step_number=2):
        self.faculties = faculties
        options = []
        for index, faculty in enumerate(faculties):
            announced = faculty["announced_count"]
            status = (
                f"{announced} สาขามีประกาศ"
                if announced
                else "รอประกาศรับสมัคร"
            )
            options.append(
                discord.SelectOption(
                    label=shorten(faculty["name"], 100),
                    value=str(index),
                    description=shorten(
                        f"{faculty['program_count']} สาขา • {status}", 100
                    ),
                )
            )
        super().__init__(
            placeholder=f"{step_number}. เลือกคณะ",
            min_values=1,
            max_values=1,
            options=options,
        )

    async def callback(self, interaction: discord.Interaction):
        parent = self.view
        faculty_name = self.faculties[int(self.values[0])]["name"]
        await interaction.response.edit_message(
            content=program_menu_content(
                parent.navigation_programs,
                parent.university_short_name,
                parent.campus_code,
                faculty_name,
            ),
            embeds=[],
            view=ProgramView(
                parent.owner_id,
                parent.navigation_programs,
                parent.university_short_name,
                parent.campus_code,
                faculty_name,
            ),
        )


class FacultyView(OwnedView):
    def __init__(
        self,
        owner_id,
        navigation_programs,
        university_short_name,
        campus_code,
        page=0,
    ):
        super().__init__(owner_id)
        self.navigation_programs = navigation_programs
        self.university_short_name = university_short_name
        self.campus_code = campus_code
        grouped = {}
        for program in navigation_programs:
            if program["university_short_name"] != university_short_name:
                continue
            if program["campus_code"] != campus_code:
                continue
            faculty_name = program["faculty_name"]
            faculty = grouped.setdefault(
                faculty_name,
                {
                    "name": faculty_name,
                    "program_count": 0,
                    "announced_count": 0,
                },
            )
            faculty["program_count"] += 1
            if program.get("has_official_projects"):
                faculty["announced_count"] += 1

        self.faculties = sorted(
            grouped.values(), key=lambda item: item["name"].casefold()
        )
        self.page = page
        if len(campuses_for_university(navigation_programs, university_short_name)) > 1:
            self.back_to_universities.label = "← วิทยาเขต"
        self.total_pages = max(
            1, (len(self.faculties) + SELECT_PAGE_SIZE - 1) // SELECT_PAGE_SIZE
        )
        start = page * SELECT_PAGE_SIZE
        faculty_step = 3 if len(
            campuses_for_university(navigation_programs, university_short_name)
        ) > 1 else 2
        self.add_item(
            FacultySelect(
                self.faculties[start : start + SELECT_PAGE_SIZE], faculty_step
            )
        )
        if self.total_pages == 1:
            self.remove_item(self.previous_page)
            self.remove_item(self.next_page)
        else:
            self.previous_page.disabled = page == 0
            self.next_page.disabled = page >= self.total_pages - 1

    @discord.ui.button(label="← มหาวิทยาลัย", style=discord.ButtonStyle.secondary, row=1)
    async def back_to_universities(self, interaction, button):
        del button
        campuses = campuses_for_university(
            self.navigation_programs, self.university_short_name
        )
        if len(campuses) > 1:
            await interaction.response.edit_message(
                content=campus_menu_content(
                    self.navigation_programs, self.university_short_name
                ),
                embeds=[],
                view=CampusView(
                    self.owner_id,
                    self.navigation_programs,
                    self.university_short_name,
                ),
            )
        else:
            await interaction.response.edit_message(
                content=university_menu_content(self.navigation_programs),
                embeds=[],
                view=UniversityView(self.owner_id, self.navigation_programs),
            )

    @discord.ui.button(label="◀ ก่อนหน้า", style=discord.ButtonStyle.secondary, row=1)
    async def previous_page(self, interaction, button):
        del button
        await interaction.response.edit_message(
            view=FacultyView(
                self.owner_id,
                self.navigation_programs,
                self.university_short_name,
                self.campus_code,
                self.page - 1,
            )
        )

    @discord.ui.button(label="ถัดไป ▶", style=discord.ButtonStyle.secondary, row=1)
    async def next_page(self, interaction, button):
        del button
        await interaction.response.edit_message(
            view=FacultyView(
                self.owner_id,
                self.navigation_programs,
                self.university_short_name,
                self.campus_code,
                self.page + 1,
            )
        )


class ProgramSelect(discord.ui.Select):
    def __init__(self, programs, step_number=3):
        def pending_description(program):
            if program.get("current_preview_count") and program.get(
                "has_reference_details"
            ):
                year = program.get("latest_reference_year")
                return (
                    f"พบข้อมูล TCAS70 เบื้องต้น • มีรายละเอียดปี {year}"
                    if year
                    else "พบข้อมูล TCAS70 เบื้องต้น • รอประกาศฉบับเต็ม"
                )
            if program.get("current_preview_count"):
                return "พบชื่อใน TCAS70 • รอเกณฑ์ฉบับเต็ม"
            year = program.get("latest_reference_year")
            if year and program.get("has_reference_details"):
                return f"มีรายละเอียดปี {year} เป็นข้อมูลอ้างอิง"
            return "มีข้อมูลอ้างอิง • ยังไม่ยืนยัน TCAS70"

        options = [
            discord.SelectOption(
                label=shorten(program["major_name"], 100),
                value=program["code"],
                description=shorten(
                    "เปิดดูเกณฑ์และโครงการได้"
                    if program.get("has_official_projects")
                    else (
                        pending_description(program)
                        if program.get("has_admission_previews")
                        else "มีหลักสูตร • รอประกาศ TCAS70"
                    ),
                    100,
                ),
            )
            for program in programs
        ]
        super().__init__(
            placeholder=f"{step_number}. เลือกสาขา",
            min_values=1,
            max_values=1,
            options=options,
        )

    async def callback(self, interaction: discord.Interaction):
        parent = self.view
        program_code = self.values[0]
        await interaction.response.defer()
        logger.info("interactive program selected code=%s", program_code)
        try:
            program_data = await asyncio.wait_for(
                asyncio.to_thread(fetch_program_projects, program_code), timeout=15
            )
            if not program_data or not program_data.get("projects"):
                await interaction.edit_original_response(
                    content=None if program_data else "ไม่พบข้อมูลหลักสูตร กรุณาย้อนกลับแล้วลองอีกครั้ง",
                    embeds=(
                        [build_program_profile_embed(program_data)]
                        if program_data
                        else []
                    ),
                    view=PendingProgramDetailView(
                        parent.owner_id,
                        parent.navigation_programs,
                        parent.university_short_name,
                        parent.campus_code,
                        parent.faculty_name,
                        program_data,
                    ),
                )
                return
            await interaction.edit_original_response(
                content=project_menu_content(
                    parent.university_short_name,
                    parent.faculty_name,
                    program_data,
                    parent.campus_name,
                ),
                embeds=[],
                view=ProjectView(
                    parent.owner_id,
                    parent.navigation_programs,
                    parent.university_short_name,
                    parent.campus_code,
                    parent.faculty_name,
                    program_data,
                ),
            )
        except Exception:
            logger.exception("could not load projects for program=%s", program_code)
            await interaction.edit_original_response(
                content="โหลดโครงการไม่สำเร็จ กรุณาลองเลือกสาขาอีกครั้ง",
                embeds=[],
                view=parent,
            )


class ProgramView(OwnedView):
    def __init__(
        self,
        owner_id,
        navigation_programs,
        university_short_name,
        campus_code,
        faculty_name,
        page=0,
    ):
        super().__init__(owner_id)
        self.navigation_programs = navigation_programs
        self.university_short_name = university_short_name
        self.campus_code = campus_code
        self.campus_name = campus_name_for(
            navigation_programs, university_short_name, campus_code
        )
        self.faculty_name = faculty_name
        self.programs = [
            program
            for program in navigation_programs
            if program["university_short_name"] == university_short_name
            and program["campus_code"] == campus_code
            and program["faculty_name"] == faculty_name
        ]
        self.page = page
        self.total_pages = max(
            1, (len(self.programs) + SELECT_PAGE_SIZE - 1) // SELECT_PAGE_SIZE
        )
        start = page * SELECT_PAGE_SIZE
        program_step = 4 if len(
            campuses_for_university(navigation_programs, university_short_name)
        ) > 1 else 3
        self.add_item(
            ProgramSelect(
                self.programs[start : start + SELECT_PAGE_SIZE], program_step
            )
        )
        self.add_item(HomeButton())
        if self.total_pages == 1:
            self.remove_item(self.previous_page)
            self.remove_item(self.next_page)
        else:
            self.previous_page.disabled = page == 0
            self.next_page.disabled = page >= self.total_pages - 1

    @discord.ui.button(label="← คณะ", style=discord.ButtonStyle.secondary, row=1)
    async def back_to_faculties(self, interaction, button):
        del button
        await interaction.response.edit_message(
            content=faculty_menu_content(
                self.navigation_programs,
                self.university_short_name,
                self.campus_code,
            ),
            embeds=[],
            view=FacultyView(
                self.owner_id,
                self.navigation_programs,
                self.university_short_name,
                self.campus_code,
            ),
        )

    @discord.ui.button(label="◀ ก่อนหน้า", style=discord.ButtonStyle.secondary, row=1)
    async def previous_page(self, interaction, button):
        del button
        await interaction.response.edit_message(
            view=ProgramView(
                self.owner_id,
                self.navigation_programs,
                self.university_short_name,
                self.campus_code,
                self.faculty_name,
                self.page - 1,
            )
        )

    @discord.ui.button(label="ถัดไป ▶", style=discord.ButtonStyle.secondary, row=1)
    async def next_page(self, interaction, button):
        del button
        await interaction.response.edit_message(
            view=ProgramView(
                self.owner_id,
                self.navigation_programs,
                self.university_short_name,
                self.campus_code,
                self.faculty_name,
                self.page + 1,
            )
        )


class PendingProgramDetailView(OwnedView):
    """Readable tabs and reference paging without repeating the major selector."""

    def __init__(
        self,
        owner_id,
        navigation_programs,
        university_short_name,
        campus_code,
        faculty_name,
        program_data=None,
        section="summary",
        reference_index=0,
    ):
        super().__init__(owner_id)
        self.navigation_programs = navigation_programs
        self.university_short_name = university_short_name
        self.campus_code = campus_code
        self.faculty_name = faculty_name
        self.program_data = program_data or {}
        self.section = section
        self.prior_previews = [
            item for item in self.program_data.get("admission_previews") or []
            if item.get("reference_academic_year") != 2570
        ]
        self.reference_index = max(0, min(reference_index, len(self.prior_previews) - 1))
        for tab, key in (
            (self.show_summary, "summary"),
            (self.show_references, "references"),
            (self.show_curriculum, "curriculum"),
        ):
            tab.disabled = section == key
            tab.style = discord.ButtonStyle.primary if section == key else discord.ButtonStyle.secondary
            if not self.program_data or (key == "references" and not self.prior_previews):
                self.remove_item(tab)
        if section != "references" or len(self.prior_previews) < 2:
            self.remove_item(self.previous_reference)
            self.remove_item(self.next_reference)
        else:
            self.previous_reference.disabled = self.reference_index == 0
            self.next_reference.disabled = self.reference_index >= len(self.prior_previews) - 1
        home = HomeButton()
        home.row = 2
        self.add_item(home)

    async def show_section(self, interaction, section, reference_index=None):
        index = self.reference_index if reference_index is None else reference_index
        await interaction.response.edit_message(
            content=None,
            embeds=[build_program_profile_embed(self.program_data, section, index)],
            view=PendingProgramDetailView(
                self.owner_id, self.navigation_programs, self.university_short_name,
                self.campus_code, self.faculty_name, self.program_data, section, index,
            ),
        )

    @discord.ui.button(label="สรุป", style=discord.ButtonStyle.secondary, row=0)
    async def show_summary(self, interaction, button):
        await self.show_section(interaction, "summary")

    @discord.ui.button(label="เกณฑ์ปีก่อน", style=discord.ButtonStyle.secondary, row=0)
    async def show_references(self, interaction, button):
        await self.show_section(interaction, "references")

    @discord.ui.button(label="หลักสูตร", style=discord.ButtonStyle.secondary, row=0)
    async def show_curriculum(self, interaction, button):
        await self.show_section(interaction, "curriculum")

    @discord.ui.button(label="โครงการก่อนหน้า", style=discord.ButtonStyle.secondary, row=1)
    async def previous_reference(self, interaction, button):
        await self.show_section(interaction, "references", self.reference_index - 1)

    @discord.ui.button(label="โครงการถัดไป", style=discord.ButtonStyle.secondary, row=1)
    async def next_reference(self, interaction, button):
        await self.show_section(interaction, "references", self.reference_index + 1)

    @discord.ui.button(
        label="← เลือกสาขาอื่น",
        style=discord.ButtonStyle.secondary,
        row=2,
    )
    async def back_to_programs(self, interaction, button):
        del button
        await interaction.response.edit_message(
            content=program_menu_content(
                self.navigation_programs,
                self.university_short_name,
                self.campus_code,
                self.faculty_name,
            ),
            embeds=[],
            view=ProgramView(
                self.owner_id,
                self.navigation_programs,
                self.university_short_name,
                self.campus_code,
                self.faculty_name,
            ),
        )


class ProjectSelect(discord.ui.Select):
    def __init__(self, projects, step_number=4):
        options = []
        for project in projects:
            variant = project.get("round_variant")
            label = project.get("name") or "ไม่ระบุชื่อโครงการ"
            if variant and str(variant) not in label:
                label = f"{label} • {variant}"
            options.append(
                discord.SelectOption(
                    label=shorten(label, 100),
                    value=project["code"],
                    description=project_choice_description(project),
                )
            )
        super().__init__(
            placeholder=f"{step_number}. เลือกโครงการรับสมัคร",
            min_values=1,
            max_values=1,
            options=options,
        )

    async def callback(self, interaction: discord.Interaction):
        parent = self.view
        project_code = self.values[0]
        project = next(
            item
            for item in parent.program_data["projects"]
            if item["code"] == project_code
        )
        logger.info("interactive project selected code=%s", project_code)
        embed = build_project_embed(parent.program_data, project)
        await interaction.response.edit_message(
            content=project_detail_content(
                parent.university_short_name,
                parent.faculty_name,
                parent.program_data,
                campus_name=parent.campus_name,
            ),
            embeds=[embed],
            view=ProjectDetailView(
                parent.owner_id,
                parent.navigation_programs,
                parent.university_short_name,
                parent.campus_code,
                parent.faculty_name,
                parent.program_data,
                project,
            ),
        )


class ProjectView(OwnedView):
    def __init__(
        self,
        owner_id,
        navigation_programs,
        university_short_name,
        campus_code,
        faculty_name,
        program_data,
        page=0,
    ):
        super().__init__(owner_id)
        self.navigation_programs = navigation_programs
        self.university_short_name = university_short_name
        self.campus_code = campus_code
        self.campus_name = campus_name_for(
            navigation_programs, university_short_name, campus_code
        )
        self.faculty_name = faculty_name
        self.program_data = program_data
        self.page = page
        projects = program_data.get("projects") or []
        self.total_pages = max(
            1, (len(projects) + SELECT_PAGE_SIZE - 1) // SELECT_PAGE_SIZE
        )
        start = page * SELECT_PAGE_SIZE
        project_step = 5 if len(
            campuses_for_university(navigation_programs, university_short_name)
        ) > 1 else 4
        self.add_item(
            ProjectSelect(
                projects[start : start + SELECT_PAGE_SIZE], project_step
            )
        )
        self.add_item(HomeButton())
        if self.total_pages == 1:
            self.remove_item(self.previous_page)
            self.remove_item(self.next_page)
        else:
            self.previous_page.disabled = page == 0
            self.next_page.disabled = page >= self.total_pages - 1

    @discord.ui.button(label="← สาขา", style=discord.ButtonStyle.secondary, row=1)
    async def back_to_programs(self, interaction, button):
        del button
        await interaction.response.edit_message(
            content=program_menu_content(
                self.navigation_programs,
                self.university_short_name,
                self.campus_code,
                self.faculty_name,
            ),
            embeds=[],
            view=ProgramView(
                self.owner_id,
                self.navigation_programs,
                self.university_short_name,
                self.campus_code,
                self.faculty_name,
            ),
        )

    @discord.ui.button(label="◀ ก่อนหน้า", style=discord.ButtonStyle.secondary, row=1)
    async def previous_page(self, interaction, button):
        del button
        await interaction.response.edit_message(
            view=ProjectView(
                self.owner_id,
                self.navigation_programs,
                self.university_short_name,
                self.campus_code,
                self.faculty_name,
                self.program_data,
                self.page - 1,
            )
        )

    @discord.ui.button(label="ถัดไป ▶", style=discord.ButtonStyle.secondary, row=1)
    async def next_page(self, interaction, button):
        del button
        await interaction.response.edit_message(
            view=ProjectView(
                self.owner_id,
                self.navigation_programs,
                self.university_short_name,
                self.campus_code,
                self.faculty_name,
                self.program_data,
                self.page + 1,
            )
        )


class ProjectDetailView(OwnedView):
    def __init__(
        self,
        owner_id,
        navigation_programs,
        university_short_name,
        campus_code,
        faculty_name,
        program_data,
        project,
        section="summary",
        applicant_profile=None,
    ):
        super().__init__(owner_id)
        self.navigation_programs = navigation_programs
        self.university_short_name = university_short_name
        self.campus_code = campus_code
        self.campus_name = campus_name_for(
            navigation_programs, university_short_name, campus_code
        )
        self.faculty_name = faculty_name
        self.program_data = program_data
        self.project = project
        self.section = section
        self.applicant_profile = applicant_profile

        section_buttons = {
            "summary": self.show_summary,
            "criteria": self.show_criteria,
            "portfolio": self.show_portfolio,
            "timeline": self.show_timeline,
        }
        for section_name, button in section_buttons.items():
            is_active = section_name == section
            button.disabled = is_active
            button.style = (
                discord.ButtonStyle.primary
                if is_active
                else discord.ButtonStyle.secondary
            )

        source_url = project.get("source_url")
        if source_url:
            self.add_item(
                discord.ui.Button(
                    label="เปิดประกาศทางการ",
                    style=discord.ButtonStyle.link,
                    url=source_url,
                    row=1,
                )
            )
        self.add_item(HomeButton())

    async def show_section(self, interaction, section):
        builders = {
            "summary": build_project_embed,
            "criteria": build_project_criteria_embed,
            "portfolio": build_project_portfolio_embed,
            "timeline": build_project_timeline_embed,
        }
        if section == "summary":
            embed = build_project_embed(
                self.program_data, self.project, self.applicant_profile
            )
        else:
            embed = builders[section](self.program_data, self.project)
        await interaction.response.edit_message(
            content=project_detail_content(
                self.university_short_name,
                self.faculty_name,
                self.program_data,
                section,
                self.campus_name,
            ),
            embeds=[embed],
            view=ProjectDetailView(
                self.owner_id,
                self.navigation_programs,
                self.university_short_name,
                self.campus_code,
                self.faculty_name,
                self.program_data,
                self.project,
                section,
                self.applicant_profile,
            ),
        )

    @discord.ui.button(
        label="สรุป", style=discord.ButtonStyle.secondary, row=0
    )
    async def show_summary(self, interaction, button):
        del button
        await self.show_section(interaction, "summary")

    @discord.ui.button(
        label="คุณสมบัติ", style=discord.ButtonStyle.secondary, row=0
    )
    async def show_criteria(self, interaction, button):
        del button
        await self.show_section(interaction, "criteria")

    @discord.ui.button(
        label="Portfolio", style=discord.ButtonStyle.secondary, row=0
    )
    async def show_portfolio(self, interaction, button):
        del button
        await self.show_section(interaction, "portfolio")

    @discord.ui.button(
        label="กำหนดการ", style=discord.ButtonStyle.secondary, row=0
    )
    async def show_timeline(self, interaction, button):
        del button
        await self.show_section(interaction, "timeline")

    @discord.ui.button(label="← โครงการอื่น", style=discord.ButtonStyle.secondary, row=1)
    async def back_to_projects(self, interaction, button):
        del button
        await interaction.response.edit_message(
            content=project_menu_content(
                self.university_short_name,
                self.faculty_name,
                self.program_data,
                self.campus_name,
            ),
            embeds=[],
            view=ProjectView(
                self.owner_id,
                self.navigation_programs,
                self.university_short_name,
                self.campus_code,
                self.faculty_name,
                self.program_data,
            ),
        )


async def open_grade_screening(interaction: discord.Interaction):
    """Open the private grade screening flow for /grade_check."""
    await interaction.response.defer(thinking=True, ephemeral=True)
    try:
        navigation_programs = await bot.load_navigation_programs(timeout=15)
        if not navigation_programs:
            raise RuntimeError("no discoverable programs returned from Supabase")
        flow_id = new_flow_id()
        started_at = time.monotonic()
        record_event("grade_check_started", interaction, flow_id=flow_id)
        await interaction.edit_original_response(
            content=grade_screening_intro(),
            embeds=[],
            view=GradeScreeningFieldView(
                interaction.user.id, navigation_programs,
                flow_id=flow_id, started_at=started_at,
            ),
        )
    except Exception:
        logger.exception("grade_check menu failed")
        await interaction.edit_original_response(
            content="เปิดระบบเทียบเกรดไม่สำเร็จ กรุณาลอง `/grade_check` อีกครั้ง",
            embeds=[],
            view=None,
        )


@bot.tree.command(
    name="grade_check",
    description="กรอก GPAX และเลือกสายเพื่อเทียบเกณฑ์ TCAS70",
)
async def grade_check(interaction: discord.Interaction):
    await open_grade_screening(interaction)


@bot.tree.command(
    name="start",
    description="เริ่มค้นหา คัดกรอง หรือเปรียบเทียบหลักสูตร TCAS70",
)
async def start(interaction: discord.Interaction):
    await interaction.response.defer(thinking=True, ephemeral=True)
    try:
        navigation_programs = await bot.load_navigation_programs(timeout=15)
        if not navigation_programs:
            raise RuntimeError("no discoverable programs returned from Supabase")
        await interaction.edit_original_response(
            content=start_menu_content(navigation_programs),
            embeds=[],
            view=StartView(interaction.user.id, navigation_programs),
        )
    except Exception:
        logger.exception("start menu failed")
        await interaction.edit_original_response(
            content="เปิดหน้าเริ่มต้นไม่สำเร็จ กรุณาลอง `/start` อีกครั้ง",
            embeds=[],
            view=None,
        )


@bot.tree.command(
    name="help",
    description="ดูวิธีใช้และคำอธิบายศัพท์ TCAS ที่พบบ่อย",
)
async def help_command(interaction: discord.Interaction):
    embed = discord.Embed(
        title="วิธีใช้บอทและศัพท์ TCAS",
        description=(
            "เริ่มด้วย `/start` แล้วเลือกค้นหาตามมหาวิทยาลัย คัดกรองจากข้อมูลตนเอง "
            "หรือเปรียบเทียบหลักสูตร ข้อมูลทุกหน้าจะแยกสิ่งที่ยืนยันแล้วออกจากข้อมูลแนวทาง"
        ),
        color=discord.Color.blurple(),
    )
    embed.add_field(
        name="คำสั่งหลัก",
        value=(
            "• `/start` — จุดเริ่มสำหรับทุกคน\n"
            "• `/grade_check` — เทียบ GPAX กับเกณฑ์ แยกจากหน้าเริ่มต้น\n"
            "• `/tcas_search` — ไปยังมหาวิทยาลัยที่รู้ชื่อแล้วทันที\n"
            "• `/help` — เปิดคำอธิบายนี้"
        ),
        inline=False,
    )
    embed.add_field(
        name="เช็กว่าเกรดถึงเกณฑ์ไหน",
        value=(
            "ใช้ `/grade_check` ได้โดยตรง หรือ `/start` → **ฉันผ่านเกณฑ์อะไรบ้าง**\n"
            "เลือกสายวิศวกรรมศาสตร์ / วิทยาศาสตร์ / เทคโนโลยีสารสนเทศ → กรอก GPAX\n"
            "เลือกมหาวิทยาลัย แล้วดูผลเทียบเกณฑ์ได้เลย\n"
            "ผลตรวจรายเงื่อนไขจะแยกชัดเจน ส่วนเกณฑ์ปีก่อนใช้เตรียมตัว ไม่ใช้ยืนยันสิทธิ์ปีนี้"
        ),
        inline=False,
    )
    embed.add_field(
        name="ศัพท์ที่พบบ่อย",
        value=(
            "• **Portfolio / TCAS รอบ 1** — คัดเลือกจากผลงาน คุณสมบัติ และ/หรือสัมภาษณ์ตามประกาศ\n"
            "• **1.1 / 1.2** — ช่วงย่อยของรอบ Portfolio แต่ละมหาวิทยาลัยอาจใช้ชื่อไม่เหมือนกัน\n"
            "• **GPAX** — เกรดเฉลี่ยสะสม ไม่ใช่เกรดเฉพาะวิชา\n"
            "• **TGAT / TPAT / A-Level** — คะแนนสอบกลางที่บางโครงการกำหนด\n"
            "• **Clearing House** — ขั้นตอนยืนยันสิทธิ์กลางตามกำหนดของ TCAS"
        ),
        inline=False,
    )
    embed.add_field(
        name="อ่านสถานะอย่างไร",
        value=(
            "**เปิดดูเกณฑ์สมัครได้** — มีประกาศ TCAS70 ทางการในฐานข้อมูล\n"
            "**ข้อมูลแนวทาง** — หลักสูตรจริง แต่ข้อมูลรับสมัครยังใช้ยืนยันไม่ได้\n"
            "**รอประกาศ** — ยังไม่พบประกาศรับสมัครฉบับสมบูรณ์"
        ),
        inline=False,
    )
    embed.add_field(
        name="ข้อควรจำ",
        value=(
            "ผลคัดกรองเป็นตัวช่วยลดรายการ ไม่ใช่การรับรองสิทธิ์สมัคร "
            "ให้เปิดประกาศต้นทางและตรวจวุฒิ แผนการเรียน ผลงาน คะแนนสอบ และวันสมัครทุกครั้ง"
        ),
        inline=False,
    )
    embed.set_footer(text=f"ตรวจชุดข้อมูลล่าสุด {DATASET_CHECKED_AT_DISPLAY}")
    await interaction.response.send_message(embed=embed, ephemeral=True)


@bot.tree.command(name="hello", description="ทักทายกับบอทพอร์ตโฟลิโอ")
async def hello(interaction: discord.Interaction):
    await interaction.response.send_message(
        f"สวัสดีครับคุณ {interaction.user.name}! "
        "ยินดีต้อนรับสู่บอทเช็กเกณฑ์รอบพอร์ต TCAS เริ่มใช้งานด้วย `/start` ได้เลย",
        ephemeral=True,
    )


@bot.tree.command(
    name="tcas_search",
    description="เลือกมหาวิทยาลัย วิทยาเขต คณะ สาขา และโครงการ Portfolio",
)
@app_commands.rename(university="มหาวิทยาลัย")
@app_commands.describe(university="พิมพ์ชื่อหรือตัวย่อ แล้วเลือกมหาวิทยาลัย")
@app_commands.choices(university=UNIVERSITY_SLASH_CHOICES)
async def tcas_search(interaction: discord.Interaction, university: str):
    await interaction.response.defer(thinking=True, ephemeral=True)
    logger.info(
        "tcas_search interactive menu started user=%s university=%s",
        interaction.user.id,
        university,
    )

    try:
        navigation_programs = await bot.load_navigation_programs(
            timeout=15
        )
        if not navigation_programs:
            raise RuntimeError("no discoverable programs returned from Supabase")

        selected_university = next(
            (
                program["university_short_name"]
                for program in navigation_programs
                if university.casefold()
                in {
                    program["university_short_name"].casefold(),
                    program["university_name"].casefold(),
                }
            ),
            None,
        )
        if not selected_university:
            await interaction.edit_original_response(
                content=(
                    "ไม่พบมหาวิทยาลัยที่เลือก\n"
                    "เลือกใหม่จากเมนูด้านล่างได้เลย"
                ),
                embeds=[],
                view=UniversityView(interaction.user.id, navigation_programs),
            )
            return

        campuses = campuses_for_university(
            navigation_programs, selected_university
        )
        if len(campuses) > 1:
            content = campus_menu_content(
                navigation_programs, selected_university
            )
            view = CampusView(
                interaction.user.id,
                navigation_programs,
                selected_university,
            )
        else:
            campus_code = campuses[0]["code"]
            content = faculty_menu_content(
                navigation_programs, selected_university, campus_code
            )
            view = FacultyView(
                interaction.user.id,
                navigation_programs,
                selected_university,
                campus_code,
            )
        await asyncio.wait_for(
            interaction.edit_original_response(
                content=content,
                embeds=[],
                view=view,
            ),
            timeout=15,
        )
        logger.info(
            "tcas_search menu ready user=%s programs=%d",
            interaction.user.id,
            len(navigation_programs),
        )
    except asyncio.TimeoutError:
        logger.exception("tcas_search menu timed out user=%s", interaction.user.id)
        try:
            await asyncio.wait_for(
                interaction.edit_original_response(
                    content=(
                        "ระบบตอบกลับช้ากว่าปกติ กรุณาลองใหม่อีกครั้ง "
                        "หากยังเกิดซ้ำให้ตรวจไฟล์ bot.log"
                    ),
                    embeds=[],
                ),
                timeout=5,
            )
        except Exception:
            logger.exception("could not replace timed-out interaction response")
    except Exception:
        logger.exception("tcas_search menu failed user=%s", interaction.user.id)
        try:
            await asyncio.wait_for(
                interaction.edit_original_response(
                    content="โหลดเมนูค้นหาไม่สำเร็จ กรุณาลองใหม่อีกครั้ง",
                    embeds=[],
                    view=None,
                ),
                timeout=5,
            )
        except Exception:
            logger.exception("could not replace failed interaction response")


if __name__ == "__main__":
    bot.run(discord_token)
