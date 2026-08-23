import asyncio
import json
import logging
import os
import time
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

# These official curricula stay discoverable while their TCAS70 project
# announcements are still waiting for official publication. Hidden draft
# admission criteria remain inaccessible.
CATALOG_PROGRAM_CODES = {
    "kmitl-it",
    "kmitl-dsba",
    "kmitl-ait",
    "kmitl-science-computer-science",
    "cu-engineering-computer-engineering",
    "cu-engineering-cedt",
    "cu-engineering-ice",
    "cu-engineering-robotics-ai",
    "cu-engineering-semiconductor",
    "cu-science-computer-science",
    "cu-cbs-management-information-systems",
    "cu-cbs-statistics-data-science",
    "cu-cbs-information-technology-business",
    "kmutnb-engineering-computer-engineering",
    "kmutnb-science-computer-science",
    "kmutnb-itd-informatics-digital-economy",
    "kmutnb-fitm-information-technology",
    "kmutnb-fitm-information-network-engineering",
}
NAVIGATION_CACHE_TTL_SECONDS = 300

# Discord autocomplete must answer within roughly three seconds. University
# names change rarely and there are only eight in the current verified scope,
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
            "universities(name,short_name,logo_url)"
        )
        .eq("code", program_code)
        .eq("data_status", "official")
        .limit(1)
        .execute()
    )
    if not program_response.data:
        return None

    program = program_response.data[0]
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

    projects.sort(
        key=lambda item: (
            str(item.get("round_variant") or ""),
            str(item.get("name") or ""),
        )
    )
    program["projects"] = projects
    return program


def fetch_navigation_programs():
    """Return official-project programs plus selected official curricula."""
    response = (
        database.table("admission_project_programs")
        .select(
            "faculties_and_majors!inner("
            "code,faculty_name,major_name,"
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
        if not code:
            return
        university = first_relation(program.get("universities"))
        existing = programs.get(code)
        programs[code] = {
            "code": code,
            "faculty_name": program.get("faculty_name") or "ไม่ระบุคณะ",
            "major_name": program.get("major_name") or program.get("faculty_name"),
            "university_short_name": university.get("short_name") or "มหาวิทยาลัย",
            "university_name": university.get("name") or "ไม่ระบุมหาวิทยาลัย",
            "has_official_projects": has_official_projects
            or bool(existing and existing.get("has_official_projects")),
        }

    for row in response.data or []:
        program = first_relation(row.get("faculties_and_majors"))
        add_program(program, has_official_projects=True)

    catalog_response = (
        database.table("faculties_and_majors")
        .select(
            "code,faculty_name,major_name,"
            "universities!inner(name,short_name)"
        )
        .eq("academic_year", 2570)
        .eq("data_status", "official")
        .in_("code", sorted(CATALOG_PROGRAM_CODES))
        .execute()
    )
    for program in catalog_response.data or []:
        add_program(program, has_official_projects=False)

    return sorted(
        programs.values(),
        key=lambda item: (
            item["university_name"].casefold(),
            item["faculty_name"].casefold(),
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
        display = event.get("date_display")
        if not display:
            start = event.get("start_on") or "ไม่ระบุ"
            end = event.get("end_on")
            display = f"{start} – {end}" if end and end != start else start
        status = event.get("date_status")
        suffix = " (ระบุเพียงเดือน)" if status == "month_only" else ""
        lines.append(f"• {event.get('event_name', 'เหตุการณ์')}: {display}{suffix}")
    return "\n".join(lines)


def format_bullets(values, limit=600):
    if not values:
        return None
    if isinstance(values, dict):
        values = [f"{key}: {value}" for key, value in values.items()]
    elif not isinstance(values, list):
        values = [values]
    text = "\n".join(f"• {item}" for item in values if item)
    return shorten(text, limit) if text else None


def format_key_values(value, limit=600):
    if not value:
        return None
    if not isinstance(value, dict):
        return format_bullets(value, limit)

    lines = []
    for key, item in value.items():
        if isinstance(item, dict):
            detail = ", ".join(
                f"{child_key}: {child_value}"
                for child_key, child_value in item.items()
                if child_value not in (None, "", [], {})
            )
        elif isinstance(item, list):
            detail = "; ".join(str(child) for child in item if child)
        else:
            detail = str(item)
        if detail:
            lines.append(f"• {key}: {detail}")
    return shorten("\n".join(lines), limit) if lines else None


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


def build_program_profile_embed(program):
    """Show useful official curriculum data while TCAS70 is still pending."""
    university = first_relation(program.get("universities"))
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

    embed = discord.Embed(
        title=shorten(program.get("major_name") or program.get("faculty_name"), 256),
        url=program.get("official_program_url") or None,
        description=(
            f"**{university.get('name', 'ไม่ระบุมหาวิทยาลัย')}**\n"
            f"{program.get('faculty_name', 'ไม่ระบุคณะ')}\n\n"
            "⏳ ยังไม่มีประกาศโครงการรับสมัคร TCAS70 ที่บอทยืนยันได้"
        ),
        color=discord.Color.orange(),
    )
    embed.add_field(
        name="🎓 ชื่อปริญญา",
        value=display_value(program.get("program_type")),
        inline=False,
    )
    embed.add_field(
        name="🌐 ภาษา", value=display_value(program.get("language")), inline=True
    )
    embed.add_field(name="⏱️ ระยะเวลา", value=duration_text, inline=True)
    embed.add_field(name="📚 หน่วยกิต", value=credits_text, inline=True)
    embed.add_field(
        name="📘 ปีหลักสูตร", value=curriculum_year_text, inline=True
    )
    embed.add_field(
        name="📅 ปีรับสมัครที่ติดตาม", value="TCAS70 / ปีการศึกษา 2570", inline=True
    )
    embed.add_field(
        name="🛡️ สถานะข้อมูล",
        value=(
            "ยืนยันว่าหลักสูตรเปิดสอนจากเว็บไซต์ทางการแล้ว แต่ยังไม่แสดง "
            "GPAX จำนวนรับ Portfolio หรือกำหนดการจนกว่าจะมีประกาศ TCAS70"
        ),
        inline=False,
    )
    if program.get("official_program_url"):
        embed.add_field(
            name="🔗 ข้อมูลหลักสูตรทางการ",
            value=program["official_program_url"],
            inline=False,
        )
    if university.get("logo_url"):
        embed.set_thumbnail(url=university["logo_url"])
    embed.set_footer(text="ไม่ใช้เกณฑ์หรือจำนวนรับจากปีเก่ามาแทน TCAS70")
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
        parts.append(str(methods[0]))
    return shorten(" • ".join(parts), 100)


def build_project_embed(program, project):
    university = first_relation(program.get("universities"))
    criteria = project.get("selected_criteria") or {}
    timeline = project.get("admission_timeline") or []
    program_name = program.get("major_name") or program.get("faculty_name")

    slots = project.get("slots_available")
    slots_text = f"{slots} คน" if slots is not None else "ประกาศไม่ได้ระบุ"
    min_gpax = criteria.get("min_gpax")
    gpax_requirements = criteria.get("gpax_requirements") or {}
    thai_gpax_only = (
        isinstance(gpax_requirements, dict)
        and "Grade 12 / Year 13 / GED" in gpax_requirements
    )
    gpax_text = (
        f"{float(min_gpax):.2f} ขึ้นไป"
        + (" (วุฒิไทย)" if thai_gpax_only else "")
        if min_gpax is not None
        else "ดูเงื่อนไขรายประเภทผู้สมัคร"
    )

    score_parts = []
    english_scores = criteria.get("min_english_score") or {}
    standard_scores = criteria.get("standardized_scores") or {}
    if english_scores:
        score_parts.append("คะแนนภาษาอังกฤษ\n" + format_json_scores(english_scores))
    if standard_scores:
        score_parts.append("คะแนนมาตรฐาน\n" + format_json_scores(standard_scores))
    score_text = "\n\n".join(score_parts) or "ไม่มีคะแนนสอบเพิ่มเติมตามประกาศ"

    gpax_parts = []
    gpax_requirements_text = format_key_values(gpax_requirements, 450)
    if gpax_requirements_text:
        gpax_parts.append("**เงื่อนไข GPAX**\n" + gpax_requirements_text)
    subject_gpax = format_key_values(criteria.get("subject_gpax"), 450)
    if subject_gpax:
        gpax_parts.append("**GPAX/เกรดรายวิชา**\n" + subject_gpax)
    gpax_details_text = "\n\n".join(gpax_parts)

    portfolio_parts = []
    portfolio_requirements = criteria.get("portfolio_requirements")
    if portfolio_requirements:
        portfolio_parts.append(str(portfolio_requirements))
    portfolio_details = format_key_values(criteria.get("portfolio_details"), 500)
    if portfolio_details:
        portfolio_parts.append(portfolio_details)
    achievements = format_bullets(criteria.get("accepted_achievements"), 450)
    if achievements:
        portfolio_parts.append("**ผลงาน/รางวัลที่รับพิจารณา**\n" + achievements)
    portfolio_text = "\n\n".join(portfolio_parts) or "ประกาศไม่ได้ระบุ Portfolio"

    embed = discord.Embed(
        title=shorten(project.get("name"), 256),
        url=project.get("source_url") or None,
        description=(
            f"**{university.get('name', 'ไม่ระบุมหาวิทยาลัย')}**\n"
            f"{program.get('faculty_name', 'ไม่ระบุคณะ')}\n"
            f"{program_name}\n"
            f"รอบ {project.get('round_label')} • แบบ {project.get('round_variant')}"
        ),
        color=discord.Color.green(),
    )
    embed.add_field(name="👥 จำนวนรับสาขานี้", value=slots_text, inline=True)
    embed.add_field(name="📊 GPAX ขั้นต่ำ", value=gpax_text, inline=True)
    embed.add_field(
        name="💳 ค่าสมัคร", value=format_money(project.get("application_fee")), inline=True
    )
    embed.add_field(
        name="💰 ค่าเล่าเรียน/ภาค",
        value=format_money(project.get("tuition_fee_per_semester")),
        inline=True,
    )
    embed.add_field(
        name="🔢 จำกัดอันดับ",
        value=(
            f"เลือกได้ไม่เกิน {project['selection_order_limit']} อันดับ"
            if project.get("selection_order_limit") is not None
            else "ประกาศไม่ได้ระบุ"
        ),
        inline=True,
    )
    embed.add_field(
        name="🌐 ภาษา", value=display_value(program.get("language")), inline=True
    )
    if project.get("program_notes"):
        embed.add_field(
            name="ℹ️ หมายเหตุจำนวนรับ",
            value=shorten(project["program_notes"], 350),
            inline=False,
        )
    embed.add_field(
        name="✅ เกณฑ์สำคัญ",
        value=shorten(criteria.get("criteria_summary"), 600),
        inline=False,
    )
    qualifications = format_bullets(criteria.get("applicant_qualifications"), 500)
    if qualifications:
        embed.add_field(
            name="🙋 คุณสมบัติผู้สมัคร", value=qualifications, inline=False
        )
    if gpax_details_text:
        embed.add_field(
            name="📈 รายละเอียดผลการเรียน",
            value=shorten(gpax_details_text, 600),
            inline=False,
        )
    embed.add_field(
        name="🧮 คะแนนเพิ่มเติม", value=shorten(score_text, 550), inline=False
    )
    methods = format_bullets(criteria.get("selection_methods"), 450)
    if methods:
        embed.add_field(name="📝 วิธีคัดเลือก", value=methods, inline=False)
    embed.add_field(
        name="📂 Portfolio และผลงาน", value=shorten(portfolio_text, 750), inline=False
    )
    documents = format_bullets(criteria.get("required_documents"), 500)
    if documents:
        embed.add_field(name="📄 เอกสารที่ใช้", value=documents, inline=False)
    additional = format_bullets(criteria.get("additional_requirements"), 450)
    if additional:
        embed.add_field(
            name="⚠️ เงื่อนไขเพิ่มเติม", value=additional, inline=False
        )
    embed.add_field(
        name="🗓️ กำหนดการ",
        value=shorten(format_timeline(timeline), 750),
        inline=False,
    )
    source_details = []
    if project.get("source_published_at"):
        source_details.append(f"เผยแพร่: {project['source_published_at']}")
    if project.get("source_checked_at"):
        source_details.append(f"ตรวจล่าสุด: {project['source_checked_at']}")
    source_details.append(project.get("source_url", "ไม่ระบุ"))
    embed.add_field(
        name="🔗 ประกาศต้นทาง",
        value=shorten("\n".join(source_details), 500),
        inline=False,
    )
    if university.get("logo_url"):
        embed.set_thumbnail(url=university["logo_url"])
    embed.set_footer(
        text="สถานะ official • แสดงจากประกาศทางการที่ตรวจแหล่งต้นทางแล้ว"
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


def selection_path(university_short_name, faculty_name=None, major_name=None):
    parts = [university_short_name]
    if faculty_name:
        parts.append(faculty_name)
    if major_name:
        parts.append(major_name)
    return " › ".join(parts)


def university_menu_content(navigation_programs):
    university_count = len(
        {program["university_short_name"] for program in navigation_programs}
    )
    return (
        "🎓 **ค้นหาเกณฑ์ TCAS70 รอบ Portfolio**\n"
        "เลือกตามลำดับ: **มหาวิทยาลัย → คณะ → สาขา → โครงการ**\n\n"
        f"**1/4 เลือกมหาวิทยาลัย** • มี {university_count} แห่ง"
    )


def faculty_menu_content(navigation_programs, university_short_name):
    university_name = university_name_for(
        navigation_programs, university_short_name
    )
    matching = [
        program
        for program in navigation_programs
        if program["university_short_name"] == university_short_name
    ]
    faculty_count = len({program["faculty_name"] for program in matching})
    return (
        "🎓 **ค้นหาเกณฑ์ TCAS70 รอบ Portfolio**\n"
        f"📍 **{university_name}**\n\n"
        f"**2/4 เลือกคณะ** • มี {faculty_count} คณะ\n"
        "✅ มีประกาศแล้ว  •  ⏳ รอประกาศ TCAS70"
    )


def program_menu_content(
    navigation_programs, university_short_name, faculty_name
):
    matching = [
        program
        for program in navigation_programs
        if program["university_short_name"] == university_short_name
        and program["faculty_name"] == faculty_name
    ]
    announced_count = sum(
        1 for program in matching if program.get("has_official_projects")
    )
    return (
        "🎓 **ค้นหาเกณฑ์ TCAS70 รอบ Portfolio**\n"
        f"📍 {selection_path(university_short_name, faculty_name)}\n\n"
        f"**3/4 เลือกสาขา** • มี {len(matching)} สาขา "
        f"(มีประกาศแล้ว {announced_count})\n"
        "✅ ดูเกณฑ์ได้  •  ⏳ มีหลักสูตรแต่ยังรอประกาศ"
    )


def project_menu_content(
    university_short_name, faculty_name, program_data
):
    major_name = program_data.get("major_name") or "ไม่ระบุสาขา"
    projects = program_data.get("projects") or []
    return (
        "🎓 **ค้นหาเกณฑ์ TCAS70 รอบ Portfolio**\n"
        f"📍 {selection_path(university_short_name, faculty_name, major_name)}\n\n"
        f"**4/4 เลือกโครงการรับสมัคร** • มี {len(projects)} โครงการ\n"
        "ใต้ชื่อโครงการมี GPAX จำนวนรับ และวิธีคัดเลือกแบบย่อ"
    )


def pending_program_content(
    university_short_name, faculty_name, program_name, program_url
):
    curriculum_link = (
        f"\n📚 [เปิดข้อมูลหลักสูตรทางการ]({program_url})"
        if program_url
        else ""
    )
    return (
        "⏳ **ยังไม่มีประกาศรับสมัคร TCAS70**\n"
        f"📍 {selection_path(university_short_name, faculty_name, program_name)}\n\n"
        "หลักสูตรนี้เปิดสอนจริง แต่ยังไม่มีประกาศโครงการ เกณฑ์ หรือจำนวนรับ "
        "จึงยังไม่แสดงข้อมูลที่คาดเดาไว้"
        f"{curriculum_link}\n\n"
        "เลือกสาขาอื่นจากเมนูเดิมด้านล่างได้เลย"
    )


class OwnedView(discord.ui.View):
    def __init__(self, owner_id):
        super().__init__(timeout=VIEW_TIMEOUT_SECONDS)
        self.owner_id = owner_id

    async def interaction_check(self, interaction: discord.Interaction):
        if interaction.user.id == self.owner_id:
            return True
        await interaction.response.send_message(
            "เมนูนี้เป็นของผู้ที่เรียกคำสั่ง กรุณาใช้ `/tcas_search` ของตัวเองครับ",
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
                "❌ เมนูเกิดข้อผิดพลาด กรุณาเรียก `/tcas_search` ใหม่",
                ephemeral=True,
            )


class HomeButton(discord.ui.Button):
    def __init__(self):
        super().__init__(
            label="🏠 เริ่มใหม่",
            style=discord.ButtonStyle.secondary,
            row=1,
        )

    async def callback(self, interaction: discord.Interaction):
        parent = self.view
        await interaction.response.edit_message(
            content=university_menu_content(parent.navigation_programs),
            embeds=[],
            view=UniversityView(parent.owner_id, parent.navigation_programs),
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
                emoji="🏫",
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
        await interaction.response.edit_message(
            content=faculty_menu_content(
                parent.navigation_programs, university_short_name
            ),
            embeds=[],
            view=FacultyView(
                parent.owner_id,
                parent.navigation_programs,
                university_short_name,
            ),
        )


class UniversityView(OwnedView):
    def __init__(self, owner_id, navigation_programs):
        super().__init__(owner_id)
        self.navigation_programs = navigation_programs
        self.add_item(UniversitySelect(navigation_programs))


class FacultySelect(discord.ui.Select):
    def __init__(self, faculties):
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
                    emoji="✅" if announced else "⏳",
                )
            )
        super().__init__(
            placeholder="2. เลือกคณะ",
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
                faculty_name,
            ),
            embeds=[],
            view=ProgramView(
                parent.owner_id,
                parent.navigation_programs,
                parent.university_short_name,
                faculty_name,
            ),
        )


class FacultyView(OwnedView):
    def __init__(
        self, owner_id, navigation_programs, university_short_name, page=0
    ):
        super().__init__(owner_id)
        self.navigation_programs = navigation_programs
        self.university_short_name = university_short_name
        grouped = {}
        for program in navigation_programs:
            if program["university_short_name"] != university_short_name:
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
        self.total_pages = max(
            1, (len(self.faculties) + SELECT_PAGE_SIZE - 1) // SELECT_PAGE_SIZE
        )
        start = page * SELECT_PAGE_SIZE
        self.add_item(FacultySelect(self.faculties[start : start + SELECT_PAGE_SIZE]))
        if self.total_pages == 1:
            self.remove_item(self.previous_page)
            self.remove_item(self.next_page)
        else:
            self.previous_page.disabled = page == 0
            self.next_page.disabled = page >= self.total_pages - 1

    @discord.ui.button(label="← มหาวิทยาลัย", style=discord.ButtonStyle.secondary, row=1)
    async def back_to_universities(self, interaction, button):
        del button
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
                self.page + 1,
            )
        )


class ProgramSelect(discord.ui.Select):
    def __init__(self, programs):
        options = [
            discord.SelectOption(
                label=shorten(program["major_name"], 100),
                value=program["code"],
                description=shorten(
                    "เปิดดูเกณฑ์และโครงการได้"
                    if program.get("has_official_projects", True)
                    else "มีหลักสูตร • รอประกาศ TCAS70",
                    100,
                ),
                emoji=(
                    "✅"
                    if program.get("has_official_projects", True)
                    else "⏳"
                ),
            )
            for program in programs
        ]
        super().__init__(
            placeholder="3. เลือกสาขา",
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
                program_name = (program_data or {}).get("major_name") or "สาขานี้"
                program_url = (program_data or {}).get("official_program_url")
                await interaction.edit_original_response(
                    content=pending_program_content(
                        parent.university_short_name,
                        parent.faculty_name,
                        program_name,
                        program_url,
                    ),
                    embeds=(
                        [build_program_profile_embed(program_data)]
                        if program_data
                        else []
                    ),
                    view=parent,
                )
                return
            await interaction.edit_original_response(
                content=project_menu_content(
                    parent.university_short_name,
                    parent.faculty_name,
                    program_data,
                ),
                embeds=[],
                view=ProjectView(
                    parent.owner_id,
                    parent.navigation_programs,
                    parent.university_short_name,
                    parent.faculty_name,
                    program_data,
                ),
            )
        except Exception:
            logger.exception("could not load projects for program=%s", program_code)
            await interaction.edit_original_response(
                content="❌ โหลดโครงการไม่สำเร็จ กรุณาลองเลือกสาขาอีกครั้ง",
                embeds=[],
                view=parent,
            )


class ProgramView(OwnedView):
    def __init__(
        self,
        owner_id,
        navigation_programs,
        university_short_name,
        faculty_name,
        page=0,
    ):
        super().__init__(owner_id)
        self.navigation_programs = navigation_programs
        self.university_short_name = university_short_name
        self.faculty_name = faculty_name
        self.programs = [
            program
            for program in navigation_programs
            if program["university_short_name"] == university_short_name
            and program["faculty_name"] == faculty_name
        ]
        self.page = page
        self.total_pages = max(
            1, (len(self.programs) + SELECT_PAGE_SIZE - 1) // SELECT_PAGE_SIZE
        )
        start = page * SELECT_PAGE_SIZE
        self.add_item(ProgramSelect(self.programs[start : start + SELECT_PAGE_SIZE]))
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
                self.navigation_programs, self.university_short_name
            ),
            embeds=[],
            view=FacultyView(
                self.owner_id,
                self.navigation_programs,
                self.university_short_name,
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
                self.faculty_name,
                self.page + 1,
            )
        )


class ProjectSelect(discord.ui.Select):
    def __init__(self, projects):
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
                    emoji="📋",
                )
            )
        super().__init__(
            placeholder="4. เลือกโครงการรับสมัคร",
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
            content=(
                "✅ **รายละเอียดโครงการที่เลือก**\n"
                f"📍 {selection_path(parent.university_short_name, parent.faculty_name, parent.program_data.get('major_name'))}\n"
                "ตรวจเงื่อนไขด้านล่าง แล้วเปิดประกาศทางการเพื่อยืนยันก่อนสมัคร"
            ),
            embeds=[embed],
            view=ProjectDetailView(
                parent.owner_id,
                parent.navigation_programs,
                parent.university_short_name,
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
        faculty_name,
        program_data,
        page=0,
    ):
        super().__init__(owner_id)
        self.navigation_programs = navigation_programs
        self.university_short_name = university_short_name
        self.faculty_name = faculty_name
        self.program_data = program_data
        self.page = page
        projects = program_data.get("projects") or []
        self.total_pages = max(
            1, (len(projects) + SELECT_PAGE_SIZE - 1) // SELECT_PAGE_SIZE
        )
        start = page * SELECT_PAGE_SIZE
        self.add_item(ProjectSelect(projects[start : start + SELECT_PAGE_SIZE]))
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
                self.faculty_name,
            ),
            embeds=[],
            view=ProgramView(
                self.owner_id,
                self.navigation_programs,
                self.university_short_name,
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
        faculty_name,
        program_data,
        project,
    ):
        super().__init__(owner_id)
        self.navigation_programs = navigation_programs
        self.university_short_name = university_short_name
        self.faculty_name = faculty_name
        self.program_data = program_data
        self.project = project
        source_url = project.get("source_url")
        if source_url:
            self.add_item(
                discord.ui.Button(
                    label="📄 เปิดประกาศทางการ",
                    style=discord.ButtonStyle.link,
                    url=source_url,
                    row=0,
                )
            )
        self.add_item(HomeButton())

    @discord.ui.button(label="← โครงการอื่น", style=discord.ButtonStyle.secondary, row=1)
    async def back_to_projects(self, interaction, button):
        del button
        await interaction.response.edit_message(
            content=project_menu_content(
                self.university_short_name,
                self.faculty_name,
                self.program_data,
            ),
            embeds=[],
            view=ProjectView(
                self.owner_id,
                self.navigation_programs,
                self.university_short_name,
                self.faculty_name,
                self.program_data,
            ),
        )


@bot.tree.command(name="hello", description="ทักทายกับบอทพอร์ตโฟลิโอ")
async def hello(interaction: discord.Interaction):
    await interaction.response.send_message(
        f"สวัสดีครับคุณ {interaction.user.name}! "
        "ยินดีต้อนรับสู่บอทเช็กเกณฑ์รอบพอร์ต TCAS 🎓"
    )


@bot.tree.command(
    name="tcas_search",
    description="เลือกมหาวิทยาลัย แล้วค้นหาคณะ สาขา และโครงการ Portfolio",
)
@app_commands.rename(university="มหาวิทยาลัย")
@app_commands.describe(university="พิมพ์ชื่อหรือตัวย่อ แล้วเลือกมหาวิทยาลัย")
@app_commands.choices(university=UNIVERSITY_SLASH_CHOICES)
async def tcas_search(interaction: discord.Interaction, university: str):
    await interaction.response.defer(thinking=True)
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
                    "❌ ไม่พบมหาวิทยาลัยที่เลือก\n"
                    "เลือกใหม่จากเมนูด้านล่างได้เลย"
                ),
                embeds=[],
                view=UniversityView(interaction.user.id, navigation_programs),
            )
            return

        await asyncio.wait_for(
            interaction.edit_original_response(
                content=faculty_menu_content(
                    navigation_programs, selected_university
                ),
                embeds=[],
                view=FacultyView(
                    interaction.user.id,
                    navigation_programs,
                    selected_university,
                ),
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
                        "❌ ระบบตอบกลับช้ากว่าปกติ กรุณาลองใหม่อีกครั้ง "
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
                    content="❌ โหลดเมนูค้นหาไม่สำเร็จ กรุณาลองใหม่อีกครั้ง",
                    embeds=[],
                    view=None,
                ),
                timeout=5,
            )
        except Exception:
            logger.exception("could not replace failed interaction response")


if __name__ == "__main__":
    bot.run(discord_token)
