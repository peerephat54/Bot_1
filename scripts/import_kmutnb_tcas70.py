"""Import official KMUTNB technology-program catalog records for TCAS70.

The current TCAS70 round-one announcement list was checked on 2026-08-23.
None of the selected computer/IT curricula had a published TCAS70 admission
project, so this importer adds verified curricula only and keeps criteria,
seat counts, fees, and dates empty until an official project is published.
"""

import json
from pathlib import Path

from generate_seed_sql import generate


ROOT = Path(__file__).resolve().parents[1]
DATASET_PATH = ROOT / "datasets" / "tcas70_admissions.json"
AUDIT_PATH = ROOT / "datasets" / "tcas70_source_audit.json"
DELTA_SQL_PATH = ROOT / "seed_kmutnb_tcas70.sql"
CHECKED_AT = "2026-08-23T23:05:39+07:00"

ADMISSION_URL = "https://admission.kmutnb.ac.th/apply/round/1"
COMPUTER_ENGINEERING_URL = (
    "https://www.kmutnb.ac.th/faculty-and-agencies/bangkok/"
    "faculty-of-engineering/department-of-electrical-and-computer-engineering.aspx?lang=th"
)
COMPUTER_SCIENCE_URL = (
    "https://www.kmutnb.ac.th/faculty-and-agencies/bangkok/"
    "faculty-of-applied-science/department-of-computer-and-information-science.aspx"
)
INFORMATICS_URL = "https://www.itd.kmutnb.ac.th/bachelor.php"
FITM_IT_URL = "https://www.fitm.kmutnb.ac.th/IT.html"


UNIVERSITY = {
    "name": "มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ",
    "short_name": "KMUTNB",
    "logo_url": None,
}


PROGRAMS = [
    {
        "university_short_name": "KMUTNB",
        "code": "kmutnb-engineering-computer-engineering",
        "faculty_name": "คณะวิศวกรรมศาสตร์",
        "major_name": "วิศวกรรมคอมพิวเตอร์",
        "program_type": "วิศวกรรมศาสตรบัณฑิต",
        "language": "ไทย",
        "curriculum_credits": 134,
        "curriculum_year": None,
        "duration_years": 4,
        "official_program_url": COMPUTER_ENGINEERING_URL,
        "data_status": "official",
    },
    {
        "university_short_name": "KMUTNB",
        "code": "kmutnb-science-computer-science",
        "faculty_name": "คณะวิทยาศาสตร์ประยุกต์",
        "major_name": "วิทยาการคอมพิวเตอร์",
        "program_type": "วิทยาศาสตรบัณฑิต",
        "language": "ไทย",
        "curriculum_credits": None,
        "curriculum_year": None,
        "duration_years": None,
        "official_program_url": COMPUTER_SCIENCE_URL,
        "data_status": "official",
    },
    {
        "university_short_name": "KMUTNB",
        "code": "kmutnb-itd-informatics-digital-economy",
        "faculty_name": "คณะเทคโนโลยีสารสนเทศและนวัตกรรมดิจิทัล",
        "major_name": "วิทยาการสารสนเทศเพื่อเศรษฐกิจดิจิทัล (หลักสูตรนานาชาติ)",
        "program_type": "วิทยาศาสตรบัณฑิต",
        "language": "อังกฤษ",
        "curriculum_credits": 129,
        "curriculum_year": None,
        "duration_years": 4,
        "official_program_url": INFORMATICS_URL,
        "data_status": "official",
    },
    {
        "university_short_name": "KMUTNB",
        "code": "kmutnb-fitm-information-technology",
        "faculty_name": "คณะเทคโนโลยีและการจัดการอุตสาหกรรม (วิทยาเขตปราจีนบุรี)",
        "major_name": "เทคโนโลยีสารสนเทศ",
        "program_type": "วิทยาศาสตรบัณฑิต",
        "language": "ไทย",
        "curriculum_credits": None,
        "curriculum_year": 2567,
        "duration_years": 4,
        "official_program_url": FITM_IT_URL,
        "data_status": "official",
    },
    {
        "university_short_name": "KMUTNB",
        "code": "kmutnb-fitm-information-network-engineering",
        "faculty_name": "คณะเทคโนโลยีและการจัดการอุตสาหกรรม (วิทยาเขตปราจีนบุรี)",
        "major_name": "วิศวกรรมสารสนเทศและเครือข่าย (เสริมทักษะภาษาอังกฤษ)",
        "program_type": "วิศวกรรมศาสตรบัณฑิต",
        "language": "ไทย (เสริมทักษะภาษาอังกฤษ)",
        "curriculum_credits": None,
        "curriculum_year": 2567,
        "duration_years": 4,
        "official_program_url": FITM_IT_URL,
        "data_status": "official",
    },
]


AUDIT_SOURCES = [
    {
        "url": ADMISSION_URL,
        "publisher": "มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ",
        "classification": "excluded_primary_not_announced",
        "academic_year": 2570,
        "decision": "หน้าประกาศรอบ 1 TCAS70 ที่ตรวจยังไม่มีโครงการของ 5 หลักสูตรสายคอม/IT ที่เลือก จึงเพิ่มเฉพาะหลักสูตรและไม่สร้างเกณฑ์รับสมัคร",
    },
    {
        "url": COMPUTER_ENGINEERING_URL,
        "publisher": "คณะวิศวกรรมศาสตร์ มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ",
        "classification": "imported_primary_supporting",
        "academic_year": 2570,
        "decision": "เพิ่มวิศวกรรมคอมพิวเตอร์ หลักสูตร 4 ปี 134 หน่วยกิตเป็นรายการหลักสูตร และรอประกาศ TCAS70",
    },
    {
        "url": COMPUTER_SCIENCE_URL,
        "publisher": "คณะวิทยาศาสตร์ประยุกต์ มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ",
        "classification": "imported_primary_supporting",
        "academic_year": 2570,
        "decision": "เพิ่มวิทยาการคอมพิวเตอร์เป็นรายการหลักสูตร และรอประกาศ TCAS70",
    },
    {
        "url": INFORMATICS_URL,
        "publisher": "คณะเทคโนโลยีสารสนเทศและนวัตกรรมดิจิทัล มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ",
        "classification": "imported_primary_supporting",
        "academic_year": 2570,
        "decision": "เพิ่มวิทยาการสารสนเทศเพื่อเศรษฐกิจดิจิทัล หลักสูตรนานาชาติ 4 ปี 129 หน่วยกิต และรอประกาศ TCAS70",
    },
    {
        "url": FITM_IT_URL,
        "publisher": "คณะเทคโนโลยีและการจัดการอุตสาหกรรม มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ",
        "classification": "imported_primary_supporting",
        "academic_year": 2570,
        "decision": "เพิ่มเทคโนโลยีสารสนเทศและวิศวกรรมสารสนเทศและเครือข่าย หลักสูตร 4 ปี พ.ศ. 2567; หน้าเดียวกันระบุหน่วยกิตสองค่าขัดกันจึงไม่บันทึกตัวเลขจนกว่ามีเอกสารหลักสูตรที่ชัดเจน",
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
        f"Imported {len(PROGRAMS)} KMUTNB catalog programs and 0 TCAS70 "
        f"projects; generated {DELTA_SQL_PATH.name}"
    )


if __name__ == "__main__":
    main()
