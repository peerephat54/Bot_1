"""Import confirmed KU Bangkhen computer-related TCAS70 projects.

The official KU-TCAS70 catalogue now publishes project-level criteria for
White Elephant, KU Advanced Placement, and the international-program rounds.
Only programs already in this repository's computer/IT scope are imported.
"""

import json
from pathlib import Path

from generate_seed_sql import generate


ROOT = Path(__file__).resolve().parents[1]
DATASET_PATH = ROOT / "datasets" / "tcas70_admissions.json"
AUDIT_PATH = ROOT / "datasets" / "tcas70_source_audit.json"
DELTA_SQL_PATH = ROOT / "seed_ku_tcas70.sql"
CHECKED_AT = "2026-08-29T12:00:00+07:00"

HOME_URL = "https://admission.ku.ac.th/"
WHITE_ELEPHANT_URL = "https://admission.ku.ac.th/majors/project/1/"
ADVANCED_PLACEMENT_URL = "https://admission.ku.ac.th/majors/project/2/"
INTERNATIONAL_11_URL = "https://admission.ku.ac.th/majors/project/3/"
INTERNATIONAL_12_URL = "https://admission.ku.ac.th/majors/project/103/"

CS_CODE = "ku-bangkhen-computer-science"
CPE_CODE = "ku-bangkhen-computer-engineering"
SKE_CODE = "ku-bangkhen-software-knowledge-engineering"
CONFIRMED_PROGRAM_CODES = {CS_CODE, CPE_CODE, SKE_CODE}

UNIVERSITY = {
    "name": "มหาวิทยาลัยเกษตรศาสตร์",
    "short_name": "KU",
    "logo_url": None,
}


def project(code, group_code, name, variant, source_url, source_title):
    return {
        "university_short_name": "KU",
        "code": code,
        "group_code": group_code,
        "name": name,
        "academic_year": 2570,
        "tcas_round": 1,
        "round_label": "1 Portfolio",
        "round_variant": variant,
        "application_type": "Portfolio",
        "publication_status": "official",
        "is_visible": True,
        "selection_order_limit": None,
        "application_fee": None,
        "tuition_fee_per_semester": None,
        "application_url": HOME_URL,
        "source_url": source_url,
        "source_title": source_title,
        "source_published_at": None,
        "source_checked_at": CHECKED_AT,
        "data_notes": (
            "เกณฑ์และจำนวนรับมาจากหน้ารวมเกณฑ์ KU-TCAS70 โดยตรง; "
            "ค่าสมัครและค่าเทอมเว้นว่างเพราะหน้าที่ตรวจไม่ได้ระบุตัวเลข"
        ),
    }


PROJECTS = [
    project(
        "ku-bangkhen-white-elephant-1-1",
        "ku-bangkhen-white-elephant",
        "โครงการช้างเผือก",
        "1.1",
        WHITE_ELEPHANT_URL,
        "เกณฑ์โครงการช้างเผือก รอบ 1.1 KU-TCAS70",
    ),
    project(
        "ku-bangkhen-advanced-placement-1-1",
        "ku-bangkhen-advanced-placement",
        "โครงการเรียนล่วงหน้าของมหาวิทยาลัยเกษตรศาสตร์",
        "1.1",
        ADVANCED_PLACEMENT_URL,
        "เกณฑ์โครงการเรียนล่วงหน้า KU-TCAS70",
    ),
    project(
        "ku-bangkhen-international-1-1",
        "ku-bangkhen-international",
        "โครงการหลักสูตรนานาชาติและหลักสูตรภาษาอังกฤษ",
        "1.1",
        INTERNATIONAL_11_URL,
        "เกณฑ์หลักสูตรนานาชาติและหลักสูตรภาษาอังกฤษ รอบ 1.1 KU-TCAS70",
    ),
    project(
        "ku-bangkhen-international-1-2",
        "ku-bangkhen-international",
        "โครงการหลักสูตรนานาชาติและหลักสูตรภาษาอังกฤษ",
        "1.2",
        INTERNATIONAL_12_URL,
        "เกณฑ์หลักสูตรนานาชาติและหลักสูตรภาษาอังกฤษ รอบ 1.2 KU-TCAS70",
    ),
]

PROJECT_PROGRAMS = [
    {
        "project_code": "ku-bangkhen-white-elephant-1-1",
        "program_code": CS_CODE,
        "slots_available": 16,
        "program_notes": "รับ 16 คน; GPAX 4 ภาคเรียนอย่างน้อย 2.75",
    },
    {
        "project_code": "ku-bangkhen-white-elephant-1-1",
        "program_code": CPE_CODE,
        "slots_available": 20,
        "program_notes": "รับ 20 คน; GPAX อย่างน้อย 2.50 และต้องมีผลงานด้านคอมพิวเตอร์ชัดเจน",
    },
    {
        "project_code": "ku-bangkhen-advanced-placement-1-1",
        "program_code": CS_CODE,
        "slots_available": 5,
        "program_notes": "รับ 5 คน เฉพาะผู้เข้าร่วมโครงการเรียนล่วงหน้า มก.",
    },
    {
        "project_code": "ku-bangkhen-advanced-placement-1-1",
        "program_code": CPE_CODE,
        "slots_available": 5,
        "program_notes": "รับ 5 คน เฉพาะผู้เข้าร่วมโครงการเรียนล่วงหน้า มก.",
    },
    {
        "project_code": "ku-bangkhen-international-1-1",
        "program_code": SKE_CODE,
        "slots_available": 15,
        "program_notes": "รับ 15 คน; ใช้ GPAX 4 ภาคเรียน",
    },
    {
        "project_code": "ku-bangkhen-international-1-2",
        "program_code": SKE_CODE,
        "slots_available": 15,
        "program_notes": "รับ 15 คน; ใช้ GPAX 5 ภาคเรียนและเพิ่ม TGAT1 เป็นทางเลือกภาษาอังกฤษ",
    },
]


def criterion(project_code, program_code, **values):
    item = {
        "project_code": project_code,
        "program_code": program_code,
        "min_gpax": None,
        "gpax_requirements": {},
        "subject_gpax": {},
        "min_english_score": {},
        "standardized_scores": {},
        "applicant_qualifications": [],
        "portfolio_requirements": None,
        "portfolio_details": {},
        "accepted_achievements": [],
        "required_documents": [],
        "selection_methods": [],
        "additional_requirements": {},
        "criteria_summary": None,
        "official_announcement_url": None,
    }
    item.update(values)
    return item


CRITERIA = [
    criterion(
        "ku-bangkhen-white-elephant-1-1",
        CS_CODE,
        min_gpax=2.75,
        gpax_requirements={"semesters": 4},
        applicant_qualifications=[
            "กำลังศึกษา ม.6 หรือเทียบเท่าในปีการศึกษา 2569",
            "มีผลงานเขียนโปรแกรมเข้าประกวดหรือได้รับรางวัล",
            "ผู้สมัครต้องเป็นผู้ดำเนินงานหลักในผลงานอย่างน้อย 40%",
        ],
        portfolio_requirements=(
            "แสดงผลงานเขียนโปรแกรมที่เข้าประกวดหรือได้รับรางวัล และทำวิดีโอไม่เกิน 2 นาที "
            "นำเสนอผลงานที่ได้รับรางวัลดีที่สุดไม่เกิน 3 รายการ พร้อมอธิบายการออกแบบ การพัฒนา "
            "source code สำคัญ และรางวัล; หากใช้ AI ต้องระบุส่วนที่ใช้"
        ),
        accepted_achievements=[
            "ผลงานเขียนโปรแกรมที่เข้าประกวด",
            "ผลงานเขียนโปรแกรมที่ได้รับรางวัล",
        ],
        portfolio_details={
            "video_max_minutes": 2,
            "max_featured_awarded_projects": 3,
            "minimum_primary_contribution_percent": 40,
            "ai_usage_disclosure_required": True,
        },
        required_documents=["ผลการเรียน 4 ภาคเรียน", "หลักฐานผลงาน/รางวัล", "วิดีโอผลงาน"],
        selection_methods=[
            {"name": "โครงงาน/ผลงาน", "weight_percent": 80},
            {"name": "สัมภาษณ์", "weight_percent": 20},
        ],
        additional_requirements={"interview_required": True},
        criteria_summary=(
            "GPAX 4 ภาคเรียน ≥ 2.75; มีผลงานเขียนโปรแกรมที่ประกวดหรือได้รางวัล; "
            "ผลงาน 80% และสัมภาษณ์ 20%"
        ),
        official_announcement_url=WHITE_ELEPHANT_URL,
    ),
    criterion(
        "ku-bangkhen-white-elephant-1-1",
        CPE_CODE,
        min_gpax=2.50,
        applicant_qualifications=[
            "กำลังศึกษาหรือสำเร็จ ม.6 หรือเทียบเท่า",
            "หน่วยกิตวิทยาศาสตร์อย่างน้อย 22 คณิตศาสตร์ 12 และภาษาต่างประเทศ 9",
            "มีผลงานด้านคอมพิวเตอร์ชัดเจน เช่น โปรแกรม ซอฟต์แวร์ ฮาร์ดแวร์ หรือนวัตกรรม",
            "หากเป็นผลงานจากการแข่งขัน ต้องเป็นระดับประเทศหรือนานาชาติ",
        ],
        portfolio_requirements=(
            "ประวัติผลงานและประกาศนียบัตรด้านคอมพิวเตอร์ เช่น โปรแกรม โครงงานนวัตกรรม "
            "ซอฟต์แวร์ หรือฮาร์ดแวร์"
        ),
        accepted_achievements=[
            "โปรแกรมหรือซอฟต์แวร์",
            "โครงงานนวัตกรรมด้านคอมพิวเตอร์",
            "ผลงานฮาร์ดแวร์",
            "ผลงานจากการแข่งขันระดับประเทศหรือนานาชาติ",
        ],
        required_documents=["ผลการเรียน", "Portfolio", "ประกาศนียบัตรหรือหลักฐานผลงาน"],
        selection_methods=[
            {"name": "ประวัติผลงานและประกาศนียบัตร", "weight_percent": 50},
            {"name": "สัมภาษณ์", "weight_percent": 50},
        ],
        additional_requirements={
            "minimum_subject_credits": {
                "วิทยาศาสตร์": 22,
                "คณิตศาสตร์": 12,
                "ภาษาต่างประเทศ": 9,
            },
            "interview_required": True,
        },
        criteria_summary=(
            "GPAX ≥ 2.50; วิทยาศาสตร์ 22 คณิตศาสตร์ 12 ภาษาต่างประเทศ 9 หน่วยกิต; "
            "ผลงาน/ประกาศนียบัตร 50% และสัมภาษณ์ 50%"
        ),
        official_announcement_url=WHITE_ELEPHANT_URL,
    ),
    criterion(
        "ku-bangkhen-advanced-placement-1-1",
        CS_CODE,
        applicant_qualifications=[
            "กำลังศึกษา ม.6 หรือเทียบเท่าในปีการศึกษา 2569",
            "เข้าร่วมโครงการเรียนล่วงหน้าของมหาวิทยาลัยเกษตรศาสตร์",
        ],
        selection_methods=["ผลรายวิชาโครงการเรียนล่วงหน้า", "สัมภาษณ์"],
        additional_requirements={
            "advanced_placement_courses": ["คณิตศาสตร์", "แนวคิดการโปรแกรมเบื้องต้น"],
            "choose_courses": 1,
            "minimum_grade": "B",
            "interview_required": True,
        },
        criteria_summary=(
            "ผู้เข้าร่วมโครงการเรียนล่วงหน้า มก.; เลือกคณิตศาสตร์หรือแนวคิดการโปรแกรมเบื้องต้น "
            "1 วิชา ได้อย่างน้อย B และสอบสัมภาษณ์"
        ),
        official_announcement_url=ADVANCED_PLACEMENT_URL,
    ),
    criterion(
        "ku-bangkhen-advanced-placement-1-1",
        CPE_CODE,
        applicant_qualifications=[
            "กำลังศึกษา ม.6 หรือเทียบเท่าในปีการศึกษา 2569",
            "เข้าร่วมโครงการเรียนล่วงหน้าของมหาวิทยาลัยเกษตรศาสตร์",
        ],
        selection_methods=["ผลรายวิชาโครงการเรียนล่วงหน้า", "สัมภาษณ์"],
        additional_requirements={
            "advanced_placement_courses": [
                "คณิตศาสตร์",
                "ฟิสิกส์",
                "คอมพิวเตอร์และการโปรแกรม",
                "การเขียนแบบวิศวกรรม",
            ],
            "choose_courses": 2,
            "minimum_average_grade": "B+",
            "course_01204111_selection_only": True,
            "interview_required": True,
        },
        criteria_summary=(
            "ผู้เข้าร่วมโครงการเรียนล่วงหน้า มก.; เลือก 2 วิชาจากคณิตศาสตร์ ฟิสิกส์ "
            "คอมพิวเตอร์และการโปรแกรม หรือเขียนแบบวิศวกรรม เฉลี่ยอย่างน้อย B+ และสัมภาษณ์"
        ),
        official_announcement_url=ADVANCED_PLACEMENT_URL,
    ),
]


def ske_criterion(project_code, semesters, source_url, allow_tgat):
    english_alternatives = ["TOEFL iBT ≥ 61", "IELTS ≥ 5.5", "Duolingo ≥ 95"]
    if allow_tgat:
        english_alternatives.append("TGAT1 ≥ 60")
    return criterion(
        project_code,
        SKE_CODE,
        min_gpax=2.50,
        gpax_requirements={"semesters": semesters},
        applicant_qualifications=[
            "ม.6/เทียบเท่า หรือมัธยมปลายจากต่างประเทศ",
            "GED ตั้งแต่ พ.ค. 2560 ต้องผ่าน 4 วิชา วิชาละอย่างน้อย 145",
        ],
        portfolio_requirements=(
            "ควรมีผลงานตรงกับสาขาที่สมัคร เช่น ผลงานด้าน Programming สำหรับสาขาซอฟต์แวร์"
        ),
        required_documents=[
            f"ผลการเรียน {semesters} ภาคเรียน",
            "Portfolio",
            "ผลคะแนนมาตรฐาน หรือผลการเรียนรายวิชาที่ใช้เป็นทางเลือก",
            "หลักฐานวุฒิ/การศึกษา หรือ GED (ถ้ามี)",
        ],
        selection_methods=[
            {"name": "Portfolio", "weight_percent": 25},
            {"name": "ภาษาอังกฤษ", "weight_percent": 25},
            {"name": "สัมภาษณ์ภาษาอังกฤษ", "weight_percent": 50},
        ],
        additional_requirements={
            "qualification_paths": [
                {
                    "path": "คะแนนมาตรฐาน",
                    "sat_math_min": 600,
                    "sat_total_min": 1000,
                    "english_score_one_of": english_alternatives,
                },
                {
                    "path": "ผลการเรียนรายวิชา",
                    "subjects": ["ภาษาอังกฤษ", "ฟิสิกส์", "คณิตศาสตร์"],
                    "minimum_each": 2.50,
                },
            ],
            "interview_language": "อังกฤษ",
            "interview_breakdown": {
                "คำถามวิชาการ/ภาษาอังกฤษ": 50,
                "ทัศนคติและความเหมาะสม": 50,
            },
        },
        criteria_summary=(
            f"GPAX {semesters} ภาคเรียน ≥ 2.50; เลือกใช้ SAT Math ≥ 600 และ SAT รวม ≥ 1,000 "
            f"พร้อมคะแนนภาษาอังกฤษ ({' / '.join(english_alternatives)}) หรือ GPA อังกฤษ ฟิสิกส์ "
            "และคณิตศาสตร์แต่ละวิชา ≥ 2.50; Portfolio 25% ภาษาอังกฤษ 25% สัมภาษณ์ 50%"
        ),
        official_announcement_url=source_url,
    )


CRITERIA.extend(
    [
        ske_criterion("ku-bangkhen-international-1-1", 4, INTERNATIONAL_11_URL, False),
        ske_criterion("ku-bangkhen-international-1-2", 5, INTERNATIONAL_12_URL, True),
    ]
)


def event(project_code, event_name, start_on, end_on, date_display):
    return {
        "project_code": project_code,
        "event_name": event_name,
        "start_on": start_on,
        "end_on": end_on,
        "date_display": date_display,
        "date_status": "confirmed",
    }


def round_timeline(project_code, variant):
    if variant == "1.1":
        schedule = {
            "apply": ("2026-09-18", "2026-10-14", "18 ก.ย.–14 ต.ค. 2569"),
            "eligible": ("2026-11-03", "3 พ.ย. 2569"),
            "interview": ("2026-11-09", "9 พ.ย. 2569"),
            "result": ("2026-11-16", "16 พ.ย. 2569"),
        }
    else:
        schedule = {
            "apply": ("2027-01-04", "2027-02-04", "4 ม.ค.–4 ก.พ. 2570"),
            "eligible": ("2027-03-02", "2 มี.ค. 2570"),
            "interview": ("2027-03-04", "4 มี.ค. 2570"),
            "result": ("2027-03-05", "5 มี.ค. 2570"),
        }
    apply_start, apply_end, apply_display = schedule["apply"]
    eligible_on, eligible_display = schedule["eligible"]
    interview_on, interview_display = schedule["interview"]
    result_on, result_display = schedule["result"]
    return [
        event(project_code, "รับสมัคร", apply_start, apply_end, apply_display),
        event(
            project_code,
            "ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์",
            eligible_on,
            eligible_on,
            eligible_display,
        ),
        event(project_code, "สอบสัมภาษณ์", interview_on, interview_on, interview_display),
        event(
            project_code,
            "ประกาศผลสอบสัมภาษณ์",
            result_on,
            result_on,
            result_display,
        ),
    ]


TIMELINE = []
for item in PROJECTS:
    TIMELINE.extend(round_timeline(item["code"], item["round_variant"]))

AUDIT_SOURCES = [
    {
        "url": HOME_URL,
        "publisher": "สำนักบริหารการศึกษา มหาวิทยาลัยเกษตรศาสตร์",
        "classification": "used_primary_index",
        "academic_year": 2570,
        "decision": "ยืนยันปฏิทิน Portfolio บางเขน รอบ 1.1 และ 1.2 และลิงก์ไปยังเกณฑ์รายโครงการ",
    },
    {
        "url": WHITE_ELEPHANT_URL,
        "publisher": "มหาวิทยาลัยเกษตรศาสตร์",
        "classification": "imported_primary",
        "academic_year": 2570,
        "decision": "นำเข้าช้างเผือก 1.1 ของวิทยาการคอมพิวเตอร์และวิศวกรรมคอมพิวเตอร์ พร้อมจำนวนรับและเกณฑ์รายสาขา",
    },
    {
        "url": ADVANCED_PLACEMENT_URL,
        "publisher": "มหาวิทยาลัยเกษตรศาสตร์",
        "classification": "imported_primary",
        "academic_year": 2570,
        "decision": "นำเข้าโครงการเรียนล่วงหน้าของวิทยาการคอมพิวเตอร์และวิศวกรรมคอมพิวเตอร์",
    },
    {
        "url": INTERNATIONAL_11_URL,
        "publisher": "มหาวิทยาลัยเกษตรศาสตร์",
        "classification": "imported_primary",
        "academic_year": 2570,
        "decision": "นำเข้าหลักสูตรวิศวกรรมซอฟต์แวร์และความรู้ รอบ 1.1 พร้อมทางเลือกคะแนนและสัดส่วนคัดเลือก",
    },
    {
        "url": INTERNATIONAL_12_URL,
        "publisher": "มหาวิทยาลัยเกษตรศาสตร์",
        "classification": "imported_primary",
        "academic_year": 2570,
        "decision": "นำเข้าหลักสูตรวิศวกรรมซอฟต์แวร์และความรู้ รอบ 1.2 พร้อมทางเลือก TGAT1",
    },
]


def upsert(items, additions, key):
    positions = {key(item): index for index, item in enumerate(items)}
    for addition in additions:
        item_key = key(addition)
        if item_key in positions:
            items[positions[item_key]] = addition
        else:
            positions[item_key] = len(items)
            items.append(addition)


def confirmed_programs(data):
    programs = []
    for existing in data["programs"]:
        if existing.get("code") not in CONFIRMED_PROGRAM_CODES:
            continue
        item = dict(existing)
        item["admission_previews"] = [
            preview
            for preview in item.get("admission_previews") or []
            if not (
                preview.get("reference_academic_year") == 2570
                and "ยังไม่พบประกาศ TCAS70" in preview.get("note", "")
            )
        ]
        programs.append(item)
    if {item["code"] for item in programs} != CONFIRMED_PROGRAM_CODES:
        raise RuntimeError("KU program scope is incomplete in the base dataset")
    return programs


def main():
    data = json.loads(DATASET_PATH.read_text(encoding="utf-8"))
    data["checked_at"] = CHECKED_AT
    runtime_codes = data.setdefault("runtime_local_project_codes", [])
    for code in (item["code"] for item in PROJECTS):
        if code not in runtime_codes:
            runtime_codes.append(code)
    programs = confirmed_programs(data)
    upsert(data["universities"], [UNIVERSITY], lambda item: item["short_name"])
    upsert(data["programs"], programs, lambda item: item["code"])
    upsert(data["projects"], PROJECTS, lambda item: item["code"])
    upsert(
        data["project_programs"],
        PROJECT_PROGRAMS,
        lambda item: (item["project_code"], item["program_code"]),
    )
    upsert(
        data["criteria"],
        CRITERIA,
        lambda item: (item["project_code"], item["program_code"]),
    )
    upsert(
        data["timeline"],
        TIMELINE,
        lambda item: (item["project_code"], item["event_name"]),
    )
    for calendar in data.get("university_admission_calendars", []):
        if calendar.get("code") == "ku-bangkhen-portfolio-2570":
            calendar["source_checked_at"] = "2026-08-29"
    DATASET_PATH.write_text(
        json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
    )

    audit = json.loads(AUDIT_PATH.read_text(encoding="utf-8"))
    audit["checked_at"] = CHECKED_AT
    upsert(audit["sources"], AUDIT_SOURCES, lambda item: item["url"])
    AUDIT_PATH.write_text(
        json.dumps(audit, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
    )

    delta = {
        "schema_version": data["schema_version"],
        "academic_year": data["academic_year"],
        "checked_at": data["checked_at"],
        "status_policy": data["status_policy"],
        "universities": [UNIVERSITY],
        "campuses": [],
        "programs": programs,
        "projects": PROJECTS,
        "project_programs": PROJECT_PROGRAMS,
        "criteria": CRITERIA,
        "timeline": TIMELINE,
    }
    DELTA_SQL_PATH.write_text(generate(delta), encoding="utf-8", newline="\n")
    print(
        f"Imported {len(PROJECTS)} KU TCAS70 projects, "
        f"{len(PROJECT_PROGRAMS)} program links, and {len(CRITERIA)} criteria"
    )


if __name__ == "__main__":
    main()
