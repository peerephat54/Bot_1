"""Import official Srinakharinwirot University TCAS70 Portfolio data.

The central SWU admission announcement is the source of truth for the
application dates, fees, seats, round variants, and course-specific criteria.
This importer intentionally adds only the Science, Engineering, and
environmental-technology courses in the bot's scope. It does not invent a
standalone Information Technology course or copy TCAS69 criteria.
"""

import json
from pathlib import Path

from generate_seed_sql import generate


ROOT = Path(__file__).resolve().parents[1]
DATASET_PATH = ROOT / "datasets" / "tcas70_admissions.json"
AUDIT_PATH = ROOT / "datasets" / "tcas70_source_audit.json"
DELTA_SQL_PATH = ROOT / "seed_swu_tcas70.sql"
CHECKED_AT = "2026-08-29T12:00:00+07:00"

ADMISSION_INDEX_URL = "https://admission.swu.ac.th/admissions2/"
ADMISSION_NOTICE_URL = (
    "https://admission.swu.ac.th/admissions2/news_content.php?nid=1200"
)
PROGRAM_LIST_URL = (
    "https://admission.swu.ac.th/admissions2/news_content.php?nid=1177"
)
PORTFOLIO_FORMAT_URL = (
    "https://admission.swu.ac.th/admissions2/news_content.php?nid=1196"
)
ADMISSION_PDF_URL = (
    "https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf"
)
SOURCE_TITLE = (
    "ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 "
    "Portfolio ประจำปีการศึกษา 2570"
)

UNIVERSITY = {
    "name": "มหาวิทยาลัยศรีนครินทรวิโรฒ",
    "short_name": "SWU",
    "logo_url": None,
}

CAMPUSES = [
    {
        "university_short_name": "SWU",
        "code": "prasan-mit",
        "name": "ประสานมิตร",
        "is_main": True,
        "official_url": ADMISSION_NOTICE_URL,
    },
    {
        "university_short_name": "SWU",
        "code": "ongkharak",
        "name": "องครักษ์",
        "is_main": False,
        "official_url": ADMISSION_NOTICE_URL,
    },
]


def catalog_program(code, faculty_name, major_name, program_type, language, campus):
    return {
        "university_short_name": "SWU",
        "code": code,
        "faculty_name": faculty_name,
        "major_name": major_name,
        "program_type": program_type,
        "language": language,
        "curriculum_credits": None,
        "curriculum_year": None,
        "duration_years": 4,
        "official_program_url": ADMISSION_NOTICE_URL,
        "data_status": "official",
        "campus_code": campus,
    }


PROGRAMS = [
    catalog_program(
        "swu-ece-environmental-technology",
        "คณะวัฒนธรรมสิ่งแวดล้อมและการท่องเที่ยวเชิงนิเวศ",
        "เทคโนโลยีสิ่งแวดล้อมและทรัพยากร",
        "วิทยาศาสตรบัณฑิต",
        "ไทย",
        "ongkharak",
    ),
    catalog_program(
        "swu-ece-climate-environment",
        "คณะวัฒนธรรมสิ่งแวดล้อมและการท่องเที่ยวเชิงนิเวศ",
        "วิทยาการการเปลี่ยนแปลงสภาพภูมิอากาศและสิ่งแวดล้อม",
        "วิทยาศาสตรบัณฑิต",
        "ไทย",
        "ongkharak",
    ),
    catalog_program(
        "swu-science-mathematics",
        "คณะวิทยาศาสตร์",
        "คณิตศาสตร์",
        "วิทยาศาสตรบัณฑิต",
        "ไทย",
        "prasan-mit",
    ),
    catalog_program(
        "swu-science-statistics",
        "คณะวิทยาศาสตร์",
        "สถิติ",
        "วิทยาศาสตรบัณฑิต",
        "ไทย",
        "prasan-mit",
    ),
    catalog_program(
        "swu-science-chemistry",
        "คณะวิทยาศาสตร์",
        "เคมี",
        "วิทยาศาสตรบัณฑิต",
        "ไทย",
        "prasan-mit",
    ),
    catalog_program(
        "swu-science-microbiology",
        "คณะวิทยาศาสตร์",
        "จุลชีววิทยา",
        "วิทยาศาสตรบัณฑิต",
        "ไทย",
        "prasan-mit",
    ),
    catalog_program(
        "swu-science-biology",
        "คณะวิทยาศาสตร์",
        "ชีววิทยา",
        "วิทยาศาสตรบัณฑิต",
        "ไทย",
        "prasan-mit",
    ),
    catalog_program(
        "swu-science-materials",
        "คณะวิทยาศาสตร์",
        "วัสดุศาสตร์",
        "วิทยาศาสตรบัณฑิต",
        "ไทย",
        "prasan-mit",
    ),
    catalog_program(
        "swu-engineering-chemical",
        "คณะวิศวกรรมศาสตร์",
        "วิศวกรรมเคมี",
        "วิศวกรรมศาสตรบัณฑิต",
        "ไทย",
        "ongkharak",
    ),
    catalog_program(
        "swu-engineering-mechanical",
        "คณะวิศวกรรมศาสตร์",
        "วิศวกรรมเครื่องกล",
        "วิศวกรรมศาสตรบัณฑิต",
        "ไทย",
        "ongkharak",
    ),
    catalog_program(
        "swu-engineering-civil",
        "คณะวิศวกรรมศาสตร์",
        "วิศวกรรมโยธา",
        "วิศวกรรมศาสตรบัณฑิต",
        "ไทย",
        "ongkharak",
    ),
    catalog_program(
        "swu-engineering-industrial",
        "คณะวิศวกรรมศาสตร์",
        "วิศวกรรมอุตสาหการ",
        "วิศวกรรมศาสตรบัณฑิต",
        "ไทย",
        "ongkharak",
    ),
    catalog_program(
        "swu-engineering-biomedical",
        "คณะวิศวกรรมศาสตร์",
        "วิศวกรรมชีวการแพทย์",
        "วิศวกรรมศาสตรบัณฑิต",
        "ไทย",
        "ongkharak",
    ),
    catalog_program(
        "swu-engineering-computer",
        "คณะวิศวกรรมศาสตร์",
        "วิศวกรรมคอมพิวเตอร์",
        "วิศวกรรมศาสตรบัณฑิต",
        "ไทย",
        "ongkharak",
    ),
    catalog_program(
        "swu-engineering-electrical-power",
        "คณะวิศวกรรมศาสตร์",
        "วิศวกรรมไฟฟ้า - วิชาเอกวิศวกรรมไฟฟ้ากำลัง",
        "วิศวกรรมศาสตรบัณฑิต",
        "ไทย",
        "ongkharak",
    ),
    catalog_program(
        "swu-engineering-telecom-it",
        "คณะวิศวกรรมศาสตร์",
        "วิศวกรรมไฟฟ้า - วิชาเอกวิศวกรรมโทรคมนาคมและเทคโนโลยีสารสนเทศ",
        "วิศวกรรมศาสตรบัณฑิต",
        "ไทย",
        "ongkharak",
    ),
    catalog_program(
        "swu-engineering-logistics-bilingual",
        "คณะวิศวกรรมศาสตร์",
        "วิศวกรรมโลจิสติกส์ (หลักสูตร 2 ภาษา)",
        "วิศวกรรมศาสตรบัณฑิต",
        "ไทยและอังกฤษ",
        "ongkharak",
    ),
    catalog_program(
        "swu-engineering-environmental",
        "คณะวิศวกรรมศาสตร์",
        "วิศวกรรมสิ่งแวดล้อม",
        "วิศวกรรมศาสตรบัณฑิต",
        "ไทย",
        "ongkharak",
    ),
    catalog_program(
        "swu-engineering-petroleum-renewable",
        "คณะวิศวกรรมศาสตร์",
        "วิศวกรรมปิโตรเลียมและพลังงานหมุนเวียน (หลักสูตรนานาชาติ)",
        "วิศวกรรมศาสตรบัณฑิต",
        "อังกฤษ",
        "ongkharak",
    ),
    catalog_program(
        "swu-engineering-cybersecurity",
        "คณะวิศวกรรมศาสตร์",
        "วิศวกรรมด้านความปลอดภัยไซเบอร์ (หลักสูตรนานาชาติ)",
        "วิศวกรรมศาสตรบัณฑิต",
        "อังกฤษ",
        "ongkharak",
    ),
]


def _round_semesters(round_variant):
    return 4 if round_variant == "1.1" else 5


def _round_schedule(round_variant):
    if round_variant == "1.1":
        return [
            ("รับสมัคร", "2026-08-18", "2026-09-16", "18 ส.ค. - 16 ก.ย. 2569 (ปิด 15.00 น. วันที่ 16 ก.ย.)"),
            ("ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์", "2026-10-21", None, "21 ต.ค. 2569"),
            ("สอบสัมภาษณ์", "2026-11-07", "2026-11-08", "7 - 8 พ.ย. 2569"),
            ("ประกาศผลผู้ผ่านการคัดเลือก", "2026-11-17", None, "17 พ.ย. 2569"),
            ("ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว", "2026-11-17", "2026-11-18", "17 - 18 พ.ย. 2569"),
            ("ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.", "2027-03-10", None, "10 มี.ค. 2570"),
            ("ยืนยันสิทธิ์ในระบบ ทปอ.", "2027-03-10", "2027-03-11", "10 - 11 มี.ค. 2570"),
            ("ประกาศผู้มีสิทธิ์เข้าศึกษา", "2027-03-14", None, "14 มี.ค. 2570"),
        ]
    return [
        ("รับสมัคร", "2026-12-01", "2026-12-16", "1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)"),
        ("ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์", "2027-01-26", None, "26 ม.ค. 2570"),
        ("สอบสัมภาษณ์", "2027-02-13", "2027-02-14", "13 - 14 ก.พ. 2570"),
        ("ประกาศผลผู้ผ่านการคัดเลือก", "2027-02-23", None, "23 ก.พ. 2570"),
        ("ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว", "2027-02-23", "2027-02-24", "23 - 24 ก.พ. 2570"),
        ("ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.", "2027-03-10", None, "10 มี.ค. 2570"),
        ("ยืนยันสิทธิ์ในระบบ ทปอ.", "2027-03-10", "2027-03-11", "10 - 11 มี.ค. 2570"),
        ("ประกาศผู้มีสิทธิ์เข้าศึกษา", "2027-03-14", None, "14 มี.ค. 2570"),
    ]


def _event(project_code, name, start_on, end_on, display):
    return {
        "project_code": project_code,
        "event_name": name,
        "start_on": start_on,
        "end_on": end_on,
        "date_display": display,
        "date_status": "confirmed",
    }


def _timeline(project_code, round_variant):
    return [
        _event(project_code, name, start_on, end_on, display)
        for name, start_on, end_on, display in _round_schedule(round_variant)
    ]


COMMON_ACHIEVEMENTS = [
    "ผลงานหรือรางวัลทางวิชาการที่เกี่ยวข้องกับสาขา",
    "โครงงานวิจัยหรือโครงงานที่เกี่ยวข้องกับวิทยาศาสตร์ เทคโนโลยี หรือวิศวกรรม",
    "กิจกรรม ค่าย หรือการอบรมที่เกี่ยวข้องกับสาขา",
    "เกียรติบัตรหรือหลักฐานการเข้าร่วมแข่งขันที่เกี่ยวข้อง",
]

SCIENCE_ACHIEVEMENTS = [
    "ผลงานแข่งขันหรือกิจกรรมวิชาการด้านวิทยาศาสตร์ คณิตศาสตร์ หรือคอมพิวเตอร์",
    "โครงงานวิทยาศาสตร์ พร้อมหลักฐานหรือใบประกาศ (ถ้ามี)",
    "กิจกรรมผู้นำและกิจกรรมจิตสาธารณะ",
]

ENGINEERING_PORTFOLIO = (
    "ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น "
    "คัดเลือกผลงานที่ดีที่สุด รวมประวัติส่วนตัว ผลการเรียน และกิจกรรมที่เข้าร่วม "
    "จำนวนหน้ารวมไม่เกิน 10 หน้า"
)

SCIENCE_PORTFOLIO = (
    "ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น "
    "แนบประวัติส่วนตัว ผลการเรียน หนังสือรับรอง กิจกรรม และผลงานตามที่สาขากำหนด"
)

ECE_PORTFOLIO = (
    "ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น "
    "จำนวนหน้ารวมไม่เกิน 15 หน้า และคัดเลือกผลงานที่ดีที่สุดตามรายละเอียดของสาขา"
)

COMMON_DOCUMENTS = [
    "TCASFolio ไฟล์ PDF",
    "ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด",
]


def _project(program_key, slug, title, round_variant, slots, page):
    code = f"swu-{program_key}-{slug}-{round_variant.replace('.', '-')}"
    return {
        "university_short_name": "SWU",
        "code": code,
        "group_code": f"swu-{program_key}-{slug}",
        "name": f"{title} • TCAS {round_variant}",
        "academic_year": 2570,
        "tcas_round": 1,
        "round_label": "1 Portfolio",
        "round_variant": round_variant,
        "application_type": "Portfolio",
        "publication_status": "official",
        "is_visible": True,
        "selection_order_limit": None,
        "application_fee": 600,
        "tuition_fee_per_semester": None,
        "source_url": ADMISSION_PDF_URL,
        "source_title": SOURCE_TITLE,
        "source_published_at": "2026-08-07",
        "source_checked_at": CHECKED_AT,
        "data_notes": (
            f"ประกาศทางการ มศว. TCAS70 หน้า {page}; ตารางแผนการรับนิสิตหน้า 12 "
            f"ระบุจำนวนรับของโครงการ/สาขานี้ {slots} คน; ค่าสมัคร 600 บาท "
            "ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้"
        ),
    }


def _criteria(
    project,
    program_key,
    *,
    min_gpax,
    subject_credits=None,
    subject_gpax=None,
    accepted_school_types=None,
    portfolio_requirements,
    portfolio_details,
    accepted_achievements,
    required_documents=None,
    selection_methods,
    additional_requirements=None,
    min_english_score=None,
    criteria_summary,
):
    round_variant = project["round_variant"]
    semesters = _round_semesters(round_variant)
    qualifications = [
        (
            "ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม "
            f"{semesters} ภาคการศึกษาในรอบ {round_variant}; "
            "ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา"
        ),
    ]
    if accepted_school_types:
        qualifications.append("กลุ่มวุฒิ/สถานศึกษาที่รับ: " + accepted_school_types)
    if subject_credits:
        qualifications.append(
            "หน่วยกิตกลุ่มสาระขั้นต่ำ: "
            + ", ".join(f"{name} {value} หน่วยกิต" for name, value in subject_credits.items())
        )

    additional = dict(additional_requirements or {})
    additional.setdefault("ค่าสมัคร", "600 บาท")
    additional.setdefault("การส่งแฟ้ม", "อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน")
    if subject_credits:
        additional.setdefault("หน่วยกิตกลุ่มสาระ", subject_credits)
    if subject_gpax:
        additional.setdefault("คะแนนเฉลี่ยกลุ่มสาระ", subject_gpax)

    return {
        "project_code": project["code"],
        "program_code": f"swu-{program_key}",
        "min_gpax": min_gpax,
        "gpax_requirements": {
            "studying_semesters": semesters,
            "graduated_semesters": 6,
        },
        "subject_gpax": subject_gpax or {},
        "min_english_score": min_english_score or {},
        "standardized_scores": {},
        "applicant_qualifications": qualifications,
        "portfolio_requirements": portfolio_requirements,
        "portfolio_details": portfolio_details,
        "accepted_achievements": accepted_achievements,
        "required_documents": required_documents or COMMON_DOCUMENTS,
        "selection_methods": selection_methods,
        "additional_requirements": additional,
        "criteria_summary": criteria_summary,
        "official_announcement_url": ADMISSION_PDF_URL,
    }


PROJECTS = []
PROJECT_PROGRAMS = []
CRITERIA = []
TIMELINE = []


def add_record(
    program_key,
    slug,
    title,
    round_variant,
    slots,
    page,
    *,
    min_gpax,
    portfolio_requirements,
    portfolio_details,
    accepted_achievements,
    selection_methods,
    subject_credits=None,
    subject_gpax=None,
    accepted_school_types=None,
    required_documents=None,
    additional_requirements=None,
    min_english_score=None,
    criteria_summary,
):
    project = _project(program_key, slug, title, round_variant, slots, page)
    criterion = _criteria(
        project,
        program_key,
        min_gpax=min_gpax,
        subject_credits=subject_credits,
        subject_gpax=subject_gpax,
        accepted_school_types=accepted_school_types,
        portfolio_requirements=portfolio_requirements,
        portfolio_details=portfolio_details,
        accepted_achievements=accepted_achievements,
        required_documents=required_documents,
        selection_methods=selection_methods,
        additional_requirements=additional_requirements,
        min_english_score=min_english_score,
        criteria_summary=criteria_summary,
    )
    PROJECTS.append(project)
    PROJECT_PROGRAMS.append(
        {
            "project_code": project["code"],
            "program_code": criterion["program_code"],
            "slots_available": slots,
            "program_notes": f"จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: {slots} คน",
        }
    )
    CRITERIA.append(criterion)
    TIMELINE.extend(_timeline(project["code"], round_variant))


ECE_SELECTION = ["แฟ้มสะสมผลงาน 30%", "สอบสัมภาษณ์ 70%"]
ECE_TALENT_SELECTION = ["แฟ้มสะสมผลงาน 30%", "สอบสัมภาษณ์ 70%"]
ECE_DETAILS = {
    "portfolio_required": True,
    "max_pages": 15,
    "portfolio_format": "TCASFolio PDF เท่านั้น",
    "portfolio_weight_percent": 30,
    "interview_weight_percent": 70,
}

for round_variant, page, slots, science_credits in (
    ("1.1", 112, 5, {"คณิตศาสตร์": 6, "วิทยาศาสตร์และเทคโนโลยี": 12}),
    ("1.2", 129, 5, {"คณิตศาสตร์": 6, "วิทยาศาสตร์และเทคโนโลยี": 22}),
):
    add_record(
        "ece-environmental-technology",
        "good-student",
        "โครงการเด็กดีมีที่เรียน - เทคโนโลยีสิ่งแวดล้อมและทรัพยากร",
        round_variant,
        slots,
        page,
        min_gpax=2.50,
        subject_credits=science_credits,
        accepted_school_types="หลักสูตรแกนกลาง, กศน. สายวิทย์-คณิต หรือ GED ตามประกาศ",
        portfolio_requirements=ECE_PORTFOLIO,
        portfolio_details=ECE_DETAILS,
        accepted_achievements=[
            "กิจกรรมหรือผลงานทางวิทยาศาสตร์ที่แสดงความสนใจด้านสิ่งแวดล้อมและทรัพยากร",
            "คำตอบคำถามเพิ่มเติมของสาขาเกี่ยวกับปัญหาสิ่งแวดล้อม",
        ],
        selection_methods=ECE_SELECTION,
        additional_requirements={
            "คำถามเพิ่มเติม": "3 ข้อ ข้อละไม่เกิน 1000 ตัวอักษร ตามหน้ารายละเอียดของสาขา",
        },
        criteria_summary=(
            f"GPAX อย่างน้อย 2.50; หน่วยกิตคณิตศาสตร์ {science_credits['คณิตศาสตร์']} "
            f"และวิทยาศาสตร์/เทคโนโลยี {science_credits['วิทยาศาสตร์และเทคโนโลยี']} หน่วยกิต; "
            "Portfolio 30% + สัมภาษณ์ 70%"
        ),
    )
    add_record(
        "ece-environmental-technology",
        "special-talent",
        "โครงการผู้มีทักษะพิเศษ - เทคโนโลยีสิ่งแวดล้อมและทรัพยากร",
        round_variant,
        slots,
        page + 2,
        min_gpax=2.50,
        subject_credits=science_credits,
        accepted_school_types="หลักสูตรแกนกลาง, กศน. สายวิทย์-คณิต หรือ GED ตามประกาศ",
        portfolio_requirements=ECE_PORTFOLIO,
        portfolio_details=ECE_DETAILS,
        accepted_achievements=[
            "ผ่านค่ายสิ่งแวดล้อม/ค่ายอนุรักษ์สิ่งแวดล้อมและทรัพยากรอย่างน้อย 1 ค่าย",
            "หรือมีรางวัล/ใบประกาศจากการแข่งขันที่สัมพันธ์กับสาขา",
            "กิจกรรมหรือผลงานทางวิทยาศาสตร์ด้านสิ่งแวดล้อมและทรัพยากร",
        ],
        selection_methods=ECE_TALENT_SELECTION,
        additional_requirements={
            "คำถามเพิ่มเติม": "3 ข้อ ข้อละไม่เกิน 1000 ตัวอักษร ตามหน้ารายละเอียดของสาขา",
            "เงื่อนไขผลงาน": "ต้องมีค่ายสิ่งแวดล้อม/กิจกรรมที่เกี่ยวข้อง หรือรางวัลตามประกาศ",
        },
        criteria_summary=(
            f"GPAX อย่างน้อย 2.50; หน่วยกิตคณิตศาสตร์ {science_credits['คณิตศาสตร์']} "
            f"และวิทยาศาสตร์/เทคโนโลยี {science_credits['วิทยาศาสตร์และเทคโนโลยี']} หน่วยกิต; "
            "ต้องมีค่าย/กิจกรรมหรือรางวัลด้านสิ่งแวดล้อม; Portfolio 30% + สัมภาษณ์ 70%"
        ),
    )

for round_variant, page, slots, min_gpax, talent in (
    ("1.1", 126, 5, 2.00, False),
    ("1.1", 127, 5, 2.50, True),
    ("1.2", 141, 5, 2.00, False),
    ("1.2", 143, 5, 2.50, True),
):
    add_record(
        "ece-climate-environment",
        "special-talent" if talent else "good-student",
        (
            "โครงการผู้มีทักษะพิเศษ - วิทยาการการเปลี่ยนแปลงสภาพภูมิอากาศและสิ่งแวดล้อม"
            if talent
            else "โครงการเด็กดีมีที่เรียน - วิทยาการการเปลี่ยนแปลงสภาพภูมิอากาศและสิ่งแวดล้อม"
        ),
        round_variant,
        slots,
        page,
        min_gpax=min_gpax,
        accepted_school_types="หลักสูตรแกนกลาง, หลักสูตรนานาชาติ, ปวช., กศน. หรือ GED ตามประกาศ",
        portfolio_requirements=ECE_PORTFOLIO,
        portfolio_details={
            **ECE_DETAILS,
            "portfolio_weight_percent": 70,
            "interview_weight_percent": 30,
        },
        accepted_achievements=(
            [
                "ผ่านค่ายสิ่งแวดล้อม/ค่ายอนุรักษ์สิ่งแวดล้อมและทรัพยากรอย่างน้อย 1 ค่าย",
                "หรือมีรางวัล/ใบประกาศจากการแข่งขันที่สัมพันธ์กับสาขา",
                "ผลงานที่แสดงการประยุกต์ใช้เทคโนโลยีสิ่งแวดล้อมกับความสามารถพิเศษ",
            ]
            if talent
            else [
                "ผลงานที่แสดงการประยุกต์ใช้เทคโนโลยีสิ่งแวดล้อมกับความสามารถพิเศษ",
                "คำตอบคำถามเพิ่มเติมเกี่ยวกับความสนใจและผลงานด้านสิ่งแวดล้อม",
            ]
        ),
        selection_methods=["แฟ้มสะสมผลงาน 70%", "สอบสัมภาษณ์ 30%"],
        additional_requirements={
            "คำถามเพิ่มเติม": "3 ข้อ ข้อละไม่เกิน 2000 ตัวอักษร/รูป ตามประกาศ",
            **(
                {"เงื่อนไขผลงาน": "ต้องมีค่าย/กิจกรรมหรือรางวัลด้านสิ่งแวดล้อมตามประกาศ"}
                if talent
                else {}
            ),
        },
        criteria_summary=(
            f"GPAX อย่างน้อย {min_gpax:.2f}; "
            + ("ต้องมีค่าย/กิจกรรมหรือรางวัลด้านสิ่งแวดล้อม; " if talent else "")
            + "Portfolio 70% + สัมภาษณ์ 30%"
        ),
    )


SCIENCE_COMMON_DETAILS = {
    "portfolio_required": True,
    "portfolio_format": "TCASFolio PDF เท่านั้น",
}
SCIENCE_METHODS_50_50 = ["แฟ้มสะสมผลงาน 50%", "สัมภาษณ์ 50%"]

add_record(
    "science-mathematics",
    "good-student",
    "โครงการเด็กดีมีที่เรียน - คณิตศาสตร์",
    "1.2",
    20,
    151,
    min_gpax=2.75,
    subject_credits={
        "คณิตศาสตร์": 12,
        "วิทยาศาสตร์และเทคโนโลยี": 22,
        "ภาษาต่างประเทศ": 9,
    },
    accepted_school_types="หลักสูตรแกนกลาง",
    portfolio_requirements=SCIENCE_PORTFOLIO + " ไม่กำหนดจำนวนหน้า",
    portfolio_details=SCIENCE_COMMON_DETAILS,
    accepted_achievements=[
        "ผลงานการแข่งขันวิชาการด้านคณิตศาสตร์หรือวิทยาศาสตร์",
        "กิจกรรมวิชาการ ผู้นำนักเรียน หรือกิจกรรมจิตอาสา",
        "โครงงาน/ความสามารถโดดเด่น/ความสนใจด้านคณิตศาสตร์",
    ],
    selection_methods=SCIENCE_METHODS_50_50,
    additional_requirements={
        "คำถามเพิ่มเติม": "แสดงกิจกรรม/ผลงานและหลักฐานการเข้าร่วมตามหัวข้อของสาขา",
    },
    criteria_summary=(
        "GPAX อย่างน้อย 2.75; หน่วยกิตคณิตศาสตร์ 12, วิทยาศาสตร์/เทคโนโลยี 22 "
        "และภาษาต่างประเทศ 9 หน่วยกิต; Portfolio 50% + สัมภาษณ์ 50%"
    ),
)

add_record(
    "science-statistics",
    "good-student",
    "โครงการเด็กดีมีที่เรียน - สถิติ",
    "1.2",
    10,
    152,
    min_gpax=2.75,
    subject_credits={"คณิตศาสตร์": 12},
    subject_gpax={"คณิตศาสตร์": 3.00},
    accepted_school_types="หลักสูตรแกนกลาง และรับเฉพาะนักเรียนชั้นปีล่าสุด",
    portfolio_requirements=SCIENCE_PORTFOLIO + " ไม่กำหนดจำนวนหน้า",
    portfolio_details=SCIENCE_COMMON_DETAILS,
    accepted_achievements=[
        "ผลงานหรือกิจกรรมทางสถิติ คณิตศาสตร์ หรือวิทยาการข้อมูล",
        "กิจกรรมวิชาการ ผู้นำนักเรียน หรือกิจกรรมจิตอาสา",
    ],
    selection_methods=SCIENCE_METHODS_50_50,
    additional_requirements={
        "คำถามเพิ่มเติม": "ระบุความสามารถพิเศษที่เกี่ยวข้องกับสถิติ คณิตศาสตร์ หรือวิทยาการข้อมูล",
    },
    criteria_summary=(
        "GPAX อย่างน้อย 2.75; หน่วยกิตคณิตศาสตร์ 12 หน่วยกิต; "
        "คะแนนเฉลี่ยคณิตศาสตร์อย่างน้อย 3.00; Portfolio 50% + สัมภาษณ์ 50%"
    ),
)


CHEMISTRY_PORTFOLIO_DETAILS = {
    "portfolio_required": True,
    "portfolio_format": "TCASFolio PDF เท่านั้น",
    "portfolio_weight_percent": 80,
    "academic_record_weight_percent": 10,
    "essay_weight_percent": 10,
}
CHEMISTRY_METHODS = ["แฟ้มสะสมผลงาน 80%", "ผลการเรียน 10%", "เรียงความ 10%"]
CHEMISTRY_ACHIEVEMENTS = [
    "ผลงานวิชาการด้านวิทยาศาสตร์ คณิตศาสตร์ หรือคอมพิวเตอร์",
    "กิจกรรมผู้นำ/การบริหารจัดการ และกิจกรรมจิตสาธารณะ",
    "รางวัลหรือเกียรติบัตรด้านวิทยาศาสตร์ตามประกาศ",
    "คลิปวิดีโอไม่เกิน 5 นาทีหรือเรียงความ ออกแบบการแก้ปัญหาด้วยกระบวนการทางวิทยาศาสตร์",
]

for round_variant, page, slots, credits in (
    ("1.1", 145, 8, {"คณิตศาสตร์": 6, "วิทยาศาสตร์และเทคโนโลยี": 15}),
    ("1.2", 154, 20, {"คณิตศาสตร์": 12, "วิทยาศาสตร์และเทคโนโลยี": 22}),
):
    for talent, talent_page, talent_slots in (
        (False, page, slots),
        (True, page + 2, 2),
    ):
        add_record(
            "science-chemistry",
            "special-talent" if talent else "good-student",
            "โครงการผู้มีทักษะพิเศษ - เคมี" if talent else "โครงการเด็กดีมีที่เรียน - เคมี",
            round_variant,
            talent_slots,
            talent_page,
            min_gpax=2.75,
            subject_credits=credits,
            subject_gpax={
                "คณิตศาสตร์": 2.75,
                "วิทยาศาสตร์และเทคโนโลยี": 2.75,
            },
            accepted_school_types="หลักสูตรแกนกลาง",
            portfolio_requirements=SCIENCE_PORTFOLIO + " ไม่กำหนดจำนวนหน้า; ผลงานแต่ละด้านไม่เกิน 4 ผลงาน",
            portfolio_details=CHEMISTRY_PORTFOLIO_DETAILS,
            accepted_achievements=(
                CHEMISTRY_ACHIEVEMENTS
                + (
                    [
                        "ผ่าน สอวน. อย่างน้อย 1 ค่าย หรือได้รับรางวัลระดับชาติ/นานาชาติด้านวิทยาศาสตร์",
                    ]
                    if talent
                    else []
                )
            ),
            selection_methods=CHEMISTRY_METHODS,
            additional_requirements={
                "คำถามเพิ่มเติม": "ตอบโจทย์การออกแบบการแก้ปัญหาด้วยกระบวนการทางวิทยาศาสตร์",
                **(
                    {"เงื่อนไขผู้มีทักษะพิเศษ": "ผ่าน สอวน. อย่างน้อย 1 ค่าย หรือมีรางวัลวิทยาศาสตร์ระดับชาติ/นานาชาติ"}
                    if talent
                    else {}
                ),
            },
            criteria_summary=(
                f"GPAX อย่างน้อย 2.75; หน่วยกิตคณิตศาสตร์ {credits['คณิตศาสตร์']} "
                f"และวิทยาศาสตร์/เทคโนโลยี {credits['วิทยาศาสตร์และเทคโนโลยี']} หน่วยกิต; "
                + ("ต้องมี สอวน. หรือรางวัลวิทยาศาสตร์ตามประกาศ; " if talent else "")
                + "Portfolio 80% + ผลการเรียน 10% + เรียงความ 10%"
            ),
        )


BIOLOGY_DETAILS = {
    "portfolio_required": True,
    "max_pages": 10,
    "portfolio_format": "TCASFolio PDF เท่านั้น",
    "portfolio_weight_percent": 70,
    "academic_record_weight_percent": 30,
}
for round_variant, page, slots, science_credits in (
    ("1.1", 149, 10, 24),
    ("1.2", 162, 60, 28),
):
    add_record(
        "science-biology",
        "good-student",
        "โครงการเด็กดีมีที่เรียน - ชีววิทยา",
        round_variant,
        slots,
        page,
        min_gpax=2.50,
        subject_credits={"วิทยาศาสตร์และเทคโนโลยี": science_credits},
        accepted_school_types="หลักสูตรแกนกลาง และรับเฉพาะนักเรียนชั้นปีล่าสุด",
        portfolio_requirements=(
            "ส่ง TCASFolio เท่านั้น จำนวนรวมไม่เกิน 10 หน้า; "
            "เรียงความความตั้งใจเรียนและเป้าหมายชีวิต 250 - 300 คำ"
        ),
        portfolio_details=BIOLOGY_DETAILS,
        accepted_achievements=[
            "โครงงานวิทยาศาสตร์ (ถ้ามี) พร้อมสรุปเนื้อหา 150 - 200 คำ",
            "กิจกรรมและผลงานที่แสดงความสนใจด้านชีววิทยา/วิทยาศาสตร์",
        ],
        selection_methods=["แฟ้มสะสมผลงาน 70%", "ผลการเรียน 30%"],
        additional_requirements={
            "คำถามเพิ่มเติม": "สรุปโครงงานวิทยาศาสตร์ (ถ้ามี) และเขียนเรียงความความตั้งใจเรียน/เป้าหมายชีวิต",
            "หนังสือรับรอง": "ไม่จำเป็นต้องแนบหนังสือรับรอง",
        },
        criteria_summary=(
            f"GPAX อย่างน้อย 2.50; หน่วยกิตวิทยาศาสตร์และเทคโนโลยี {science_credits} หน่วยกิต; "
            "Portfolio 70% + ผลการเรียน 30%"
        ),
    )

MATERIALS_DETAILS = {
    "portfolio_required": True,
    "portfolio_format": "TCASFolio PDF เท่านั้น",
}
for round_variant, page, slots, credits in (
    ("1.1", 150, 10, {"คณิตศาสตร์": 10, "วิทยาศาสตร์และเทคโนโลยี": 20}),
    ("1.2", 163, 10, {"คณิตศาสตร์": 12, "วิทยาศาสตร์และเทคโนโลยี": 20}),
):
    add_record(
        "science-materials",
        "good-student",
        "โครงการเด็กดีมีที่เรียน - วัสดุศาสตร์",
        round_variant,
        slots,
        page,
        min_gpax=2.50,
        subject_credits=credits,
        accepted_school_types="หลักสูตรแกนกลาง, หลักสูตรนานาชาติ, ปวช., กศน. หรือ GED ตามประกาศ",
        portfolio_requirements=(
            "ส่ง TCASFolio เท่านั้น ไม่กำหนดจำนวนหน้า; รวมประวัติส่วนตัว ผลการเรียน "
            "หนังสือรับรอง โครงงาน กิจกรรม การอบรม และรางวัลตามรายละเอียดสาขา"
        ),
        portfolio_details=MATERIALS_DETAILS,
        accepted_achievements=[
            "โครงงานวิทยาศาสตร์และกิจกรรมในโรงเรียน/จิตอาสา",
            "การอบรมพัฒนาตนเองและเกียรติบัตร/รางวัลที่ดีที่สุด",
            "เรียงความแสดงความตั้งใจและเหตุผลในการสมัคร",
        ],
        selection_methods=[
            "แฟ้มสะสมผลงาน",
            "ผลการเรียน",
            "เรียงความ ทัศนคติ และบุคลิกภาพ",
        ],
        additional_requirements={
            "คำถามเพิ่มเติม": "เขียนเรียงความแสดงความตั้งใจและเหตุผลในการสมัคร",
        },
        criteria_summary=(
            f"GPAX อย่างน้อย 2.50; หน่วยกิตคณิตศาสตร์ {credits['คณิตศาสตร์']} "
            f"และวิทยาศาสตร์/เทคโนโลยี {credits['วิทยาศาสตร์และเทคโนโลยี']} หน่วยกิต; "
            "พิจารณา Portfolio ผลการเรียน เรียงความ ทัศนคติ และบุคลิกภาพ"
        ),
    )

MICROBIOLOGY_DETAILS = {
    "portfolio_required": True,
    "portfolio_format": "TCASFolio PDF เท่านั้น และโปสเตอร์โครงงานเป็น JPG 1 หน้า",
}
for talent, page, slots, weights in (
    (False, 158, 38, ["แฟ้มสะสมผลงาน 25%", "ผลการเรียนและคะแนนพื้นฐาน 25%", "โครงงานวิทยาศาสตร์ 50%"]),
    (True, 160, 2, ["แฟ้มสะสมผลงาน 20%", "ผลการเรียนและคะแนนพื้นฐาน 20%", "โครงงานวิทยาศาสตร์ 40%", "เกณฑ์การผ่านค่ายทักษะพิเศษ 20%"]),
):
    add_record(
        "science-microbiology",
        "special-talent" if talent else "good-student",
        "โครงการผู้มีทักษะพิเศษ - จุลชีววิทยา" if talent else "โครงการเด็กดีมีที่เรียน - จุลชีววิทยา",
        "1.2",
        slots,
        page,
        min_gpax=3.25,
        subject_credits={"คณิตศาสตร์": 12, "วิทยาศาสตร์และเทคโนโลยี": 22},
        subject_gpax={"คณิตศาสตร์": 3.00, "วิทยาศาสตร์และเทคโนโลยี": 3.00},
        accepted_school_types="หลักสูตรแกนกลาง, หลักสูตรนานาชาติ, กศน. หรือ GED ตามประกาศ",
        portfolio_requirements=(
            "ส่ง TCASFolio เท่านั้น ไม่จำกัดจำนวนหน้า; ผลงานที่ดีที่สุดไม่เกิน 10 ผลงาน; "
            "แนบโปสเตอร์โครงงานวิจัยทางวิทยาศาสตร์ JPG 1 หน้า"
        ),
        portfolio_details=MICROBIOLOGY_DETAILS,
        accepted_achievements=[
            "โครงงานวิจัยทางวิทยาศาสตร์และโปสเตอร์สรุปโครงงาน",
            "ค่ายหรือโครงการพัฒนาทักษะพิเศษ/วิชาการ เช่น ค่าย สอวน.",
            "ผลงานหรือกิจกรรมที่เกี่ยวข้องกับวิทยาศาสตร์",
        ],
        required_documents=[
            "TCASFolio",
            "หนังสือรับรองจากผู้อำนวยการ (JPG)",
            "ใบ ปพ. รวม 5 ภาคการศึกษา (JPG)",
            "โปสเตอร์โครงงานวิจัยทางวิทยาศาสตร์ 1 หน้า (JPG)",
        ],
        selection_methods=weights,
        additional_requirements={
            "คำถามเพิ่มเติม": "อธิบายโครงงาน ที่มาและความสำคัญ; ระบุค่าย/โครงการที่เคยเข้าร่วม",
            **(
                {"เงื่อนไขผู้มีทักษะพิเศษ": "ระบุค่าย/โครงการพัฒนาทักษะพิเศษหรือวิชาการ และระดับที่ผ่าน"}
                if talent
                else {}
            ),
        },
        criteria_summary=(
            "GPAX อย่างน้อย 3.25; หน่วยกิตคณิตศาสตร์ 12 และวิทยาศาสตร์/เทคโนโลยี 22 หน่วยกิต; "
            + ("ต้องแสดงเกณฑ์ผ่านค่ายทักษะพิเศษ; " if talent else "")
            + "โครงงานวิทยาศาสตร์เป็นองค์ประกอบหลักตามสัดส่วนประกาศ"
        ),
    )


ENGINEERING_SUBJECTS = {
    "standard": {"คณิตศาสตร์": 12, "วิทยาศาสตร์และเทคโนโลยี": 22},
    "power": {"คณิตศาสตร์": 10, "วิทยาศาสตร์และเทคโนโลยี": 18},
}
ENGINEERING_DETAILS = {
    "portfolio_required": True,
    "max_pages": 10,
    "portfolio_format": "TCASFolio PDF เท่านั้น",
}
ENGINEERING_METHODS = [
    "แฟ้มสะสมผลงาน: ด้านวิชาการและกิจกรรมที่เกี่ยวข้องกับสาขา",
    "สอบสัมภาษณ์ตามกำหนดการของประกาศ",
]

for program_key, title, slots, page, min_gpax, subject_credits, subject_gpax in (
    ("engineering-chemical", "วิศวกรรมเคมี", 15, 165, 2.75, ENGINEERING_SUBJECTS["standard"], {}),
    ("engineering-mechanical", "วิศวกรรมเครื่องกล", 24, 166, 2.75, ENGINEERING_SUBJECTS["standard"], {}),
    ("engineering-civil", "วิศวกรรมโยธา", 15, 167, 2.75, ENGINEERING_SUBJECTS["standard"], {}),
    ("engineering-industrial", "วิศวกรรมอุตสาหการ", 15, 168, 2.75, ENGINEERING_SUBJECTS["standard"], {}),
    (
        "engineering-biomedical",
        "วิศวกรรมชีวการแพทย์",
        18,
        169,
        3.00,
        ENGINEERING_SUBJECTS["standard"],
        {"คณิตศาสตร์": 3.00, "วิทยาศาสตร์และเทคโนโลยี": 3.00},
    ),
    ("engineering-computer", "วิศวกรรมคอมพิวเตอร์", 15, 170, 2.75, ENGINEERING_SUBJECTS["standard"], {}),
    (
        "engineering-electrical-power",
        "วิศวกรรมไฟฟ้า - วิชาเอกวิศวกรรมไฟฟ้ากำลัง",
        12,
        171,
        3.00,
        ENGINEERING_SUBJECTS["power"],
        {},
    ),
    (
        "engineering-telecom-it",
        "วิศวกรรมไฟฟ้า - วิชาเอกวิศวกรรมโทรคมนาคมและเทคโนโลยีสารสนเทศ",
        12,
        172,
        3.00,
        ENGINEERING_SUBJECTS["power"],
        {},
    ),
    (
        "engineering-logistics-bilingual",
        "วิศวกรรมโลจิสติกส์ (หลักสูตร 2 ภาษา)",
        15,
        173,
        3.00,
        ENGINEERING_SUBJECTS["standard"],
        {"คณิตศาสตร์": 2.50, "วิทยาศาสตร์และเทคโนโลยี": 2.50},
    ),
    (
        "engineering-environmental",
        "วิศวกรรมสิ่งแวดล้อม",
        10,
        175,
        2.50,
        ENGINEERING_SUBJECTS["standard"],
        {"คณิตศาสตร์": 2.50, "วิทยาศาสตร์และเทคโนโลยี": 2.50},
    ),
):
    add_record(
        program_key,
        "good-student",
        f"โครงการเด็กดีมีที่เรียน - {title}",
        "1.2",
        slots,
        page,
        min_gpax=min_gpax,
        subject_credits=subject_credits,
        subject_gpax=subject_gpax,
        accepted_school_types="หลักสูตรแกนกลาง" if program_key not in {"engineering-biomedical"} else "หลักสูตรแกนกลางหรือหลักสูตรนานาชาติ",
        portfolio_requirements=ENGINEERING_PORTFOLIO,
        portfolio_details=ENGINEERING_DETAILS,
        accepted_achievements=COMMON_ACHIEVEMENTS,
        selection_methods=ENGINEERING_METHODS,
        additional_requirements={
            "เงื่อนไขผลงาน": "ต้องมีโครงงาน/ค่าย/การอบรม/รางวัล หรือพื้นฐานการเรียนด้านวิทยาศาสตร์หรือวิศวกรรมตามประกาศ",
        },
        criteria_summary=(
            f"GPAX อย่างน้อย {min_gpax:.2f}; หน่วยกิตตามประกาศของสาขา; "
            "Portfolio ต้องแสดงผลงาน/กิจกรรมที่เกี่ยวข้อง และมีการสอบสัมภาษณ์"
        ),
    )

for program_key, title, slots, page in (
    (
        "engineering-petroleum-renewable",
        "วิศวกรรมปิโตรเลียมและพลังงานหมุนเวียน (หลักสูตรนานาชาติ)",
        6,
        176,
    ),
    (
        "engineering-cybersecurity",
        "วิศวกรรมด้านความปลอดภัยไซเบอร์ (หลักสูตรนานาชาติ)",
        6,
        178,
    ),
):
    add_record(
        program_key,
        "special-talent",
        f"โครงการผู้มีทักษะพิเศษ - {title}",
        "1.2",
        slots,
        page,
        min_gpax=2.50,
        subject_credits={"คณิตศาสตร์": 12, "วิทยาศาสตร์และเทคโนโลยี": 22},
        subject_gpax={"คณิตศาสตร์": 2.50, "วิทยาศาสตร์และเทคโนโลยี": 2.50},
        accepted_school_types="หลักสูตรแกนกลาง, หลักสูตรนานาชาติ, ปวช. หรือ GED ตามประกาศ",
        portfolio_requirements=ENGINEERING_PORTFOLIO,
        portfolio_details=ENGINEERING_DETAILS,
        accepted_achievements=COMMON_ACHIEVEMENTS,
        selection_methods=ENGINEERING_METHODS,
        min_english_score={
            "IELTS": {
                "score": 5.0,
                "operator": "≥",
                "note": "หรือ CU-TEP/TU-GET/SWU-SET ระดับ B2; ผลสอบอายุไม่เกิน 2 ปี",
            }
        },
        additional_requirements={
            "เงื่อนไขผลงาน": "ต้องมีโครงงาน/ค่าย/การอบรม/รางวัล หรือพื้นฐานการเรียนด้านวิทยาศาสตร์หรือวิศวกรรมตามประกาศ",
            "ภาษาอังกฤษ": "IELTS อย่างน้อย 5.0 หรือ CU-TEP/TU-GET/SWU-SET ระดับ B2",
        },
        criteria_summary=(
            "GPAX อย่างน้อย 2.50; หน่วยกิตคณิตศาสตร์ 12 และวิทยาศาสตร์/เทคโนโลยี 22 หน่วยกิต; "
            "คะแนนเฉลี่ยกลุ่มสาระอย่างน้อย 2.50; มีคะแนนภาษาอังกฤษตามประกาศ; "
            "ส่ง TCASFolio ไม่เกิน 10 หน้า"
        ),
    )


SWU_CALENDAR = {
    "code": "swu-portfolio-2570",
    "university_short_name": "SWU",
    "campus_codes": ["prasan-mit", "ongkharak"],
    "program_codes": [program["code"] for program in PROGRAMS],
    "title": "ปฏิทิน มศว. • TCAS รอบ 1 Portfolio",
    "academic_year": 2570,
    "source_url": ADMISSION_PDF_URL,
    "evidence_url": ADMISSION_NOTICE_URL,
    "source_checked_at": CHECKED_AT,
    "scope_note": (
        "ปฏิทินกลางของ มศว. ใช้เป็นวันสมัครและวันประกาศผลระดับมหาวิทยาลัย; "
        "เกณฑ์คุณสมบัติและจำนวนรับต้องดูรายละเอียดของแต่ละสาขา"
    ),
    "rounds": [
        {
            "label": "Portfolio 1.1",
            "application_start_on": "2026-08-18",
            "application_end_on": "2026-09-16",
            "result_announcement_on": "2026-11-17",
            "date_status": "confirmed",
            "interview_eligible_on": "2026-10-21",
            "interview_on": "2026-11-07",
        },
        {
            "label": "Portfolio 1.2",
            "application_start_on": "2026-12-01",
            "application_end_on": "2026-12-16",
            "result_announcement_on": "2027-02-23",
            "date_status": "confirmed",
            "interview_eligible_on": "2027-01-26",
            "interview_on": "2027-02-13",
        },
    ],
}

AUDIT_SOURCES = [
    {
        "url": ADMISSION_INDEX_URL,
        "publisher": "ส่วนส่งเสริมและบริการการศึกษา มหาวิทยาลัยศรีนครินทรวิโรฒ",
        "classification": "used_primary_index",
        "academic_year": 2570,
        "source_checked_at": CHECKED_AT,
        "decision": (
            "ใช้เป็นดัชนีข่าวและช่องทางสมัครทางการของ มศว.; "
            "ตรวจพบประกาศ TCAS70 รอบ 1 Portfolio"
        ),
    },
    {
        "url": ADMISSION_NOTICE_URL,
        "publisher": "ส่วนส่งเสริมและบริการการศึกษา มหาวิทยาลัยศรีนครินทรวิโรฒ",
        "classification": "imported_primary",
        "academic_year": 2570,
        "source_checked_at": CHECKED_AT,
        "decision": (
            "ยืนยันรอบ 1.1 สมัคร 18 ส.ค. - 16 ก.ย. 2569, รอบ 1.2 "
            "สมัคร 1 - 16 ธ.ค. 2569, ค่าสมัคร 600 บาท และโครงการที่เปิดรับ"
        ),
    },
    {
        "url": PROGRAM_LIST_URL,
        "publisher": "ส่วนส่งเสริมและบริการการศึกษา มหาวิทยาลัยศรีนครินทรวิโรฒ",
        "classification": "imported_primary_supporting",
        "academic_year": 2570,
        "source_checked_at": CHECKED_AT,
        "decision": (
            "ใช้ตรวจรายการหลักสูตร/สาขา/วิชาเอกที่เปิดรับใน TCAS รอบ 1 - 3 "
            "ประกอบกับรายละเอียดแนบท้ายฉบับรับสมัคร"
        ),
    },
    {
        "url": PORTFOLIO_FORMAT_URL,
        "publisher": "ส่วนส่งเสริมและบริการการศึกษา มหาวิทยาลัยศรีนครินทรวิโรฒ",
        "classification": "imported_primary_supporting",
        "academic_year": 2570,
        "source_checked_at": CHECKED_AT,
        "decision": "ใช้ยืนยันแนวทางการจัดทำและส่ง TCASFolio รอบ 1 Portfolio",
    },
    {
        "url": ADMISSION_PDF_URL,
        "publisher": "มหาวิทยาลัยศรีนครินทรวิโรฒ",
        "classification": "imported_primary",
        "academic_year": 2570,
        "source_checked_at": CHECKED_AT,
        "decision": (
            "นำเข้าเกณฑ์รายสาขา จำนวนรับ GPAX หน่วยกิต/คะแนนเฉลี่ย "
            "รูปแบบผลงาน เอกสาร และกำหนดการจากรายละเอียดแนบท้ายหน้า 12 - 179"
        ),
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
    upsert(data["universities"], [UNIVERSITY], lambda item: item["short_name"])
    upsert(
        data.setdefault("campuses", []),
        CAMPUSES,
        lambda item: (item["university_short_name"], item["code"]),
    )
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
    upsert(
        data["timeline"],
        TIMELINE,
        lambda item: (item["project_code"], item["event_name"]),
    )
    upsert(
        data.setdefault("university_admission_calendars", []),
        [SWU_CALENDAR],
        lambda item: item["code"],
    )
    local_project_codes = data.setdefault("runtime_local_project_codes", [])
    for project in PROJECTS:
        if project["code"] not in local_project_codes:
            local_project_codes.append(project["code"])
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
        "campuses": CAMPUSES,
        "programs": PROGRAMS,
        "projects": PROJECTS,
        "project_programs": PROJECT_PROGRAMS,
        "criteria": CRITERIA,
        "timeline": TIMELINE,
    }
    DELTA_SQL_PATH.write_text(generate(delta), encoding="utf-8", newline="\n")

    print(
        f"Imported {len(PROGRAMS)} SWU programs, {len(PROJECTS)} projects, "
        f"{len(CRITERIA)} criteria rows and {len(TIMELINE)} timeline events; "
        f"generated {DELTA_SQL_PATH.name}"
    )


if __name__ == "__main__":
    main()
