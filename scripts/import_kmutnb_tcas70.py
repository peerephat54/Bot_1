"""Import official KMUTNB computer/IT catalogue and TCAS70 Portfolio data."""

import json
from pathlib import Path

from generate_seed_sql import generate


ROOT = Path(__file__).resolve().parents[1]
DATASET_PATH = ROOT / "datasets" / "tcas70_admissions.json"
AUDIT_PATH = ROOT / "datasets" / "tcas70_source_audit.json"
DELTA_SQL_PATH = ROOT / "seed_kmutnb_tcas70.sql"
CHECKED_AT = "2026-08-29T12:00:00+07:00"

ADMISSION_URL = "https://admission.kmutnb.ac.th/apply/round/1"
APPLIED_SCIENCE_PDF = "https://admission.kmutnb.ac.th/sites/default/files/2026-08/Port-M6.pdf"
FITM_PORTFOLIO_PDF = "https://admission.kmutnb.ac.th/sites/default/files/2026-08/Portfolio-R1.pdf"
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

FITM_IT_CODE = "kmutnb-fitm-information-technology"
FITM_INE_CODE = "kmutnb-fitm-information-network-engineering"
CS_BILINGUAL_CODE = "kmutnb-science-computer-science-bilingual"
CONFIRMED_PROGRAM_CODES = {FITM_IT_CODE, FITM_INE_CODE, CS_BILINGUAL_CODE}

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
        "campus_code": "bangkok",
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
        "campus_code": "bangkok",
    },
    {
        "university_short_name": "KMUTNB",
        "code": CS_BILINGUAL_CODE,
        "faculty_name": "คณะวิทยาศาสตร์ประยุกต์",
        "major_name": "วิทยาการคอมพิวเตอร์ (หลักสูตรสองภาษา)",
        "program_type": "วิทยาศาสตรบัณฑิต",
        "language": "ไทยและอังกฤษ",
        "curriculum_credits": None,
        "curriculum_year": None,
        "duration_years": 4,
        "official_program_url": COMPUTER_SCIENCE_URL,
        "data_status": "official",
        "campus_code": "bangkok",
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
        "campus_code": "bangkok",
    },
    {
        "university_short_name": "KMUTNB",
        "code": FITM_IT_CODE,
        "faculty_name": "คณะเทคโนโลยีและการจัดการอุตสาหกรรม (วิทยาเขตปราจีนบุรี)",
        "major_name": "เทคโนโลยีสารสนเทศ",
        "program_type": "วิทยาศาสตรบัณฑิต",
        "language": "ไทย",
        "curriculum_credits": None,
        "curriculum_year": 2567,
        "duration_years": 4,
        "official_program_url": FITM_IT_URL,
        "data_status": "official",
        "campus_code": "prachinburi",
    },
    {
        "university_short_name": "KMUTNB",
        "code": FITM_INE_CODE,
        "faculty_name": "คณะเทคโนโลยีและการจัดการอุตสาหกรรม (วิทยาเขตปราจีนบุรี)",
        "major_name": "วิศวกรรมสารสนเทศและเครือข่าย (เสริมทักษะภาษาอังกฤษ)",
        "program_type": "วิศวกรรมศาสตรบัณฑิต",
        "language": "ไทย (เสริมทักษะภาษาอังกฤษ)",
        "curriculum_credits": None,
        "curriculum_year": 2567,
        "duration_years": 4,
        "official_program_url": FITM_IT_URL,
        "data_status": "official",
        "campus_code": "prachinburi",
    },
]


def make_project(code, group_code, name, source_url, source_title, published_at, notes):
    return {
        "university_short_name": "KMUTNB",
        "code": code,
        "group_code": group_code,
        "name": name,
        "academic_year": 2570,
        "tcas_round": 1,
        "round_label": "1 Portfolio",
        "round_variant": "1",
        "application_type": "Portfolio",
        "publication_status": "official",
        "is_visible": True,
        "selection_order_limit": None,
        "application_fee": None,
        "tuition_fee_per_semester": None,
        "application_url": "https://stdadmis2.kmutnb.ac.th/ApplyStart",
        "source_url": source_url,
        "source_title": source_title,
        "source_published_at": published_at,
        "source_checked_at": CHECKED_AT,
        "data_notes": notes,
    }


PROJECTS = [
    make_project(
        "kmutnb-appsci-portfolio-m6-1",
        "kmutnb-appsci-portfolio-m6",
        "โควตา Portfolio (ม.6) คณะวิทยาศาสตร์ประยุกต์",
        APPLIED_SCIENCE_PDF,
        "ประกาศโควตา Portfolio (ม.6) คณะวิทยาศาสตร์ประยุกต์ ปีการศึกษา 2570",
        "2026-08-27",
        "นำเข้าเฉพาะวิทยาการคอมพิวเตอร์หลักสูตรสองภาษา รหัส 04111; ประกาศระบุค่าเทอม 45,000 บาทต่อภาค",
    ),
    make_project(
        "kmutnb-fitm-portfolio-1",
        "kmutnb-fitm-portfolio",
        "โครงการ Portfolio คณะเทคโนโลยีและการจัดการอุตสาหกรรม",
        FITM_PORTFOLIO_PDF,
        "ประกาศ Portfolio คณะเทคโนโลยีและการจัดการอุตสาหกรรม ปีการศึกษา 2570",
        None,
        "ไม่มีสอบข้อเขียน ใช้ Portfolio และสัมภาษณ์ออนไลน์; ค่าเทอมแตกต่างรายหลักสูตรจึงแสดงในหมายเหตุรายสาขา",
    ),
]

PROJECT_PROGRAMS = [
    {
        "project_code": "kmutnb-appsci-portfolio-m6-1",
        "program_code": CS_BILINGUAL_CODE,
        "slots_available": 10,
        "program_notes": "รหัส 04111 รับ 10 คน; GPAX ≥ 3.50; ค่าเทอม 45,000 บาท/ภาค",
    },
    {
        "project_code": "kmutnb-fitm-portfolio-1",
        "program_code": FITM_IT_CODE,
        "slots_available": 15,
        "program_notes": "รหัส 06101 รับ 15 คน; ภาคแรก 21,700 บาท ภาคต่อไป 19,000 บาท",
    },
    {
        "project_code": "kmutnb-fitm-portfolio-1",
        "program_code": FITM_INE_CODE,
        "slots_available": 5,
        "program_notes": "รหัส 06105 รับ 5 คน; ภาคแรก 27,700 บาท ภาคต่อไป 25,000 บาท",
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
        "kmutnb-appsci-portfolio-m6-1",
        CS_BILINGUAL_CODE,
        min_gpax=3.50,
        applicant_qualifications=[
            "กำลังศึกษา ม.6 และจะสำเร็จการศึกษาในปีการศึกษา 2569",
            "ต้องอยู่ในแผนการเรียนที่ประกาศอนุญาตสำหรับรหัส 04111",
        ],
        portfolio_requirements="ยื่นแฟ้มสะสมผลงานตามระบบรับสมัครของมหาวิทยาลัย",
        required_documents=["ผลการเรียน", "Portfolio", "เอกสารตามระบบรับสมัคร"],
        selection_methods=["ผลการเรียน", "Portfolio", "สัมภาษณ์"],
        additional_requirements={
            "program_code_in_announcement": "04111",
            "interview_required": True,
            "tuition_first_and_later_terms": 45000,
            "selection_limit_within_project": 1,
        },
        criteria_summary=(
            "กำลังศึกษา ม.6 ตามแผนการเรียนที่ประกาศอนุญาต; GPAX ≥ 3.50; "
            "คัดเลือกจากผลการเรียน Portfolio และสัมภาษณ์; ค่าเทอม 45,000 บาท/ภาค"
        ),
        official_announcement_url=APPLIED_SCIENCE_PDF,
    ),
    criterion(
        "kmutnb-fitm-portfolio-1",
        FITM_IT_CODE,
        applicant_qualifications=[
            "กำลังศึกษาหรือสำเร็จ ม.6 หรือ ปวช. ในสาขาที่เกี่ยวข้องตามคุณวุฒิที่มหาวิทยาลัยกำหนด"
        ],
        portfolio_requirements=(
            "ส่ง Portfolio เป็น PDF ตามระบบรับสมัคร; ประกาศที่ตรวจไม่กำหนดจำนวนหน้าหรือรูปแบบเฉพาะ"
        ),
        required_documents=["Portfolio PDF", "ระเบียนผลการเรียน", "บัตรประจำตัว", "เอกสารตามระบบรับสมัคร"],
        selection_methods=["Portfolio", "สัมภาษณ์ออนไลน์"],
        additional_requirements={
            "program_code_in_announcement": "06101",
            "written_exam_required": False,
            "interview_mode": "ออนไลน์",
            "tuition_first_term": 21700,
            "tuition_later_terms": 19000,
        },
        criteria_summary=(
            "รับ ม.6 หรือ ปวช. ที่คุณวุฒิตรงตามประกาศ; ไม่มีเกณฑ์ GPAX ขั้นต่ำในประกาศที่ตรวจ; "
            "พิจารณา Portfolio และสัมภาษณ์ออนไลน์; ภาคแรก 21,700 บาท ภาคต่อไป 19,000 บาท"
        ),
        official_announcement_url=FITM_PORTFOLIO_PDF,
    ),
    criterion(
        "kmutnb-fitm-portfolio-1",
        FITM_INE_CODE,
        applicant_qualifications=[
            "กำลังศึกษาหรือสำเร็จ ม.6 หรือ ปวช. ในสาขาที่เกี่ยวข้องตามคุณวุฒิที่มหาวิทยาลัยกำหนด"
        ],
        portfolio_requirements=(
            "ส่ง Portfolio เป็น PDF ตามระบบรับสมัคร; ประกาศที่ตรวจไม่กำหนดจำนวนหน้าหรือรูปแบบเฉพาะ"
        ),
        required_documents=["Portfolio PDF", "ระเบียนผลการเรียน", "บัตรประจำตัว", "เอกสารตามระบบรับสมัคร"],
        selection_methods=["Portfolio", "สัมภาษณ์ออนไลน์"],
        additional_requirements={
            "program_code_in_announcement": "06105",
            "written_exam_required": False,
            "interview_mode": "ออนไลน์",
            "tuition_first_term": 27700,
            "tuition_later_terms": 25000,
        },
        criteria_summary=(
            "รับ ม.6 หรือ ปวช. ที่คุณวุฒิตรงตามประกาศ; ไม่มีเกณฑ์ GPAX ขั้นต่ำในประกาศที่ตรวจ; "
            "พิจารณา Portfolio และสัมภาษณ์ออนไลน์; ภาคแรก 27,700 บาท ภาคต่อไป 25,000 บาท"
        ),
        official_announcement_url=FITM_PORTFOLIO_PDF,
    ),
]


def event(project_code, event_name, start_on, end_on, date_display):
    return {
        "project_code": project_code,
        "event_name": event_name,
        "start_on": start_on,
        "end_on": end_on,
        "date_display": date_display,
        "date_status": "confirmed",
    }


TIMELINE = [
    event("kmutnb-appsci-portfolio-m6-1", "รับสมัคร", "2026-09-01", "2026-10-31", "1 ก.ย.–31 ต.ค. 2569"),
    event("kmutnb-appsci-portfolio-m6-1", "ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์", "2026-11-19", "2026-11-19", "19 พ.ย. 2569"),
    event("kmutnb-appsci-portfolio-m6-1", "สอบสัมภาษณ์", "2026-11-28", "2026-11-28", "28 พ.ย. 2569"),
    event("kmutnb-appsci-portfolio-m6-1", "ประกาศผลสอบคัดเลือก", "2026-12-08", "2026-12-08", "8 ธ.ค. 2569"),
    event("kmutnb-appsci-portfolio-m6-1", "ยืนยันสิทธิ์ Clearing House", "2027-03-10", "2027-03-11", "10–11 มี.ค. 2570"),
    event("kmutnb-fitm-portfolio-1", "รับสมัคร", "2026-09-01", "2026-11-10", "1 ก.ย.–10 พ.ย. 2569"),
    event("kmutnb-fitm-portfolio-1", "ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์", "2026-11-19", "2026-11-19", "19 พ.ย. 2569"),
    event("kmutnb-fitm-portfolio-1", "ส่งเอกสารให้ครบ", "2026-11-19", "2026-11-25", "ภายใน 25 พ.ย. 2569"),
    event("kmutnb-fitm-portfolio-1", "สอบสัมภาษณ์ออนไลน์", "2026-11-28", "2026-11-28", "28 พ.ย. 2569 เวลา 09.00–12.00 น."),
    event("kmutnb-fitm-portfolio-1", "ประกาศผลสอบคัดเลือก", "2026-12-08", "2026-12-08", "8 ธ.ค. 2569"),
    event("kmutnb-fitm-portfolio-1", "ยืนยันสิทธิ์ Clearing House", "2027-03-10", "2027-03-11", "10–11 มี.ค. 2570"),
    event("kmutnb-fitm-portfolio-1", "ชำระเงินยืนยันเข้าศึกษา (หลักสูตร 4 ปี)", "2027-03-16", "2027-03-22", "16–22 มี.ค. 2570"),
]

AUDIT_SOURCES = [
    {
        "url": ADMISSION_URL,
        "publisher": "มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ",
        "classification": "used_primary_index",
        "academic_year": 2570,
        "decision": "หน้ารอบ 1 มีประกาศใหม่ของคณะวิทยาศาสตร์ประยุกต์และคณะเทคโนโลยีและการจัดการอุตสาหกรรม จึงนำเข้าจาก PDF เฉพาะโครงการที่ตรงขอบเขต",
    },
    {
        "url": APPLIED_SCIENCE_PDF,
        "publisher": "คณะวิทยาศาสตร์ประยุกต์ มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ",
        "classification": "imported_primary",
        "academic_year": 2570,
        "decision": "นำเข้าวิทยาการคอมพิวเตอร์หลักสูตรสองภาษา รหัส 04111 จำนวน 10 คน GPAX 3.50 พร้อมกำหนดการและค่าเทอม",
    },
    {
        "url": FITM_PORTFOLIO_PDF,
        "publisher": "คณะเทคโนโลยีและการจัดการอุตสาหกรรม มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ",
        "classification": "imported_primary",
        "academic_year": 2570,
        "decision": "นำเข้าเทคโนโลยีสารสนเทศ 15 คนและวิศวกรรมสารสนเทศและเครือข่าย 5 คน พร้อมกำหนดการและค่าเทอมรายหลักสูตร",
    },
    {
        "url": COMPUTER_ENGINEERING_URL,
        "publisher": "คณะวิศวกรรมศาสตร์ มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ",
        "classification": "imported_primary_supporting",
        "academic_year": 2570,
        "decision": "ยืนยันหลักสูตรวิศวกรรมคอมพิวเตอร์ แต่ยังไม่พบโครงการ TCAS70 เฉพาะหลักสูตรนี้ในประกาศที่ตรวจ",
    },
    {
        "url": COMPUTER_SCIENCE_URL,
        "publisher": "คณะวิทยาศาสตร์ประยุกต์ มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ",
        "classification": "imported_primary_supporting",
        "academic_year": 2570,
        "decision": "ยืนยันหน่วยงานหลักสูตร และแยกหลักสูตรสองภาษาที่ประกาศรับออกจากหลักสูตรภาษาไทยเดิม",
    },
    {
        "url": INFORMATICS_URL,
        "publisher": "คณะเทคโนโลยีสารสนเทศและนวัตกรรมดิจิทัล มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ",
        "classification": "imported_primary_supporting",
        "academic_year": 2570,
        "decision": "ยืนยันหลักสูตรวิทยาการสารสนเทศเพื่อเศรษฐกิจดิจิทัล และยังไม่สร้างเกณฑ์ที่ไม่พบในประกาศรอบ 1",
    },
    {
        "url": FITM_IT_URL,
        "publisher": "คณะเทคโนโลยีและการจัดการอุตสาหกรรม มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ",
        "classification": "imported_primary_supporting",
        "academic_year": 2570,
        "decision": "ยืนยันรายการหลักสูตร IT และวิศวกรรมสารสนเทศและเครือข่าย; เกณฑ์รับสมัครใช้ PDF TCAS70 โดยตรง",
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


def programs_with_preserved_previews(data):
    existing = {item["code"]: item for item in data["programs"]}
    result = []
    for base in PROGRAMS:
        item = dict(base)
        previews = list(existing.get(item["code"], {}).get("admission_previews") or [])
        if item["code"] in CONFIRMED_PROGRAM_CODES:
            previews = [
                preview
                for preview in previews
                if not (
                    preview.get("reference_academic_year") == 2570
                    and "ยังไม่พบโครงการ TCAS70" in preview.get("note", "")
                )
            ]
        if previews:
            item["admission_previews"] = previews
        result.append(item)
    return result


def main():
    data = json.loads(DATASET_PATH.read_text(encoding="utf-8"))
    data["checked_at"] = CHECKED_AT
    runtime_codes = data.setdefault("runtime_local_project_codes", [])
    for code in (item["code"] for item in PROJECTS):
        if code not in runtime_codes:
            runtime_codes.append(code)
    programs = programs_with_preserved_previews(data)
    upsert(data["universities"], [UNIVERSITY], lambda item: item["short_name"])
    upsert(data["programs"], programs, lambda item: item["code"])
    upsert(data["projects"], PROJECTS, lambda item: item["code"])
    upsert(data["project_programs"], PROJECT_PROGRAMS, lambda item: (item["project_code"], item["program_code"]))
    upsert(data["criteria"], CRITERIA, lambda item: (item["project_code"], item["program_code"]))
    upsert(data["timeline"], TIMELINE, lambda item: (item["project_code"], item["event_name"]))
    DATASET_PATH.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    audit = json.loads(AUDIT_PATH.read_text(encoding="utf-8"))
    audit["checked_at"] = CHECKED_AT
    upsert(audit["sources"], AUDIT_SOURCES, lambda item: item["url"])
    AUDIT_PATH.write_text(json.dumps(audit, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

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
        f"Imported {len(programs)} KMUTNB programs, {len(PROJECTS)} TCAS70 "
        f"projects, and {len(PROJECT_PROGRAMS)} project/program links"
    )


if __name__ == "__main__":
    main()
