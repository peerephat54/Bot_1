"""Deterministic admission checks with explicit evidence states.

The engine never treats missing applicant data as a pass or a fail. It keeps
the distinction between a rule that passes, a rule that blocks the applicant,
a rule that needs manual checking, and a fact that is not available in the
audited dataset.
"""
import json
import math
import re


STATUS_PASS = "pass"
STATUS_FAIL = "fail"
STATUS_REVIEW = "review"
STATUS_NO_DATA = "no_data"

STATUS_LABELS = {
    STATUS_PASS: "ผ่าน",
    STATUS_FAIL: "ไม่ผ่าน",
    STATUS_REVIEW: "ต้องตรวจเพิ่ม",
    STATUS_NO_DATA: "ไม่มีข้อมูล",
}

SEMESTER_KEYS = {"semesters", "studying_semesters", "graduated_semesters", "graduated"}

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
    ("KU", "kamphaeng-saen"): "nakhon-pathom",
    ("KU", "sriracha"): "chonburi",
    ("KU", "sakon-nakhon"): "sakon-nakhon",
    ("MU", "salaya"): "nakhon-pathom",
    ("CMU", "main"): "chiang-mai",
    ("SWU", "prasan-mit"): "bangkok",
    ("SWU", "ongkharak"): "nakhon-nayok",
    ("TU", "rangsit"): "pathum-thani",
}


def relation(value):
    return (value[0] if value else {}) if isinstance(value, list) else (value or {})


def _number(value):
    try:
        number = float(value)
    except (TypeError, ValueError):
        return None
    return number if math.isfinite(number) else None


def _json_text(value):
    return json.dumps(value, ensure_ascii=False).casefold()


def _requested_location_keys(value):
    text = str(value or "").casefold()
    if any(term in text for term in ("ไม่จำกัด", "ได้ทุก", "ทั่วประเทศ", "any")):
        return set()
    aliases = {
        "bangkok": ("กรุงเทพ", "กทม", "bangkok"),
        "chumphon": ("ชุมพร", "chumphon"),
        "prachinburi": ("ปราจีนบุรี", "prachin"),
        "ratchaburi": ("ราชบุรี", "ratchaburi"),
        "chonburi": ("ชลบุรี", "chonburi", "ศรีราชา", "sriracha"),
        "sakon-nakhon": ("สกลนคร", "sakon"),
        "nakhon-pathom": ("นครปฐม", "ศาลายา", "กำแพงแสน", "kamphaeng-saen", "salaya"),
        "chiang-mai": ("เชียงใหม่", "chiang mai"),
        "nakhon-nayok": ("นครนายก", "องครักษ์", "ongkharak"),
        "pathum-thani": ("ปทุมธานี", "รังสิต", "rangsit"),
    }
    keys = set()
    for key, terms in aliases.items():
        if any(term in text for term in terms):
            keys.add(key)
    if "ปริมณฑล" in text:
        keys.update(("bangkok", "nakhon-pathom", "pathum-thani"))
    return keys


def _language_matches(preference, program_language):
    if preference in (None, "any"):
        return None
    if not program_language:
        return None
    language = str(program_language).casefold()
    is_english = language.strip() in {"อังกฤษ", "english"} or any(
        term in language for term in ("นานาชาติ", "สองภาษา", "ไทยและอังกฤษ", "bilingual")
    )
    is_thai = language.strip() in {"ไทย", "thai"} or any(
        term in language for term in ("ไทยและอังกฤษ", "สองภาษา", "bilingual")
    )
    return is_english if preference == "english" else is_thai


def _has_subject_requirement(criteria):
    additional = criteria.get("additional_requirements") or {}
    if isinstance(additional, dict) and any(
        "minimum_subject" in str(key) or "หน่วยกิต" in str(key)
        for key in additional
    ):
        return True
    return bool(criteria.get("subject_gpax"))


def _has_score_requirement(criteria):
    if criteria.get("min_english_score") or criteria.get("standardized_scores"):
        return True
    additional = criteria.get("additional_requirements") or {}
    if not isinstance(additional, dict):
        return False
    return any(
        any(term in str(key).casefold() for term in ("tgat", "tpat", "score", "คะแนน"))
        and "optional" not in str(key).casefold()
        for key in additional
    )


def _subject_check(profile, criteria):
    if not _has_subject_requirement(criteria):
        return STATUS_NO_DATA, "ประกาศไม่พบหน่วยกิตหรือเกรดรายวิชาที่ใช้ตรวจแยก"

    supplied = profile.get("subject_gpax") or profile.get("subject_credits")
    if not isinstance(supplied, dict):
        return STATUS_REVIEW, "ประกาศมีเงื่อนไขหน่วยกิต/เกรดรายวิชา แต่ยังไม่ได้กรอกข้อมูลรายวิชา"

    required = {}
    subject_gpax = criteria.get("subject_gpax")
    if isinstance(subject_gpax, dict):
        required.update(subject_gpax)
    additional = criteria.get("additional_requirements") or {}
    if isinstance(additional, dict):
        for key, value in additional.items():
            if "minimum_subject" in str(key) and isinstance(value, dict):
                required.update(value)
    if not required:
        return STATUS_REVIEW, "ต้องเทียบหน่วยกิต/เกรดรายวิชากับรายละเอียดเฉพาะในประกาศ"

    missing = []
    below = []
    for subject, minimum in required.items():
        actual = _number(supplied.get(subject))
        threshold = _number(minimum)
        if actual is None or threshold is None:
            missing.append(str(subject))
        elif actual < threshold:
            below.append(f"{subject} ต่ำกว่า {threshold:g}")
    if below:
        return STATUS_FAIL, "ไม่ผ่านหน่วยกิต/เกรดรายวิชา: " + ", ".join(below)
    if missing:
        return STATUS_REVIEW, "ยังไม่มีข้อมูลรายวิชา: " + ", ".join(missing)
    return STATUS_PASS, "หน่วยกิต/เกรดรายวิชาผ่านเกณฑ์ที่กรอกได้"


def _add_check(checks, key, label, status, reason):
    checks.append({"key": key, "label": label, "status": status, "reason": reason})


def evaluate_application_rules(profile, program, project):
    """Evaluate machine-checkable facts and expose every unresolved rule."""
    profile = profile or {}
    program = program or {}
    project = project or {}
    criteria = project.get("selected_criteria") or {}
    checks = []
    score = 0

    gpax = _number(profile.get("gpax"))
    minimum = _number(criteria.get("min_gpax"))
    requirements = criteria.get("gpax_requirements")
    conditional = isinstance(requirements, dict) and bool(set(requirements) - SEMESTER_KEYS)
    if gpax is None or minimum is None:
        _add_check(checks, "gpax", "GPAX", STATUS_NO_DATA, "ยังไม่มีข้อมูล GPAX หรือขั้นต่ำที่ใช้เทียบได้")
    elif conditional:
        _add_check(
            checks,
            "gpax",
            "GPAX",
            STATUS_REVIEW,
            f"มีขั้นต่ำ {minimum:.2f} แต่เกณฑ์แยกตามประเภทผู้สมัคร ต้องตรวจตามวุฒิ",
        )
    elif gpax < minimum:
        reason = f"GPAX {gpax:.2f} ต่ำกว่าขั้นต่ำ {minimum:.2f}"
        if criteria.get("gpax_role"):
            reason += f" ({criteria['gpax_role']})"
        _add_check(checks, "gpax", "GPAX", STATUS_FAIL, reason)
    else:
        reason = f"GPAX {gpax:.2f} ผ่านขั้นต่ำ {minimum:.2f}"
        if criteria.get("gpax_role"):
            reason += f" ({criteria['gpax_role']})"
        _add_check(checks, "gpax", "GPAX", STATUS_PASS, reason)
        score += 6 + min(3, int((gpax - minimum) * 4))

    qualifications = criteria.get("applicant_qualifications")
    if qualifications:
        _add_check(
            checks,
            "qualification",
            "วุฒิ/แผนการเรียน",
            STATUS_REVIEW,
            "มีเงื่อนไขวุฒิหรือแผนการเรียน ต้องเทียบกับข้อมูลผู้สมัครในประกาศ",
        )
    else:
        _add_check(checks, "qualification", "วุฒิ/แผนการเรียน", STATUS_NO_DATA, "ประกาศยังไม่มีข้อมูลวุฒิ/แผนการเรียนให้ตรวจ")

    subject_status, subject_reason = _subject_check(profile, criteria)
    _add_check(checks, "subjects", "หน่วยกิต/เกรดรายวิชา", subject_status, subject_reason)

    if _has_score_requirement(criteria):
        _add_check(checks, "scores", "คะแนนสอบ", STATUS_REVIEW, "มีเงื่อนไขคะแนนสอบหรือภาษาอังกฤษ ต้องตรวจคะแนนจริง")
    else:
        _add_check(checks, "scores", "คะแนนสอบ", STATUS_NO_DATA, "ยังไม่พบเงื่อนไขคะแนนสอบเพิ่มเติมในข้อมูลที่ตรวจ")

    if criteria.get("portfolio_requirements") or criteria.get("portfolio_details") or criteria.get("accepted_achievements"):
        _add_check(checks, "portfolio", "Portfolio/ผลงาน", STATUS_REVIEW, "มีเงื่อนไขผลงาน ต้องตรวจว่า Portfolio ของคุณตรงประเภทและรูปแบบ")
    else:
        _add_check(checks, "portfolio", "Portfolio/ผลงาน", STATUS_NO_DATA, "ยังไม่พบรายละเอียดประเภทผลงานในข้อมูลที่ตรวจ")

    if criteria.get("required_documents"):
        _add_check(checks, "documents", "เอกสาร", STATUS_REVIEW, "มีรายการเอกสาร ต้องตรวจความครบถ้วนและรูปแบบไฟล์")
    else:
        _add_check(checks, "documents", "เอกสาร", STATUS_NO_DATA, "ยังไม่พบรายการเอกสารครบถ้วนในข้อมูลที่ตรวจ")

    preference = profile.get("language")
    if preference in (None, "any"):
        _add_check(checks, "language", "ภาษาหลักสูตร", STATUS_NO_DATA, "ยังไม่ได้ระบุว่าต้องการหลักสูตรภาษาไทยหรือนานาชาติ")
    else:
        matched = _language_matches(preference, program.get("language"))
        if matched is None:
            _add_check(checks, "language", "ภาษาหลักสูตร", STATUS_REVIEW, "ยังตรวจภาษาหลักสูตรจากข้อมูลนี้ไม่ได้")
        elif matched:
            _add_check(checks, "language", "ภาษาหลักสูตร", STATUS_PASS, "ภาษาหลักสูตรตรงกับที่เลือก")
            score += 2
        else:
            _add_check(checks, "language", "ภาษาหลักสูตร", STATUS_FAIL, "ภาษาหลักสูตรไม่ตรงกับที่เลือก")

    budget = _number(profile.get("budget"))
    tuition = _number(project.get("tuition_fee_per_semester"))
    if budget is None:
        _add_check(checks, "budget", "ค่าเรียนเทียบงบ", STATUS_NO_DATA, "ยังไม่ได้ระบุงบค่าเรียนต่อภาค")
    elif tuition is None:
        _add_check(checks, "budget", "ค่าเรียนเทียบงบ", STATUS_REVIEW, "มีงบที่ต้องการเทียบ แต่ประกาศไม่ได้ระบุค่าเรียนต่อภาค")
    elif tuition > budget:
        _add_check(checks, "budget", "ค่าเรียนเทียบงบ", STATUS_FAIL, f"ค่าเรียน {tuition:,.0f} บาท/ภาค เกินงบ {budget:,.0f} บาท")
    else:
        _add_check(checks, "budget", "ค่าเรียนเทียบงบ", STATUS_PASS, f"ค่าเรียน {tuition:,.0f} บาท/ภาค อยู่ในงบที่ระบุ")
        score += 2

    requested_locations = _requested_location_keys(profile.get("location_budget"))
    if not requested_locations:
        _add_check(checks, "location", "พื้นที่เรียน", STATUS_NO_DATA, "ยังไม่ได้จำกัดพื้นที่เรียน")
    else:
        university = relation(program.get("universities"))
        campus = relation(program.get("university_campuses"))
        candidate_location = PROGRAM_LOCATION_KEYS.get((university.get("short_name"), campus.get("code")))
        if candidate_location is None:
            _add_check(checks, "location", "พื้นที่เรียน", STATUS_REVIEW, "ยังจับคู่พื้นที่ของวิทยาเขตนี้กับจังหวัดที่เลือกไม่ได้")
        elif candidate_location in requested_locations:
            _add_check(checks, "location", "พื้นที่เรียน", STATUS_PASS, "พื้นที่เรียนตรงกับที่ระบุ")
            score += 3
        else:
            _add_check(checks, "location", "พื้นที่เรียน", STATUS_FAIL, "พื้นที่เรียนไม่ตรงกับจังหวัด/พื้นที่ที่ระบุ")

    statuses = {check["status"] for check in checks}
    if STATUS_FAIL in statuses:
        overall = "ไม่ผ่าน"
    elif STATUS_REVIEW in statuses:
        overall = "ต้องตรวจเพิ่ม"
    elif STATUS_NO_DATA in statuses:
        overall = "ไม่มีข้อมูล"
    else:
        overall = "ผ่าน"
    source_url = project.get("source_url") or (criteria.get("official_announcement_url") if isinstance(criteria, dict) else None)
    checked_at = project.get("source_checked_at")
    for check in checks:
        check["rule_id"] = f"RULE-{str(check.get('key') or 'unknown').upper()}"
        check["source_url"] = source_url
        check["source_checked_at"] = checked_at
    return {
        "status": overall,
        "score": score,
        "checks": checks,
        "reasons": [check["reason"] for check in checks if check["status"] == STATUS_PASS],
        "blockers": [check["reason"] for check in checks if check["status"] == STATUS_FAIL],
        "manual_checks": [check["label"] for check in checks if check["status"] in (STATUS_REVIEW, STATUS_NO_DATA)],
    }


def render_rule_checks(assessment, max_items=None):
    """Render checks as readable text for Discord cards."""
    checks = list((assessment or {}).get("checks") or [])
    if max_items is not None and len(checks) > max_items:
        priority = {STATUS_FAIL: 0, STATUS_REVIEW: 1, STATUS_NO_DATA: 2, STATUS_PASS: 3}
        checks = sorted(enumerate(checks), key=lambda item: (priority.get(item[1].get("status"), 9), item[0]))[:max_items]
        checks = [item[1] for item in checks]
    return "\n".join(
        f"[{STATUS_LABELS.get(check.get('status'), 'ต้องตรวจ')}] {check.get('label', 'เงื่อนไข')}: {check.get('reason', '')}"
        for check in checks
    ) or "ยังไม่มีผลตรวจรายเงื่อนไข"


def render_rule_trace(assessment, max_items=None):
    """Render an auditable trace: rule id, result, reason, and source."""
    checks = list((assessment or {}).get("checks") or [])
    if max_items is not None:
        checks = checks[:max_items]
    lines = []
    for check in checks:
        status = STATUS_LABELS.get(check.get("status"), "ต้องตรวจ")
        source = check.get("source_url")
        source_text = f"[ประกาศต้นทาง]({source})" if source else "ยังไม่มีลิงก์ต้นทาง"
        lines.append(
            f"**{check.get('rule_id', 'RULE-UNKNOWN')} • {status}** {check.get('label', 'เงื่อนไข')}\n"
            f"{check.get('reason', '')}\n{source_text}"
        )
    return "\n\n".join(lines) or "ยังไม่มี Rule Trace"
