"""Deterministic GPAX screening; never equate a grade comparison with eligibility."""
import math

FIELDS = {
    "engineering": "วิศวกรรมศาสตร์",
    "science": "วิทยาศาสตร์",
    "it": "เทคโนโลยีสารสนเทศ",
}
SEMESTER_KEYS = {"semesters", "studying_semesters", "graduated_semesters", "graduated"}


def relation(value):
    return (value[0] if value else {}) if isinstance(value, list) else (value or {})


def study_field(program):
    """Use the faculty first; disambiguate mixed faculties by the actual major."""
    faculty = str(program.get("faculty_name") or "")
    major = str(program.get("major_name") or "")
    if "วิทยาศาสตร์" in faculty and "วิศวกรรม" in faculty:
        return "engineering" if "วิศวกรรม" in major else "science"
    if "วิศวกรรม" in faculty:
        return "engineering"
    if "เทคโนโลยีสารสนเทศ" in faculty:
        return "it"
    if "วิทยาศาสตร์" in faculty:
        return "science"
    if "วิศวกรรม" in major:
        return "engineering"
    if any(word in major for word in ("สารสนเทศ", "ดิจิทัล", "เทคโนโลยีมีเดีย", "เกม")):
        return "it"
    if any(word in major for word in ("วิทยาการคอมพิวเตอร์", "วิทยาการข้อมูล", "สถิติ")):
        return "science"
    return None


def assess_gpax(gpax, minimum, *, conditional=False):
    """Only compare numeric thresholds. Unknown/conditional rules stay visible."""
    try:
        threshold = float(minimum) if minimum is not None else None
    except (ValueError, TypeError):
        threshold = None
    if threshold is None or not math.isfinite(threshold) or not 0 <= threshold <= 4:
        return {"status": "unknown", "reason": "ยังไม่มี GPAX ขั้นต่ำที่ใช้เทียบได้ ต้องตรวจประกาศ"}
    if conditional:
        return {
            "status": "unknown",
            "reason": f"มีขั้นต่ำ {threshold:.2f} แต่ใช้ต่างกันตามประเภทผู้สมัคร จึงยังสรุปจากเกรดอย่างเดียวไม่ได้",
        }
    meets = gpax + 1e-9 >= threshold
    return {
        "status": "meets" if meets else "below",
        "reason": f"GPAX ของคุณ {gpax:.2f} {'≥' if meets else '<'} ขั้นต่ำ {threshold:.2f}",
    }


def screening_entries(candidates, catalog, navigation, gpax, field, year=2570):
    """Return all in-scope matches; use labelled older references only as fallback."""
    if field not in FIELDS or not math.isfinite(gpax) or not 0 <= gpax <= 4:
        raise ValueError("invalid screening input")
    allowed = {p["code"] for p in navigation}
    universities = {u["short_name"]: u for u in catalog["universities"]}
    campuses = {(c["university_short_name"], c["code"]): c for c in catalog["campuses"]}
    current_codes = set()
    entries = []
    for candidate in candidates:
        program, project = candidate["program"], candidate["project"]
        if program.get("code") not in allowed:
            continue
        if project.get("academic_year") != year or project.get("publication_status") != "official" or project.get("is_visible") is False:
            continue
        current_codes.add(program["code"])
        if study_field(program) != field:
            continue
        criteria = project.get("selected_criteria") or {}
        requirements = criteria.get("gpax_requirements") or {}
        conditional = not isinstance(requirements, dict) or bool(set(requirements) - SEMESTER_KEYS)
        entries.append({
            "program": program, "project": project, "kind": "current", "year": year,
            "assessment": assess_gpax(gpax, criteria.get("min_gpax"), conditional=conditional),
        })

    for raw in catalog["programs"]:
        if raw["code"] not in allowed or raw["code"] in current_codes or study_field(raw) != field:
            continue
        program = {
            **raw,
            "universities": universities[raw["university_short_name"]],
            "university_campuses": campuses[(raw["university_short_name"], raw["campus_code"])],
        }
        # Keep the original index for the existing prior-reference detail renderer.
        references = [p for p in raw.get("admission_previews", []) if p.get("reference_academic_year") != year]
        prior = [(i, p) for i, p in enumerate(references) if isinstance(p.get("reference_academic_year"), int) and p["reference_academic_year"] < year]
        if prior:
            latest_year = max(p["reference_academic_year"] for _, p in prior)
            for index, preview in prior:
                if preview["reference_academic_year"] != latest_year:
                    continue
                summary = str(preview.get("gpax_summary") or "")
                conditional = any(word in summary for word in ("ยกเว้น", "แล้วแต่", "แยกตาม", "หรือเทียบเท่า"))
                assessment = assess_gpax(gpax, preview.get("min_gpax"), conditional=conditional)
                if assessment["status"] == "below":
                    # An old cutoff cannot disqualify an applicant for the new year.
                    assessment = {
                        "status": "unknown",
                        "reason": assessment["reason"] + f" ของ TCAS{str(latest_year)[-2:]}\nยังตัดสินปี {year} ไม่ได้ เพราะเกณฑ์อาจเปลี่ยน",
                    }
                entries.append({
                    "program": program, "preview": preview, "reference_index": index,
                    "kind": "reference", "year": latest_year,
                    "assessment": assessment,
                })
        else:
            entries.append({
                "program": program, "kind": "pending", "year": year,
                "assessment": assess_gpax(gpax, None),
            })

    excluded = sum(e["assessment"]["status"] == "below" for e in entries)
    visible = [e for e in entries if e["assessment"]["status"] != "below"]
    visible.sort(key=lambda e: (
        e["assessment"]["status"] != "meets",
        {"current": 0, "reference": 1, "pending": 2}[e["kind"]],
        relation(e["program"].get("universities")).get("name", ""),
        relation(e["program"].get("university_campuses")).get("name", ""),
        e["program"].get("major_name", ""),
        (e.get("project") or {}).get("name") or (e.get("preview") or {}).get("title", ""),
    ))
    return visible, excluded


def group_universities(entries):
    groups = {}
    for entry in entries:
        university = relation(entry["program"].get("universities"))
        key = university.get("short_name") or university.get("name") or "ไม่ระบุ"
        group = groups.setdefault(key, {"key": key, "name": university.get("name", key), "entries": [], "current": 0, "reference": 0, "unknown": 0})
        group["entries"].append(entry)
        bucket = entry["kind"] if entry["assessment"]["status"] == "meets" else "unknown"
        group[bucket] += 1
    return sorted(groups.values(), key=lambda g: (-g["current"], -g["reference"], g["name"]))
