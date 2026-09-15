"""Fast, deterministic, source-backed answers for natural-language TCAS questions."""

from datetime import date
import json
import re
from functools import lru_cache
from pathlib import Path

from admission_dates import event_date, portfolio_dates
from data_quality import SOURCE_FRESHNESS_DAYS, classify_project_source_status
from user_features import application_close_event


TOPICS = {
    "application_status": (
        "ยื่นได้ไหม", "ยื่นได้มั้ย", "สมัครได้ไหม", "สมัครได้มั้ย",
        "ยังเปิด", "เปิดรับ", "ส่งพอร์ต", "ยื่นพอร์ต", "สมัครทัน",
    ),
    "deadline": ("หมดเขต", "ปิดรับ", "รับสมัคร", "วันสมัคร", "ถึงวันไหน"),
    "portfolio": ("portfolio", "พอร์ต", "ผลงาน", "รางวัล"),
    "documents": ("เอกสาร", "หลักฐาน", "เตรียมอะไร", "ต้องส่งอะไร"),
    "gpax": ("gpax", "เกรด", "เกรดเฉลี่ย", "คะแนนเฉลี่ย"),
    "cost": ("ค่าเทอม", "ค่าเรียน", "ค่าสมัคร", "ค่าใช้จ่าย"),
    "interview": ("สัมภาษณ์", "สอบสัมภาษณ์"),
    "qualification": ("คุณสมบัติ", "สมัครได้", "ใครสมัคร", "วุฒิ", "แผนการเรียน"),
    "curriculum": ("เรียนเกี่ยวกับ", "หลักสูตร", "เรียนอะไร", "เน้นอะไร", "ซอฟต์แวร์", "ฮาร์ดแวร์"),
    "source": ("แหล่งข้อมูล", "อ้างอิง", "ยืนยันแล้ว", "ตรวจล่าสุด", "มาจากไหน"),
}

UNIVERSITY_ALIASES = {
    "kmitl": "KMITL", "ลาดกระบัง": "KMITL", "สจล": "KMITL",
    "kmutt": "KMUTT", "บางมด": "KMUTT", "มจธ": "KMUTT", "มจธ.": "KMUTT",
    "ku": "KU", "เกษตร": "KU", "มก": "KU", "มก.": "KU",
    "cmu": "CMU", "มช": "CMU", "มช.": "CMU", "เชียงใหม่": "CMU",
    "tu": "TU", "ธรรมศาสตร์": "TU", "มธ": "TU", "มธ.": "TU",
    "cu": "CU", "จุฬา": "CU", "จุฬาลงกรณ์": "CU",
    "kmutnb": "KMUTNB", "มจพ": "KMUTNB", "มจพ.": "KMUTNB",
    "mu": "MU", "มหิดล": "MU",
    "swu": "SWU", "มศว": "SWU", "มศว.": "SWU", "ศรีนครินทรวิโรฒ": "SWU",
}

STOPWORDS = {
    "ของ", "ที่", "แล้ว", "ไหม", "มั้ย", "ได้", "หรือ", "ช่วย", "หน่อย",
    "อะไร", "เท่าไร", "เท่าไหร่", "ยัง", "แบบ", "ไหน", "ครับ", "ค่ะ",
}

CATALOG_PATH = Path(__file__).with_name("datasets") / "tcas70_admissions.json"
MAX_ASK_RESULTS = 3
MAX_ASK_EXTRA_TOPICS = 2
MAX_ASK_MESSAGE_LENGTH = 1900
TOPIC_LABELS = {
    "application_status": "สถานะการสมัคร",
    "deadline": "กำหนดการ",
    "portfolio": "Portfolio",
    "documents": "เอกสาร",
    "gpax": "GPAX",
    "cost": "ค่าใช้จ่าย",
    "interview": "สัมภาษณ์",
    "qualification": "คุณสมบัติ",
    "curriculum": "หลักสูตร",
    "source": "แหล่งข้อมูล",
}


def _fold(text):
    return re.sub(r"\s+", "", str(text or "").casefold())


def classify_question(text):
    """Return the primary intent, keeping the original public API."""
    folded = _fold(text)
    return next(
        (topic for topic, words in TOPICS.items() if any(_fold(word) in folded for word in words)),
        None,
    )


def question_topics(text):
    """Return all matching intents in priority order for mixed questions."""
    folded = _fold(text)
    return [
        topic for topic, words in TOPICS.items()
        if any(_fold(word) in folded for word in words)
    ]


def extract_round_filter(text):
    """Normalize 1-1, 1/1, and 1.1 into the dataset's 1.1 form."""
    folded = _fold(text)
    match = re.search(r"(?<!\d)1\s*[-/.]\s*([12])(?!\d)", folded)
    return f"1.{match.group(1)}" if match else None


def _query_terms(query):
    folded = _fold(query)
    terms = []
    for alias, canonical in sorted(UNIVERSITY_ALIASES.items(), key=lambda item: -len(item[0])):
        if _fold(alias) in folded and canonical.casefold() not in terms:
            terms.append(canonical.casefold())
    tokens = re.findall(r"[a-z0-9]+|[ก-๙]+", str(query or "").casefold())
    for token in tokens:
        if len(token) >= 3 and token not in STOPWORDS and token not in terms:
            terms.append(token)
    return terms


def find_programs(query, programs):
    """Rank programs by university aliases and meaningful query terms."""
    terms = _query_terms(query)
    scored = []
    for program in programs:
        haystack = _fold(" ".join(
            str(program.get(key) or "")
            for key in ("university_short_name", "university_name", "faculty_name", "major_name")
        ))
        score = sum(term in haystack for term in terms)
        if score:
            scored.append((score, program))
    return [program for _, program in sorted(scored, key=lambda item: (-item[0], str(item[1].get("code") or "")))]


def _project_round(project):
    variant = str(project.get("round_variant") or "").strip()
    normalized = re.sub(r"\s*[-/]\s*", ".", variant)
    if normalized in {"1.1", "1.2"}:
        return f"รอบ {normalized}"
    label = str(project.get("round_label") or "Portfolio").strip()
    return label if label.startswith("รอบ") else f"รอบ {label}"


def _project_name(project):
    name = str(project.get("name") or "โครงการ").strip()
    round_label = _project_round(project)
    variant = str(project.get("round_variant") or "").strip()
    normalized = re.sub(r"\s*[-/]\s*", ".", variant)
    if normalized in {"1.1", "1.2"}:
        token = rf"(?<!\d)1\s*[./-]\s*{normalized[-1]}(?!\d)"
        if re.search(token, name):
            return name
    elif variant and variant.casefold() in name.casefold():
        return name
    return f"{name} • {round_label}"


def _compact_value(value, limit=480):
    """Make a stored fact short enough for a quick Discord answer."""
    if value in (None, "", [], {}):
        return "ยังไม่ระบุ ต้องดูประกาศต้นทาง"
    if isinstance(value, dict):
        value = " • ".join(
            f"{key}: {item}" for key, item in value.items() if item not in (None, "", [], {})
        )
    elif isinstance(value, (list, tuple)):
        value = " • ".join(str(item) for item in value if item not in (None, ""))
    text = re.sub(r"\s+", " ", str(value)).strip()
    if len(text) <= limit:
        return text
    return text[: limit - 1].rstrip() + "…"


def _source_status(project):
    status = project.get("publication_status")
    verification_status = classify_project_source_status(project)
    if verification_status == "confirmed":
        return "✅ ยืนยันแล้ว"
    if verification_status == "needs_recheck":
        return f"🔄 ควรตรวจซ้ำ (เกิน {SOURCE_FRESHNESS_DAYS} วัน)"
    if status == "draft_waiting_official":
        return "🟡 รอประกาศฉบับสมบูรณ์"
    if project.get("reference_academic_year"):
        return f"📘 ข้อมูลอ้างอิง TCAS{str(project['reference_academic_year'])[-2:]}"
    if status in {"official", "closed"}:
        return "🟡 รอตรวจ (ยังไม่มีวันที่ตรวจล่าสุด)"
    return "🔎 ต้องตรวจเพิ่ม"


def _next_step(project, topics):
    """Give one safe next action without claiming eligibility."""
    verification_status = classify_project_source_status(project)
    if verification_status != "confirmed":
        return "ต่อไป: เปิดประกาศทางการและตรวจข้อมูลล่าสุดก่อนสมัคร"
    if any(topic in topics for topic in ("application_status", "deadline")):
        return "ต่อไป: ตรวจคุณสมบัติและเอกสารในประกาศเต็ม แล้วค่อยกดสมัคร"
    if any(topic in topics for topic in ("documents", "portfolio", "gpax", "qualification")):
        return "ต่อไป: เตรียมหลักฐานตามรายการ แล้วตรวจประกาศเต็มอีกครั้ง"
    return "ต่อไป: ใช้ /tcas_search เพื่อดูเกณฑ์และ Checklist ของโครงการ"


def _load_projects(program, project_loader):
    local_projects = _load_local_projects(program)
    if local_projects:
        return local_projects
    loaded = project_loader(program.get("code")) or []
    if isinstance(loaded, dict):
        return loaded.get("projects") or []
    return loaded or []


@lru_cache(maxsize=1)
def _read_catalog():
    try:
        return json.loads(CATALOG_PATH.read_text(encoding="utf-8"))
    except (OSError, TypeError, json.JSONDecodeError):
        return {}


def _load_local_projects(program):
    """Load joined project facts locally so common questions avoid network I/O."""
    catalog = _read_catalog()
    program_code = str(program.get("code") or "")
    project_codes = [
        row.get("project_code")
        for row in catalog.get("project_programs") or []
        if row.get("program_code") == program_code and row.get("project_code")
    ]
    if not project_codes:
        return []
    projects = {
        item.get("code"): dict(item)
        for item in catalog.get("projects") or []
        if item.get("code") in project_codes
        and item.get("publication_status") == "official"
        and item.get("is_visible", True)
    }
    criteria_by_project = {}
    for item in catalog.get("criteria") or []:
        if item.get("project_code") in projects:
            criteria_by_project.setdefault(item["project_code"], item)
    timeline_by_project = {}
    for item in catalog.get("timeline") or []:
        if item.get("project_code") in projects:
            timeline_by_project.setdefault(item["project_code"], []).append(item)
    links = {
        row.get("project_code"): row
        for row in catalog.get("project_programs") or []
        if row.get("program_code") == program_code
    }
    result = []
    for code in project_codes:
        project = projects.get(code)
        if not project:
            continue
        project["selected_criteria"] = dict(criteria_by_project.get(code) or {})
        project["admission_timeline"] = timeline_by_project.get(code) or []
        project.update({
            "slots_available": links.get(code, {}).get("slots_available"),
            "program_notes": links.get(code, {}).get("program_notes"),
        })
        result.append(project)
    return result


def _round_matches(project, round_filter):
    if not round_filter:
        return True
    variant = re.sub(r"\s*[-/]\s*", ".", str(project.get("round_variant") or ""))
    return variant == round_filter


def _application_status(project):
    event = application_close_event(project)
    if not event:
        return "ยังไม่ระบุว่ารับสมัครถึงวันไหน"
    end_value = event.get("end_on") or event.get("start_on")
    try:
        end = date.fromisoformat(str(end_value)[:10])
    except (TypeError, ValueError):
        return f"กำหนดปิดรับ: {event_date(event, 'end_on')}"
    today = date.today()
    deadline = event_date(event, "end_on")
    if end < today:
        return f"ปิดรับสมัครแล้ว (ปิดรับถึง {deadline})"
    start_value = event.get("start_on")
    try:
        start = date.fromisoformat(str(start_value)[:10])
    except (TypeError, ValueError):
        start = today
    if start > today:
        return f"ยังไม่เปิดรับสมัคร (เปิดรับ {event_date(event, 'start_on')} ถึง {deadline})"
    return f"กำลังเปิดรับสมัคร (ปิดรับถึง {deadline})"


def _value_for_topic(project, topic):
    criteria = project.get("selected_criteria") or {}
    if topic == "application_status":
        return _application_status(project)
    if topic == "deadline":
        return portfolio_dates(project.get("admission_timeline"))
    if topic == "portfolio":
        return _compact_value(
            criteria.get("accepted_achievements")
            or criteria.get("portfolio_requirements")
            or "ยังไม่ระบุประเภทผลงาน ต้องดูประกาศต้นทาง"
        )
    if topic == "documents":
        return _compact_value(
            criteria.get("required_documents")
            or "ยังไม่ระบุรายการเอกสาร ต้องดูประกาศต้นทาง"
        )
    if topic == "gpax":
        value = criteria.get("min_gpax")
        return f"GPAX ขั้นต่ำ {float(value):.2f}" if value is not None else "ยังไม่ระบุขั้นต่ำที่เทียบได้"
    if topic == "cost":
        fee = project.get("application_fee")
        tuition = project.get("tuition_fee_per_semester")
        return f"ค่าสมัคร {fee if fee is not None else 'ยังไม่ระบุ'} • ค่าเรียนต่อภาค {tuition if tuition is not None else 'ยังไม่ระบุ'}"
    if topic == "interview":
        return _compact_value(criteria.get("selection_methods") or "ยังไม่ระบุวิธีสัมภาษณ์")
    if topic == "qualification":
        return _compact_value(
            criteria.get("applicant_qualifications")
            or "ยังไม่ระบุคุณสมบัติครบถ้วน ต้องดูประกาศต้นทาง"
        )
    if topic == "curriculum":
        return _compact_value(
            project.get("program_summary") or "ดูรายละเอียดหลักสูตรจากหน้าหลักสูตรทางการ"
        )
    if topic == "source":
        return (
            f"สถานะ {_source_status(project)} • "
            f"ตรวจล่าสุด {project.get('source_checked_at') or 'ไม่ระบุ'}"
        )
    return "ยังไม่พบข้อมูลหัวข้อนี้ในชุดข้อมูล"


def answer_question(query, programs, project_loader):
    """Answer from stored facts; never invent missing criteria or dates."""
    topics = question_topics(query)
    primary_topic = topics[0] if topics else None
    matches = find_programs(query, programs)
    if not primary_topic:
        return (
            "ผมตอบได้จากประกาศที่ตรวจแล้ว เช่น สมัครได้ไหม รอบ 1.1/1.2 หมดเขตวันไหน "
            "ใช้ GPAX เท่าไร ต้องส่ง Portfolio/เอกสารอะไร ค่าเรียน และสัมภาษณ์ไหม\n"
            "ลองระบุชื่อมหาวิทยาลัยหรือสาขา เช่น `KU วิทยาการคอมพิวเตอร์ รอบ 1-1 หมดเขตวันไหน`",
            matches[:5],
        )
    if not matches:
        return (
            "ยังจับคู่มหาวิทยาลัยหรือสาขาไม่ได้ ลองใช้ชื่อหรือตัวย่อ เช่น `KU`, `มจธ.`, `KMITL` "
            "พร้อมระบุรอบหรือสาขาที่ต้องการ",
            [],
        )

    round_filter = extract_round_filter(query)
    rows = []
    for program in matches[:8]:
        projects = [p for p in _load_projects(program, project_loader) if _round_matches(p, round_filter)]
        for project in projects:
            rows.append((program, project))
        if len(rows) >= 8:
            break
    if not rows:
        round_text = f" {round_filter}" if round_filter else ""
        return f"พบหลักสูตร แต่ยังไม่พบโครงการ{round_text}ในข้อมูลที่ตรวจแล้ว", matches[:5]

    first_program = rows[0][0]
    heading = f"**{first_program.get('university_short_name')} • {first_program.get('major_name') or first_program.get('faculty_name')}**"
    if len({program.get("code") for program, _ in rows}) > 1:
        heading = "**ผลค้นหาโครงการที่ตรงกับคำถาม**"
    lines = [heading]
    if round_filter:
        lines.append(f"กรองเฉพาะ **รอบ {round_filter}**")
    shown_rows = rows[:MAX_ASK_RESULTS]
    answer_rows = []
    for program, project in shown_rows:
        value = _compact_value(_value_for_topic(project, primary_topic))
        extra_topics = [topic for topic in topics[1:] if topic != primary_topic][:MAX_ASK_EXTRA_TOPICS]
        extra_lines = []
        for topic in extra_topics:
            extra_value = _compact_value(_value_for_topic(project, topic), 220)
            extra_lines.append(f"{TOPIC_LABELS.get(topic, 'ข้อมูลเพิ่มเติม')}: {extra_value}")
        extra_text = "เพิ่มเติม: " + " • ".join(extra_lines) + "\n" if extra_lines else ""
        source = project.get("source_url")
        program_name = program.get("major_name") or program.get("faculty_name") or "ไม่ระบุสาขา"
        status_text = (
            f"สถานะข้อมูล: {_source_status(project)} • "
            f"ตรวจล่าสุด: {project.get('source_checked_at') or 'ไม่ระบุ'}"
        )
        next_step = _next_step(project, topics)
        answer_rows.append(
            f"\n**{program.get('university_short_name')} • {program_name}**\n"
            f"**{_project_name(project)}**\n"
            f"{TOPIC_LABELS.get(primary_topic, 'คำตอบ')}: {value}\n"
            + extra_text
            + status_text
            + f"\n{next_step}"
            + (f"\n[เปิดประกาศทางการ]({source})" if source else "\nยังไม่มีลิงก์ประกาศทางการในข้อมูล")
        )
    footer = []
    if len(rows) > MAX_ASK_RESULTS:
        footer.append(f"ยังมีอีก {len(rows) - MAX_ASK_RESULTS} รายการ กด `/tcas_search` เพื่อดูทั้งหมด")
    if len(topics) > 1 and primary_topic != "application_status":
        footer.append("คำถามนี้มีหลายประเด็น; กดดูรายละเอียดโครงการเพื่อดูทุกเงื่อนไข")
    footer.append("ข้อมูลนี้อ้างอิงชุดข้อมูลที่ตรวจแล้ว ไม่ใช่การรับรองสิทธิ์สมัคร ควรเปิดประกาศต้นทางก่อนยื่น")

    omitted = 0
    while answer_rows and len("\n".join(lines + answer_rows + footer)) > MAX_ASK_MESSAGE_LENGTH:
        answer_rows.pop()
        omitted += 1
    if omitted:
        footer.insert(0, f"ตัดผลลัพธ์ท้าย {omitted} รายการเพื่อให้ข้อความอ่านง่าย กด `/tcas_search` เพื่อดูทั้งหมด")
    answer = "\n".join(lines + answer_rows + footer)
    if len(answer) > MAX_ASK_MESSAGE_LENGTH:
        answer = answer[:MAX_ASK_MESSAGE_LENGTH - 1].rstrip() + "…"
    return answer, [program for program, _ in rows]


def answer_question_from_candidates(query, programs, candidates):
    """Answer using one preloaded candidate set instead of per-program I/O."""
    projects_by_program = _index_candidate_projects(candidates)

    return answer_question(
        query,
        programs,
        lambda program_code: projects_by_program.get(program_code, []),
    )


def _index_candidate_projects(candidates):
    projects_by_program = {}
    seen_by_program = {}
    for candidate in candidates or []:
        program = candidate.get("program") or {}
        project = candidate.get("project") or {}
        program_code = program.get("code")
        project_code = project.get("code")
        if not program_code or not project:
            continue
        seen = seen_by_program.setdefault(program_code, set())
        if project_code and project_code in seen:
            continue
        if project_code:
            seen.add(project_code)
        projects_by_program.setdefault(program_code, []).append(project)
    return projects_by_program


def answer_question_with_candidate_loader(query, programs, candidates_loader):
    """Load one shared candidate snapshot only if local facts cannot answer."""
    projects_by_program = None

    def load_for_program(program_code):
        nonlocal projects_by_program
        if projects_by_program is None:
            projects_by_program = _index_candidate_projects(candidates_loader())
        return projects_by_program.get(program_code, [])

    return answer_question(
        query,
        programs,
        load_for_program,
    )
