"""Import the 1 September 2026 TU-TCAS70 Portfolio announcement.

The announcement adds two computer-related programs to the bot scope and
supersedes the earlier 28 August source for the existing TU direct programs.
Only facts present in the official announcement are imported.
"""

import json
from pathlib import Path

from generate_seed_sql import generate


ROOT = Path(__file__).resolve().parents[1]
DATASET_PATH = ROOT / "datasets" / "tcas70_admissions.json"
AUDIT_PATH = ROOT / "datasets" / "tcas70_source_audit.json"
DELTA_SQL_PATH = ROOT / "seed_tu_tcas70_2026_09_01.sql"
CHECKED_AT = "2026-09-01T20:53+07:00"
SOURCE_DATE = "2026-09-01"
SOURCE_URL = "https://www.tuadmissions.in.th/img/2026090101500188.pdf"
APPLICATION_URL = "https://www.tuadmissions.in.th/"


def program(code, major_name, official_url):
    return {
        "university_short_name": "TU",
        "code": code,
        "faculty_name": "คณะวิทยาศาสตร์และเทคโนโลยี",
        "major_name": major_name,
        "program_type": "วิทยาศาสตรบัณฑิต",
        "language": "ไทย",
        "curriculum_credits": None,
        "curriculum_year": None,
        "duration_years": 4,
        "official_program_url": official_url,
        "data_status": "official",
        "admission_previews": [],
        "campus_code": "rangsit",
    }


PROGRAMS = [
    program(
        "tu-science-computer-science-special",
        "วิทยาการคอมพิวเตอร์ (โครงการพิเศษ)",
        f"{SOURCE_URL}#page=61",
    ),
    program(
        "tu-science-network-cybersecurity",
        "คอมพิวเตอร์เครือข่ายและความปลอดภัยทางไซเบอร์ (โครงการพิเศษ)",
        f"{SOURCE_URL}#page=63",
    ),
]


def project(code, name):
    return {
        "university_short_name": "TU",
        "code": code,
        "group_code": code.removesuffix("-2570"),
        "name": name,
        "academic_year": 2570,
        "tcas_round": 1,
        "round_label": "Portfolio",
        "round_variant": "1",
        "application_type": "portfolio",
        "publication_status": "official",
        "is_visible": True,
        "selection_order_limit": None,
        "application_fee": 200,
        "tuition_fee_per_semester": None,
        "application_url": APPLICATION_URL,
        "source_url": SOURCE_URL,
        "source_title": "ประกาศรับตรง รอบ 1 Portfolio ปีการศึกษา 2570 (1 ก.ย. 2569)",
        "source_published_at": SOURCE_DATE,
        "source_checked_at": CHECKED_AT,
        "data_notes": (
            "ประกาศทางการลงวันที่ 1 ก.ย. 2569; เปิดระบบรับสมัคร 14 ก.ย. 2569 "
            "ถึง 16 ธ.ค. 2569 และยื่น/แก้ไข Portfolio ได้ถึง 22 ธ.ค. 2569"
        ),
    }


PROJECTS = [
    project(
        "tu-direct-cs-special-2570",
        "รับตรง Portfolio — วิทยาการคอมพิวเตอร์ (โครงการพิเศษ)",
    ),
    project(
        "tu-direct-network-cybersecurity-2570",
        "รับตรง Portfolio — คอมพิวเตอร์เครือข่ายและความปลอดภัยทางไซเบอร์ (โครงการพิเศษ)",
    ),
]

PROJECT_PROGRAMS = [
    {
        "project_code": "tu-direct-cs-special-2570",
        "program_code": "tu-science-computer-science-special",
        "slots_available": 20,
        "program_notes": "ศูนย์รังสิต รหัส 10050209220201B; หลักสูตรอยู่ระหว่างปรับปรุง",
    },
    {
        "project_code": "tu-direct-network-cybersecurity-2570",
        "program_code": "tu-science-network-cybersecurity",
        "slots_available": 20,
        "program_notes": "ศูนย์รังสิต รหัส 10050209220202B; โครงการพิเศษ",
    },
]


COMMON_STANDARDIZED_SCORES = {
    "TGAT1": {"ค่าน้ำหนัก": "15%"},
    "TGAT2": {"ค่าน้ำหนัก": "15%"},
    "TGAT3": {"ค่าน้ำหนัก": "5%"},
    "TPAT3": {"ค่าน้ำหนัก": "15%"},
}

COMMON_QUALIFICATIONS = [
    "กำลังเรียนหรือจบ ม.6; ตารางไม่รับ ปวช., กศน. และวุฒิเทียบต่างประเทศ/นานาชาติ",
    "หน่วยกิตข้อ 2.1: วิทยาศาสตร์ 22 และคณิตศาสตร์ 12; ข้อ 2.2: คณิตศาสตร์ 12 และภาษาต่างประเทศ 9 — ไม่ระบุว่าเลือกข้อใดข้อหนึ่ง จึงต้องสอบถามคณะก่อนสรุปสิทธิ์",
]

COMMON_DOCUMENTS = [
    "ปพ.1/ระเบียนผลการเรียน หน้า–หลังพร้อมตราโรงเรียน",
    "TCASFolio หรือ Portfolio พร้อมประวัติและ Statement of Purpose",
    "หลักฐานผลงาน/รางวัล/กิจกรรมที่เกี่ยวข้อง",
    "คะแนนภาษาอังกฤษ (ถ้ามี)",
]


def criteria(
    project_code,
    program_code,
    portfolio_requirements,
    accepted_achievements,
    *,
    page=61,
):
    return {
        "project_code": project_code,
        "program_code": program_code,
        "min_gpax": 3,
        "gpax_requirements": {},
        "subject_gpax": {},
        "min_english_score": {},
        "standardized_scores": COMMON_STANDARDIZED_SCORES,
        "applicant_qualifications": COMMON_QUALIFICATIONS,
        "portfolio_requirements": portfolio_requirements,
        "portfolio_details": {
            "max_pages": 10,
            "max_file_mb": 20,
            "รูปแบบ": "PDF รวม 1 ไฟล์",
            "การนับหน้า": "ไม่เกิน 10 หน้า ไม่ระบุยกเว้นปก",
        },
        "accepted_achievements": accepted_achievements,
        "required_documents": COMMON_DOCUMENTS,
        "selection_methods": [
            "Portfolio 50%",
            "TGAT1 15% + TGAT2 15% + TGAT3 5% + TPAT3 15%",
            "ต้องผ่านสัมภาษณ์",
        ],
        "additional_requirements": [
            "ตรวจหน่วยกิตกับคณะก่อนยืนยันสิทธิ์สมัคร; หลักสูตรอยู่ระหว่างปรับปรุง"
        ],
        "criteria_summary": "GPAX อย่างน้อย 3.00; Portfolio 50%; TGAT1 15% + TGAT2 15% + TGAT3 5% + TPAT3 15%; ต้องผ่านสัมภาษณ์; GPAX อย่างเดียวไม่รับรองสิทธิ์สมัคร",
        "official_announcement_url": f"{SOURCE_URL}#page={page}",
    }


CRITERIA = [
    criteria(
        "tu-direct-cs-special-2570",
        "tu-science-computer-science-special",
        [
            "ประวัติส่วนตัว/การศึกษา และ Statement of Purpose",
            "หลักฐานผลงาน กิจกรรม หรือรางวัลที่เกี่ยวข้อง",
            "ตอบวิชาในวิทยาการคอมพิวเตอร์ที่สนใจพร้อมเหตุผล ไม่เกิน 200 ตัวอักษร",
        ],
        ["หลักฐานผลงาน/รางวัล/กิจกรรมที่สัมพันธ์กับสาขา ตามหัวข้อ Portfolio ในประกาศ"],
    ),
    criteria(
        "tu-direct-network-cybersecurity-2570",
        "tu-science-network-cybersecurity",
        [
            "ประวัติส่วนตัว/การศึกษา และความสามารถด้านภาษา (ถ้ามี)",
            "Statement of Purpose ไม่เกิน 1,200 ตัวอักษร",
            "ผลงานด้านการพัฒนาโปรแกรม ระบบเครือข่าย ความมั่นคงปลอดภัยไซเบอร์ หรือเทคโนโลยีสารสนเทศ (ถ้ามี)",
            "ประกาศนียบัตร/หนังสือรับรอง/กิจกรรม; ผลงานนวัตกรรม โครงงาน งานวิจัย หรือผลงานสร้างสรรค์; รางวัลการแข่งขัน; การอบรม; กิจกรรมวิชาการ จิตอาสา ภาวะผู้นำ หรือการทำงานเป็นทีม",
            "ไม่มีคำถามเพิ่มเติม",
        ],
        [
            "ผลงานโปรแกรม ระบบเครือข่าย ความมั่นคงปลอดภัยไซเบอร์ หรือเทคโนโลยีสารสนเทศ (ถ้ามี)",
            "ผลงานนวัตกรรม โครงงาน งานวิจัย ผลงานสร้างสรรค์ หรือรางวัลที่เกี่ยวข้อง (ถ้ามี)",
        ],
        page=63,
    ),
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


def update_existing_sources(data):
    source_pages = {
        "tu-direct-cpe-2570": 71,
        "tu-direct-software-2570": 73,
        "tu-direct-cs-2570": 61,
    }
    for item in data["projects"]:
        if item.get("code") not in source_pages:
            continue
        item["source_url"] = SOURCE_URL
        item["source_title"] = "ประกาศรับตรง รอบ 1 Portfolio ปีการศึกษา 2570 (1 ก.ย. 2569)"
        item["source_published_at"] = SOURCE_DATE
        item["source_checked_at"] = CHECKED_AT
        item["data_notes"] = (
            "ประกาศฉบับ 1 ก.ย. 2569; เปิดระบบรับสมัคร 14 ก.ย. 2569 "
            "ถึง 16 ธ.ค. 2569 และยื่น/แก้ไข Portfolio ได้ถึง 22 ธ.ค. 2569"
        )
    for item in data["criteria"]:
        page = source_pages.get(item.get("project_code"))
        if page:
            item["official_announcement_url"] = f"{SOURCE_URL}#page={page}"


def timeline_for_new_project(data, project_code):
    source = [
        item for item in data["timeline"] if item.get("project_code") == "tu-direct-cs-2570"
    ]
    return [{**item, "project_code": project_code} for item in source]


AUDIT_SOURCES = [
    {
        "url": SOURCE_URL,
        "publisher": "มหาวิทยาลัยธรรมศาสตร์",
        "classification": "imported_primary",
        "academic_year": 2570,
        "source_checked_at": SOURCE_DATE,
        "decision": (
            "ประกาศรับตรง รอบ 1 Portfolio ลงวันที่ 1 ก.ย. 2569; ยืนยัน CPE 20 คน, "
            "วิศวกรรมซอฟต์แวร์ 35 คน, วิทยาการคอมพิวเตอร์ปกติ 20 คน, "
            "วิทยาการคอมพิวเตอร์โครงการพิเศษ 20 คน และคอมพิวเตอร์เครือข่าย/ความปลอดภัยไซเบอร์ 20 คน; "
            "เพิ่ม 2 หลักสูตรใหม่และอัปเดตแหล่งอ้างอิงของโครงการเดิม"
        ),
    }
]


def main():
    data = json.loads(DATASET_PATH.read_text(encoding="utf-8"))
    data["checked_at"] = CHECKED_AT
    update_existing_sources(data)

    runtime_codes = data.setdefault("runtime_local_project_codes", [])
    for item in PROJECTS:
        if item["code"] not in runtime_codes:
            runtime_codes.append(item["code"])

    upsert(data["programs"], PROGRAMS, lambda item: item["code"])
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
    timeline = [
        event
        for project_code in (item["code"] for item in PROJECTS)
        for event in timeline_for_new_project(data, project_code)
    ]
    upsert(data["timeline"], timeline, lambda item: (item["project_code"], item["event_name"]))
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
        "checked_at": CHECKED_AT,
        "status_policy": data["status_policy"],
        "universities": [],
        "campuses": [],
        "programs": PROGRAMS,
        "projects": PROJECTS,
        "project_programs": PROJECT_PROGRAMS,
        "criteria": CRITERIA,
        "timeline": timeline,
    }
    DELTA_SQL_PATH.write_text(generate(delta), encoding="utf-8", newline="\n")
    print(
        f"Imported {len(PROGRAMS)} TU programs, {len(PROJECTS)} projects, "
        f"{len(CRITERIA)} criteria, and {len(timeline)} timeline events"
    )


if __name__ == "__main__":
    main()
