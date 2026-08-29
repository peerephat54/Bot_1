"""Question-led summaries from existing admission facts, not generated advice."""
import math
import re

UNKNOWN = "ยังไม่ระบุในข้อมูล ต้องตรวจประกาศ"
LABELS = {
    "max_pages": "จำนวนหน้าสูงสุด", "max_file_mb": "ขนาดไฟล์สูงสุด (MB)",
    "language": "ภาษา", "video_max_minutes": "ความยาววิดีโอสูงสุด (นาที)",
    "studying_semesters": "กำลังเรียน: จำนวนภาคเรียน", "graduated_semesters": "จบแล้ว: จำนวนภาคเรียน",
    "semesters": "จำนวนภาคเรียน", "graduated": "ผู้จบแล้ว",
    "name": "หัวข้อ", "method": "วิธีคัดเลือก", "weight_percent": "สัดส่วน",
    "minimum_subject_credits": "หน่วยกิตขั้นต่ำรายกลุ่มวิชา",
    "interview_required": "มีสอบสัมภาษณ์", "written_exam_required": "มีสอบข้อเขียน",
    "program_code_in_announcement": "รหัสในประกาศ", "selection_limit_within_project": "เลือกได้สูงสุด",
}


def readable(value):
    if value is None or value == "" or value == [] or value == {}:
        return ""
    if isinstance(value, dict):
        return "; ".join(f"{LABELS.get(k, k)}: {readable(v)}" for k, v in value.items() if readable(v))
    if isinstance(value, (list, tuple)):
        return "; ".join(readable(item) for item in value if readable(item))
    if isinstance(value, bool):
        return "ใช่" if value else "ไม่"
    return str(value)


def excerpt(value, limit=300):
    text = readable(value)
    if not text:
        return UNKNOWN
    if len(text) <= limit:
        return text
    suffix = "… (สรุปบางส่วน ดูรายละเอียด)"
    return text[:limit - len(suffix)].rstrip() + suffix


def money(value):
    if value is None:
        return "ยังไม่ระบุ"
    try:
        amount = float(value)
        if not math.isfinite(amount) or amount < 0:
            return "ยังไม่ระบุ"
        return f"{amount:,.0f} บาท"
    except (TypeError, ValueError):
        return readable(value)


def application_question_fields(project=None, preview=None, detail_hint="ปุ่มคุณสมบัติ / Portfolio"):
    project, preview = project or {}, preview or {}
    criteria = project.get("selected_criteria") or {}
    facts = preview if preview else project
    historical = bool(preview)
    fields = []

    eligibility = excerpt(criteria.get("applicant_qualifications") or preview.get("qualification_summary"), 350)
    if criteria.get("additional_requirements"):
        eligibility += "\n**เงื่อนไขเฉพาะ:** " + excerpt(criteria["additional_requirements"], 180)
    fields.append(("ใครสมัครได้?", eligibility))

    minimum = criteria.get("min_gpax") if project else preview.get("min_gpax")
    gpax = preview.get("gpax_summary")
    if gpax:
        gpax = re.sub(r"^GPAX\s*:?\s*", "", str(gpax), flags=re.IGNORECASE)
    elif minimum is not None:
        gpax = f"{float(minimum):.2f} ขึ้นไป"
    else:
        gpax = "ยังสรุปขั้นต่ำไม่ได้ ต้องดูเกณฑ์ตามวุฒิ"
    requirements = criteria.get("gpax_requirements") or {}
    semester_keys = {"semesters", "studying_semesters", "graduated_semesters", "graduated"}
    if isinstance(requirements, dict) and set(requirements) - semester_keys:
        gpax += " (ใช้ต่างกันตามวุฒิ/ประเภทผู้สมัคร)"
    scores = [f"**GPAX:** {excerpt(gpax, 180)}"]
    if criteria.get("gpax_requirements"):
        scores.append("**เงื่อนไขเกรด:** " + excerpt(criteria["gpax_requirements"], 160))
    if criteria.get("subject_gpax"):
        scores.append("**เกรดรายวิชา:** " + excerpt(criteria["subject_gpax"], 160))
    english = criteria.get("min_english_score") or preview.get("english_score_summary")
    standardized = criteria.get("standardized_scores")
    if english:
        scores.append("**ภาษาอังกฤษ:** " + excerpt(english, 150))
    if standardized:
        scores.append("**คะแนนสอบ:** " + excerpt(standardized, 150))
    if not english and not standardized:
        scores.append("**คะแนนสอบอื่น:** ยังไม่ระบุครบ ไม่ได้แปลว่าไม่ต้องใช้")
    fields.append(("ใช้เกรดและคะแนนอะไร?", "\n".join(scores)))

    portfolio = excerpt(criteria.get("portfolio_requirements") or preview.get("portfolio_summary"), 350)
    if criteria.get("portfolio_details"):
        portfolio += "\n**รูปแบบไฟล์ / จำนวนหน้า:** " + excerpt(criteria["portfolio_details"], 230)
    achievements = criteria.get("accepted_achievements") or preview.get("accepted_achievements")
    if achievements:
        portfolio += "\n**ผลงานที่ส่งได้ในรอบนี้:** " + excerpt(achievements, 220)
    elif criteria.get("portfolio_requirements") or preview.get("portfolio_summary"):
        portfolio += "\n**ผลงานที่ส่งได้ในรอบนี้:** ประกาศที่ตรวจยังไม่ได้แจกแจงประเภทผลงานเพิ่มเติม ให้ยึดเงื่อนไขพอร์ตด้านบนและรายการในประกาศ"
    else:
        portfolio += "\nยังสรุปไม่ได้ว่าต้องมีผลงานหรือรางวัลระดับใด"
    fields.append(("พอร์ตต้องมีอะไรบ้าง?", portfolio))

    documents = criteria.get("required_documents") or preview.get("required_documents")
    if isinstance(documents, list):
        document_text = "\n".join(f"• {readable(d)}" for d in documents[:4])
        if len(documents) > 4:
            document_text += f"\nอีก {len(documents) - 4} รายการ — ดู {detail_hint}"
    else:
        document_text = readable(documents)
    fields.append(("ต้องใช้เอกสารอะไร?", excerpt(document_text, 380)))

    selection = criteria.get("selection_methods") or preview.get("selection_summary") or criteria.get("criteria_summary")
    selection_text = excerpt(selection, 320)
    if criteria.get("criteria_summary") and criteria["criteria_summary"] != selection:
        selection_text += "\n**เกณฑ์หลัก:** " + excerpt(criteria["criteria_summary"], 270)
    fields.append(("คัดเลือกอย่างไร / สัมภาษณ์ไหม?", selection_text))

    slots = facts.get("slots_available")
    slots_text = f"{slots} คน" if slots is not None else "ยังไม่ระบุจำนวนรับเฉพาะโครงการ/สาขา"
    cost_lines = [
        f"**จำนวนรับ:** {slots_text}",
        f"**ค่าสมัคร:** {money(facts.get('application_fee'))}",
        f"**ค่าเรียนต่อภาค:** {money(facts.get('tuition_fee_per_semester'))}",
    ]
    if project.get("program_notes"):
        cost_lines.append("**หมายเหตุ:** " + excerpt(project["program_notes"], 220))
    if project.get("selection_order_limit") is not None:
        cost_lines.append(f"เลือกอันดับสาขาได้สูงสุด {project['selection_order_limit']} อันดับ")
    fields.append(("รับกี่คน / ต้องจ่ายเท่าไร?" + (" (ปีก่อน)" if historical else ""), "\n".join(cost_lines)))

    source = facts.get("source_url")
    application_url = facts.get("application_url")
    if historical:
        next_step = "ใช้เตรียมพอร์ตและเอกสารก่อน ต้องตรวจประกาศปีใหม่ก่อนสมัคร"
    else:
        next_step = "ตรวจคุณสมบัติและวันปิดรับ → เตรียมไฟล์ → ทำตามวิธีสมัครในประกาศ"
    if application_url and not historical:
        next_step += f"\n[เปิดช่องทางสมัครที่ระบุ]({application_url})"
    elif not historical:
        next_step += "\nยังไม่มีลิงก์สมัครโดยตรงในข้อมูล ให้ดูช่องทางในประกาศ"
    if source:
        label = "อ่านประกาศปีก่อน" if historical else "อ่านประกาศและวิธีสมัคร"
        next_step += f"\n[{label}]({source})"
    else:
        next_step += "\nยังไม่มีประกาศต้นทางของโครงการในข้อมูลนี้"
    fields.append(("สมัครที่ไหน / ทำอะไรต่อ?", next_step))
    return fields
