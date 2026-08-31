"""Deterministic, source-backed answers for a small natural-language MVP."""

TOPICS = {
    "deadline": ("หมดเขต", "ปิดรับ", "รับสมัคร", "วันสมัคร"),
    "portfolio": ("portfolio", "พอร์ต", "ผลงาน", "รางวัล"),
    "documents": ("เอกสาร", "หลักฐาน", "เตรียมอะไร"),
    "gpax": ("gpax", "เกรด", "เกรดเฉลี่ย"),
    "cost": ("ค่าเทอม", "ค่าเรียน", "ค่าสมัคร"),
    "interview": ("สัมภาษณ์", "สอบสัมภาษณ์"),
}


def classify_question(text):
    folded = str(text or "").casefold()
    return next((topic for topic, words in TOPICS.items() if any(word.casefold() in folded for word in words)), None)


def find_programs(query, programs):
    folded = str(query or "").casefold()
    tokens = [token for token in folded.split() if len(token) >= 3]
    scored = []
    for program in programs:
        haystack = " ".join(str(program.get(key) or "") for key in ("university_short_name", "university_name", "faculty_name", "major_name")).casefold()
        score = sum(token in haystack for token in tokens)
        if score:
            scored.append((score, program))
    return [program for _, program in sorted(scored, key=lambda item: -item[0])]


def answer_question(query, programs, project_loader):
    topic = classify_question(query)
    matches = find_programs(query, programs)
    if not topic:
        return "ตอนนี้ตอบได้เรื่องวันสมัคร พอร์ต เอกสาร GPAX ค่าเรียน และสัมภาษณ์ โดยอิงประกาศที่เก็บไว้เท่านั้น", []
    if not matches:
        return "ยังจับคู่มหาวิทยาลัยหรือสาขาจากคำถามไม่ได้ ลองระบุชื่อ เช่น `KMITL เทคโนโลยีสารสนเทศ หมดเขตวันไหน`", []
    if len(matches) > 1 and matches[0].get("code") == matches[1].get("code"):
        matches = matches[:1]
    program = matches[0]
    loaded = project_loader(program.get("code")) or []
    projects = loaded.get("projects") if isinstance(loaded, dict) else loaded
    projects = projects or []
    if not projects:
        return f"พบหลักสูตร {program.get('major_name') or program.get('faculty_name')} แต่ยังไม่มีประกาศโครงการในข้อมูลที่ตรวจ", [program]
    lines = [f"**{program.get('university_short_name')} • {program.get('major_name') or program.get('faculty_name')}**"]
    for project in projects[:5]:
        criteria = project.get("selected_criteria") or {}
        if topic == "deadline":
            from admission_dates import portfolio_dates
            value = portfolio_dates(project.get("admission_timeline"))
        elif topic == "portfolio":
            value = str(criteria.get("accepted_achievements") or criteria.get("portfolio_requirements") or "ยังไม่ระบุประเภทผลงาน ต้องดูประกาศต้นทาง")
        elif topic == "documents":
            value = str(criteria.get("required_documents") or "ยังไม่ระบุรายการเอกสาร ต้องดูประกาศต้นทาง")
        elif topic == "gpax":
            value = str(criteria.get("min_gpax") or "ยังไม่ระบุขั้นต่ำที่เทียบได้")
        elif topic == "cost":
            value = f"ค่าสมัคร {project.get('application_fee') or 'ยังไม่ระบุ'} • ค่าเรียนต่อภาค {project.get('tuition_fee_per_semester') or 'ยังไม่ระบุ'}"
        else:
            value = str(criteria.get("selection_methods") or "ยังไม่ระบุวิธีสัมภาษณ์")
        source = project.get("source_url")
        lines.append(f"• {project.get('name') or 'โครงการ'}: {value}" + (f"\n  [เปิดประกาศต้นทาง]({source})" if source else ""))
    lines.append("ข้อมูลนี้เป็นคำตอบจากชุดข้อมูลที่ตรวจแล้ว ไม่ใช่การรับรองสิทธิ์สมัคร")
    return "\n".join(lines), [program]
