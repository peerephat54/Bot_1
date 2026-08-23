"""Import official Chulalongkorn technology-program catalog records for TCAS70.

Chulalongkorn's central TCAS70 pages did not publish regular or international
admission announcements when checked on 2026-08-23. This importer therefore
adds only curricula confirmed by official university/faculty sources. It does
not copy TCAS69 projects, criteria, seat counts, or dates into TCAS70.
"""

import json
from pathlib import Path

from generate_seed_sql import generate


ROOT = Path(__file__).resolve().parents[1]
DATASET_PATH = ROOT / "datasets" / "tcas70_admissions.json"
AUDIT_PATH = ROOT / "datasets" / "tcas70_source_audit.json"
DELTA_SQL_PATH = ROOT / "seed_chula_tcas70.sql"
CHECKED_AT = "2026-08-23T22:30:24+07:00"

REGULAR_ADMISSION_URL = "https://admission.chula.ac.th/admission_c1.php"
INTERNATIONAL_ADMISSION_URL = "https://admission.chula.ac.th/admission_c2.php"
PROGRAM_DIRECTORY_URL = "https://www.reg.chula.ac.th/admissions/thai/bprograms/"
CP_URL = "https://www.cp.eng.chula.ac.th/future/bachelor"
CEDT_URL = "https://www.cp.eng.chula.ac.th/cedt"
CS_URL = (
    "https://www.math.sc.chula.ac.th/th/program/undergraduate/computer-science/"
)
ISE_URL = "https://www.ise.eng.chula.ac.th/academics"
ICE_URL = "https://www.ise.eng.chula.ac.th/academics/ice/info"
ROBOTICS_AI_URL = (
    "https://www.ise.eng.chula.ac.th/academics/robotics-ai/info"
)
SEMICONDUCTOR_URL = "https://www.ise.eng.chula.ac.th/academics/semi/info"
CBS_STATS_URL = (
    "https://stat.cbs.chula.ac.th/index.php/th/our-programs/bachelor/2564"
)
CBS_MIS_URL = "https://bba.acc.chula.ac.th/files/MIS_EN.pdf"


UNIVERSITY = {
    "name": "จุฬาลงกรณ์มหาวิทยาลัย",
    "short_name": "CU",
    "logo_url": None,
}


PROGRAMS = [
    {
        "university_short_name": "CU",
        "code": "cu-engineering-computer-engineering",
        "faculty_name": "คณะวิศวกรรมศาสตร์",
        "major_name": "วิศวกรรมคอมพิวเตอร์",
        "program_type": "วิศวกรรมศาสตรบัณฑิต",
        "language": "ไทย",
        "curriculum_credits": 138,
        "curriculum_year": 2566,
        "duration_years": 4,
        "official_program_url": CP_URL,
        "data_status": "official",
    },
    {
        "university_short_name": "CU",
        "code": "cu-engineering-cedt",
        "faculty_name": "คณะวิศวกรรมศาสตร์",
        "major_name": "วิศวกรรมคอมพิวเตอร์และเทคโนโลยีดิจิทัล (CEDT)",
        "program_type": "วิศวกรรมศาสตรบัณฑิต",
        "language": "ไทย",
        "curriculum_credits": 124,
        "curriculum_year": 2566,
        "duration_years": 3.5,
        "official_program_url": CEDT_URL,
        "data_status": "official",
    },
    {
        "university_short_name": "CU",
        "code": "cu-engineering-ice",
        "faculty_name": "คณะวิศวกรรมศาสตร์",
        "major_name": "วิศวกรรมสารสนเทศและการสื่อสาร (ICE) (หลักสูตรนานาชาติ)",
        "program_type": "วิศวกรรมศาสตรบัณฑิต",
        "language": "อังกฤษ",
        "curriculum_credits": None,
        "curriculum_year": None,
        "duration_years": None,
        "official_program_url": ICE_URL,
        "data_status": "official",
    },
    {
        "university_short_name": "CU",
        "code": "cu-engineering-robotics-ai",
        "faculty_name": "คณะวิศวกรรมศาสตร์",
        "major_name": "วิศวกรรมหุ่นยนต์และปัญญาประดิษฐ์ (RAIE) (หลักสูตรนานาชาติ)",
        "program_type": "วิศวกรรมศาสตรบัณฑิต",
        "language": "อังกฤษ",
        "curriculum_credits": None,
        "curriculum_year": None,
        "duration_years": None,
        "official_program_url": ROBOTICS_AI_URL,
        "data_status": "official",
    },
    {
        "university_short_name": "CU",
        "code": "cu-engineering-semiconductor",
        "faculty_name": "คณะวิศวกรรมศาสตร์",
        "major_name": "วิศวกรรมเซมิคอนดักเตอร์ (SEMI) (หลักสูตรนานาชาติ)",
        "program_type": "วิศวกรรมศาสตรบัณฑิต",
        "language": "อังกฤษ",
        "curriculum_credits": None,
        "curriculum_year": None,
        "duration_years": None,
        "official_program_url": SEMICONDUCTOR_URL,
        "data_status": "official",
    },
    {
        "university_short_name": "CU",
        "code": "cu-science-computer-science",
        "faculty_name": "คณะวิทยาศาสตร์",
        "major_name": "วิทยาการคอมพิวเตอร์",
        "program_type": "วิทยาศาสตรบัณฑิต",
        "language": "ไทย",
        "curriculum_credits": 136,
        "curriculum_year": 2566,
        "duration_years": 4,
        "official_program_url": CS_URL,
        "data_status": "official",
    },
    {
        "university_short_name": "CU",
        "code": "cu-cbs-management-information-systems",
        "faculty_name": "คณะพาณิชยศาสตร์และการบัญชี",
        "major_name": "ระบบสารสนเทศทางการจัดการ",
        "program_type": "บริหารธุรกิจบัณฑิต",
        "language": "ไทย",
        "curriculum_credits": 136,
        "curriculum_year": None,
        "duration_years": None,
        "official_program_url": CBS_MIS_URL,
        "data_status": "official",
    },
    {
        "university_short_name": "CU",
        "code": "cu-cbs-statistics-data-science",
        "faculty_name": "คณะพาณิชยศาสตร์และการบัญชี",
        "major_name": "สถิติและวิทยาการข้อมูล",
        "program_type": "สถิติศาสตรบัณฑิต",
        "language": "ไทย",
        "curriculum_credits": 133,
        "curriculum_year": 2564,
        "duration_years": None,
        "official_program_url": CBS_STATS_URL,
        "data_status": "official",
    },
    {
        "university_short_name": "CU",
        "code": "cu-cbs-information-technology-business",
        "faculty_name": "คณะพาณิชยศาสตร์และการบัญชี",
        "major_name": "เทคโนโลยีสารสนเทศเพื่อธุรกิจ",
        "program_type": "สถิติศาสตรบัณฑิต",
        "language": "ไทย",
        "curriculum_credits": 133,
        "curriculum_year": 2564,
        "duration_years": None,
        "official_program_url": CBS_STATS_URL,
        "data_status": "official",
    },
]


AUDIT_SOURCES = [
    {
        "url": REGULAR_ADMISSION_URL,
        "publisher": "สำนักบริหารวิชาการ จุฬาลงกรณ์มหาวิทยาลัย",
        "classification": "excluded_primary_not_announced",
        "academic_year": 2570,
        "decision": "หน้า TCAS70 หลักสูตรปกติระบุว่าไม่พบประกาศรับสมัคร จึงไม่สร้างโครงการ เกณฑ์ จำนวนรับ หรือกำหนดการ",
    },
    {
        "url": INTERNATIONAL_ADMISSION_URL,
        "publisher": "สำนักบริหารวิชาการ จุฬาลงกรณ์มหาวิทยาลัย",
        "classification": "excluded_primary_not_announced",
        "academic_year": 2570,
        "decision": "หน้า TCAS70 หลักสูตรนานาชาติระบุว่าไม่พบประกาศรับสมัคร จึงไม่สร้างโครงการ เกณฑ์ จำนวนรับ หรือกำหนดการ",
    },
    {
        "url": PROGRAM_DIRECTORY_URL,
        "publisher": "สำนักทะเบียน จุฬาลงกรณ์มหาวิทยาลัย",
        "classification": "imported_primary_supporting",
        "academic_year": 2570,
        "decision": "ใช้ยืนยันรายการหลักสูตรระดับปริญญาบัณฑิตในขอบเขตสายคอม ข้อมูล AI และเทคโนโลยีเท่านั้น",
    },
    {
        "url": CP_URL,
        "publisher": "ภาควิชาวิศวกรรมคอมพิวเตอร์ จุฬาลงกรณ์มหาวิทยาลัย",
        "classification": "imported_primary_supporting",
        "academic_year": 2570,
        "decision": "เพิ่มหลักสูตรวิศวกรรมคอมพิวเตอร์ 138 หน่วยกิต ระยะเวลา 4 ปี แต่ยังไม่เพิ่มโครงการ TCAS70",
    },
    {
        "url": CEDT_URL,
        "publisher": "ภาควิชาวิศวกรรมคอมพิวเตอร์ จุฬาลงกรณ์มหาวิทยาลัย",
        "classification": "imported_primary_supporting",
        "academic_year": 2570,
        "decision": "เพิ่มหลักสูตร CEDT 124 หน่วยกิต ระยะเวลา 3 ปีครึ่ง แต่ยังไม่เพิ่มโครงการ TCAS70",
    },
    {
        "url": CS_URL,
        "publisher": "ภาควิชาคณิตศาสตร์และวิทยาการคอมพิวเตอร์ จุฬาลงกรณ์มหาวิทยาลัย",
        "classification": "imported_primary_supporting",
        "academic_year": 2570,
        "decision": "เพิ่มหลักสูตรวิทยาการคอมพิวเตอร์ 136 หน่วยกิต ระยะเวลา 4 ปี แต่ยังไม่เพิ่มโครงการ TCAS70",
    },
    {
        "url": ISE_URL,
        "publisher": "International School of Engineering จุฬาลงกรณ์มหาวิทยาลัย",
        "classification": "imported_primary_supporting",
        "academic_year": 2570,
        "decision": "ใช้ยืนยันกลุ่มหลักสูตรนานาชาติ ICE, Robotics AI และ Semiconductor Engineering",
    },
    {
        "url": ICE_URL,
        "publisher": "International School of Engineering จุฬาลงกรณ์มหาวิทยาลัย",
        "classification": "imported_primary_supporting",
        "academic_year": 2570,
        "decision": "เพิ่มหลักสูตร ICE เป็นรายการหลักสูตรเท่านั้น และรอประกาศรับสมัคร TCAS70",
    },
    {
        "url": ROBOTICS_AI_URL,
        "publisher": "International School of Engineering จุฬาลงกรณ์มหาวิทยาลัย",
        "classification": "imported_primary_supporting",
        "academic_year": 2570,
        "decision": "เพิ่มหลักสูตร Robotics and AI Engineering เป็นรายการหลักสูตรเท่านั้น และรอประกาศรับสมัคร TCAS70",
    },
    {
        "url": SEMICONDUCTOR_URL,
        "publisher": "International School of Engineering จุฬาลงกรณ์มหาวิทยาลัย",
        "classification": "imported_primary_supporting",
        "academic_year": 2570,
        "decision": "เพิ่มหลักสูตร Semiconductor Engineering เป็นรายการหลักสูตรเท่านั้น และรอประกาศรับสมัคร TCAS70",
    },
    {
        "url": CBS_STATS_URL,
        "publisher": "ภาควิชาสถิติ คณะพาณิชยศาสตร์และการบัญชี จุฬาลงกรณ์มหาวิทยาลัย",
        "classification": "imported_primary_supporting",
        "academic_year": 2570,
        "decision": "เพิ่มสถิติและวิทยาการข้อมูลกับเทคโนโลยีสารสนเทศเพื่อธุรกิจ หลักสูตรละ 133 หน่วยกิต โดยไม่สร้างเกณฑ์รับสมัครที่ยังไม่ประกาศ",
    },
    {
        "url": CBS_MIS_URL,
        "publisher": "คณะพาณิชยศาสตร์และการบัญชี จุฬาลงกรณ์มหาวิทยาลัย",
        "classification": "imported_primary_supporting",
        "academic_year": 2570,
        "decision": "เพิ่มระบบสารสนเทศทางการจัดการ 136 หน่วยกิตเป็นรายการหลักสูตร และรอประกาศรับสมัคร TCAS70",
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


def main():
    data = json.loads(DATASET_PATH.read_text(encoding="utf-8"))
    data["checked_at"] = CHECKED_AT
    upsert(
        data["universities"],
        [UNIVERSITY],
        lambda item: item["short_name"],
    )
    upsert(data["programs"], PROGRAMS, lambda item: item["code"])
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
        "programs": PROGRAMS,
        "projects": [],
        "project_programs": [],
        "criteria": [],
        "timeline": [],
    }
    DELTA_SQL_PATH.write_text(generate(delta), encoding="utf-8", newline="\n")

    print(
        f"Imported {len(PROGRAMS)} Chulalongkorn catalog programs and 0 "
        f"TCAS70 projects; generated {DELTA_SQL_PATH.name}"
    )


if __name__ == "__main__":
    main()
