"""Import official KMITL TCAS70 computer-related admission records.

The registrar's announcement index and signed faculty announcements cover
computer engineering at Chumphon and computer science at the Faculty of
Science. The computer-technology teacher curriculum is deliberately removed
from this bot's IT scope. Provisional School of IT criteria remain hidden until
their page no longer states that it is waiting for an official announcement.
"""

import json
from pathlib import Path

from generate_seed_sql import generate


ROOT = Path(__file__).resolve().parents[1]
DATASET_PATH = ROOT / "datasets" / "tcas70_admissions.json"
AUDIT_PATH = ROOT / "datasets" / "tcas70_source_audit.json"
DELTA_SQL_PATH = ROOT / "seed_kmitl_tcas70.sql"
CHECKED_AT = "2026-08-23T23:37:03+07:00"

REMOVED_PROGRAM_CODES = {"kmitl-siet-computer-technology"}
REMOVED_PROJECT_CODES = {"kmitl-siet-computer-tech-teacher-portfolio"}

INDEX_URL = "https://admission.reg.kmitl.ac.th/"
IT_DRAFT_URL = "https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1"
SCIENCE_CS_URL = (
    "https://www.science.kmitl.ac.th/curriculums/bachelor/computer-science-2569"
)
SCIENCE_PORTFOLIO_PDF = (
    "https://www.reg.kmitl.ac.th/TCAS_old/news/files/"
    "2570_1_news1_4640_2026_08_23-19-39-43_c47b2.pdf"
)
TEACHER_PDF = (
    "https://www.reg.kmitl.ac.th/TCAS_old/news/files/"
    "2570_1_news1_4637_2026_08_14-10-07-35_bf889.pdf"
)
PORTFOLIO_PDF = (
    "https://reg.kmitl.ac.th/TCAS_old/news/files/"
    "2570_1_news1_4629_2026_08_04-11-01-24_a74b5.pdf"
)
GOOD_STUDENT_PDF = (
    "https://reg.kmitl.ac.th/TCAS_old/news/files/"
    "2570_1_news1_4630_2026_08_04-11-03-46_94eee.pdf"
)
NETWORK_PDF = (
    "https://reg.kmitl.ac.th/TCAS_old/news/files/"
    "2570_1_news1_4633_2026_08_04-11-33-47_8fcf4.pdf"
)
POTENTIAL_PDF = (
    "https://reg.kmitl.ac.th/TCAS_old/news/files/"
    "2570_1_news1_4632_2026_08_04-11-30-08_2461b.pdf"
)


PROGRAMS = [
    {
        "university_short_name": "KMITL",
        "code": "kmitl-science-computer-science",
        "faculty_name": "คณะวิทยาศาสตร์",
        "major_name": "วิทยาการคอมพิวเตอร์",
        "program_type": "ปริญญาตรี",
        "language": None,
        "curriculum_credits": 130,
        "curriculum_year": 2569,
        "duration_years": None,
        "official_program_url": SCIENCE_CS_URL,
        "data_status": "official",
    },
    {
        "university_short_name": "KMITL",
        "code": "kmitl-chumphon-computer-engineering",
        "faculty_name": "วิทยาเขตชุมพรเขตรอุดมศักดิ์",
        "major_name": "วิศวกรรมคอมพิวเตอร์",
        "program_type": "ปริญญาตรี",
        "language": "ไทย",
        "curriculum_credits": None,
        "curriculum_year": None,
        "duration_years": 4,
        "official_program_url": INDEX_URL,
        "data_status": "official",
    },
]


SCIENCE_PROJECT_SPECS = [
    ("good-student", "โครงการเรียนดี", ("1.1", "1.2")),
    (
        "science-talent",
        "โครงการความสามารถพิเศษทางวิทยาศาสตร์",
        ("1.1", "1.2"),
    ),
    (
        "staff-child",
        "โครงการบุตรบุคลากร สจล.",
        ("1.1", "1.2"),
    ),
    (
        "professional-developer",
        "โครงการนักพัฒนามืออาชีพ",
        ("1.2",),
    ),
]


SCIENCE_PROJECTS = [
    {
        "university_short_name": "KMITL",
        "code": (
            f"kmitl-science-cs-{project_slug}-{round_variant.replace('.', '-')}"
        ),
        "group_code": f"kmitl-science-cs-{project_slug}",
        "name": f"{project_name} {round_variant}",
        "academic_year": 2570,
        "tcas_round": 1,
        "round_label": "1 Portfolio",
        "round_variant": round_variant,
        "application_type": "Portfolio",
        "publication_status": "official",
        "is_visible": True,
        "selection_order_limit": 2,
        "application_fee": 300,
        "tuition_fee_per_semester": 19000,
        "source_url": SCIENCE_PORTFOLIO_PDF,
        "source_title": (
            "ประกาศรับสมัครรอบที่ 1 Portfolio คณะวิทยาศาสตร์ สจล. "
            "ประจำปีการศึกษา 2570"
        ),
        "source_published_at": "2026-08-23",
        "source_checked_at": CHECKED_AT,
        "data_notes": (
            f"ประกาศลงวันที่ 21 สิงหาคม 2569; รอบ {round_variant} "
            "รับวิทยาการคอมพิวเตอร์รวม 25 คนทุกโครงการ และไม่ได้แยกจำนวนรับรายโครงการ"
        ),
    }
    for project_slug, project_name, round_variants in SCIENCE_PROJECT_SPECS
    for round_variant in round_variants
]


PROJECTS = [
    *SCIENCE_PROJECTS,
    {
        "university_short_name": "KMITL",
        "code": "kmitl-chumphon-cpe-portfolio-1-1",
        "group_code": "kmitl-chumphon-cpe-portfolio",
        "name": "แฟ้มสะสมผลงาน 1-1 (วิทยาเขตชุมพรเขตรอุดมศักดิ์)",
        "academic_year": 2570,
        "tcas_round": 1,
        "round_label": "1 Portfolio",
        "round_variant": "1.1",
        "application_type": "Portfolio",
        "publication_status": "official",
        "is_visible": True,
        "selection_order_limit": None,
        "application_fee": 300,
        "tuition_fee_per_semester": 20000,
        "source_url": PORTFOLIO_PDF,
        "source_title": "ประกาศ Portfolio รอบ 1-1 ถึง 1-5 วิทยาเขตชุมพรเขตรอุดมศักดิ์ TCAS70",
        "source_published_at": "2026-08-03",
        "source_checked_at": CHECKED_AT,
        "data_notes": "ประกาศทางการครอบคลุมรอบ 1-1 ถึง 1-5; CURRICULUM_ID 14142, PROJECT_ID 2409 เป็นรายการรอบ 1-1 ในระบบสมัคร",
    },
    {
        "university_short_name": "KMITL",
        "code": "kmitl-chumphon-cpe-good-student-14plus-1-1",
        "group_code": "kmitl-chumphon-cpe-good-student-14plus",
        "name": "โครงการเรียนดี 14 จังหวัดพลัส 1-1 (วิทยาเขตชุมพรเขตรอุดมศักดิ์)",
        "academic_year": 2570,
        "tcas_round": 1,
        "round_label": "1 Portfolio",
        "round_variant": "1.1",
        "application_type": "Portfolio",
        "publication_status": "official",
        "is_visible": True,
        "selection_order_limit": None,
        "application_fee": 300,
        "tuition_fee_per_semester": 20000,
        "source_url": GOOD_STUDENT_PDF,
        "source_title": "ประกาศโครงการเรียนดี 14 จังหวัดพลัส วิทยาเขตชุมพรเขตรอุดมศักดิ์ TCAS70",
        "source_published_at": "2026-08-03",
        "source_checked_at": CHECKED_AT,
        "data_notes": "รายการทางการในระบบรับสมัคร: CURRICULUM_ID 14157, PROJECT_ID 2410",
    },
    {
        "university_short_name": "KMITL",
        "code": "kmitl-chumphon-cpe-network-1-1",
        "group_code": "kmitl-chumphon-cpe-network",
        "name": "โครงการโรงเรียนหรือวิทยาลัยในเครือข่าย สจล.-ชุมพร 1-1",
        "academic_year": 2570,
        "tcas_round": 1,
        "round_label": "1 Portfolio",
        "round_variant": "1.1",
        "application_type": "Portfolio",
        "publication_status": "official",
        "is_visible": True,
        "selection_order_limit": None,
        "application_fee": 300,
        "tuition_fee_per_semester": 20000,
        "source_url": NETWORK_PDF,
        "source_title": "ประกาศโครงการโรงเรียนหรือวิทยาลัยในเครือข่าย สจล.-ชุมพร TCAS70",
        "source_published_at": "2026-08-03",
        "source_checked_at": CHECKED_AT,
        "data_notes": "ประกาศทางการครอบคลุมรอบ 1-1 และ 1-2; CURRICULUM_ID 14171, PROJECT_ID 2411 เป็นรายการรอบ 1-1 ในระบบสมัคร",
    },
    {
        "university_short_name": "KMITL",
        "code": "kmitl-chumphon-cpe-potential-1-1",
        "group_code": "kmitl-chumphon-cpe-potential",
        "name": "โครงการผู้มีศักยภาพด้านวิศวกรรมและเทคโนโลยี 1-1",
        "academic_year": 2570,
        "tcas_round": 1,
        "round_label": "1 Portfolio",
        "round_variant": "1.1",
        "application_type": "Portfolio",
        "publication_status": "official",
        "is_visible": True,
        "selection_order_limit": None,
        "application_fee": 300,
        "tuition_fee_per_semester": 20000,
        "source_url": POTENTIAL_PDF,
        "source_title": "ประกาศโครงการผู้มีศักยภาพด้านวิศวกรรมและเทคโนโลยี วิทยาเขตชุมพรเขตรอุดมศักดิ์ TCAS70",
        "source_published_at": "2026-08-03",
        "source_checked_at": CHECKED_AT,
        "data_notes": "ประกาศทางการครอบคลุมรอบ 1-1 และ 1-2; CURRICULUM_ID 14187, PROJECT_ID 2413 เป็นรายการรอบ 1-1 ในระบบสมัคร",
    },
    *[
        {
            "university_short_name": "KMITL",
            "code": f"kmitl-chumphon-cpe-portfolio-{variant.replace('.', '-')}",
            "group_code": "kmitl-chumphon-cpe-portfolio",
            "name": f"แฟ้มสะสมผลงาน {variant.replace('.', '-')} (วิทยาเขตชุมพรเขตรอุดมศักดิ์)",
            "academic_year": 2570,
            "tcas_round": 1,
            "round_label": "1 Portfolio",
            "round_variant": variant,
            "application_type": "Portfolio",
            "publication_status": "official",
            "is_visible": True,
            "selection_order_limit": None,
            "application_fee": 300,
            "tuition_fee_per_semester": 20000,
            "source_url": PORTFOLIO_PDF,
            "source_title": "ประกาศ Portfolio รอบ 1-1 ถึง 1-5 วิทยาเขตชุมพรเขตรอุดมศักดิ์ TCAS70",
            "source_published_at": "2026-08-03",
            "source_checked_at": CHECKED_AT,
            "data_notes": f"ประกาศทางการระบุรอบ {variant}; จำนวนรับวิศวกรรมคอมพิวเตอร์ 40 คนเป็นยอดรวมรอบ 1-1 ถึง 1-5",
        }
        for variant in ("1.2", "1.3", "1.4", "1.5")
    ],
    {
        "university_short_name": "KMITL",
        "code": "kmitl-chumphon-cpe-network-1-2",
        "group_code": "kmitl-chumphon-cpe-network",
        "name": "โครงการโรงเรียนหรือวิทยาลัยในเครือข่าย สจล.-ชุมพร 1-2",
        "academic_year": 2570,
        "tcas_round": 1,
        "round_label": "1 Portfolio",
        "round_variant": "1.2",
        "application_type": "Portfolio",
        "publication_status": "official",
        "is_visible": True,
        "selection_order_limit": None,
        "application_fee": 300,
        "tuition_fee_per_semester": 20000,
        "source_url": NETWORK_PDF,
        "source_title": "ประกาศโครงการโรงเรียนหรือวิทยาลัยในเครือข่าย สจล.-ชุมพร TCAS70",
        "source_published_at": "2026-08-03",
        "source_checked_at": CHECKED_AT,
        "data_notes": "ประกาศทางการระบุรอบ 1-2; จำนวนรับวิศวกรรมคอมพิวเตอร์ 15 คนเป็นยอดรวมรอบ 1-1 และ 1-2",
    },
    {
        "university_short_name": "KMITL",
        "code": "kmitl-chumphon-cpe-potential-1-2",
        "group_code": "kmitl-chumphon-cpe-potential",
        "name": "โครงการผู้มีศักยภาพด้านวิศวกรรมและเทคโนโลยี 1-2",
        "academic_year": 2570,
        "tcas_round": 1,
        "round_label": "1 Portfolio",
        "round_variant": "1.2",
        "application_type": "Portfolio",
        "publication_status": "official",
        "is_visible": True,
        "selection_order_limit": None,
        "application_fee": 300,
        "tuition_fee_per_semester": 20000,
        "source_url": POTENTIAL_PDF,
        "source_title": "ประกาศโครงการผู้มีศักยภาพด้านวิศวกรรมและเทคโนโลยี วิทยาเขตชุมพรเขตรอุดมศักดิ์ TCAS70",
        "source_published_at": "2026-08-03",
        "source_checked_at": CHECKED_AT,
        "data_notes": "ประกาศทางการระบุรอบ 1-2; จำนวนรับวิศวกรรมคอมพิวเตอร์ 15 คนเป็นยอดรวมรอบ 1-1 และ 1-2",
    },
]


SCIENCE_PROJECT_PROGRAMS = [
    {
        "project_code": project["code"],
        "program_code": "kmitl-science-computer-science",
        "slots_available": None,
        "program_notes": (
            f"ประกาศระบุวิทยาการคอมพิวเตอร์รวม 25 คนในรอบ "
            f"{project['round_variant']} ทุกโครงการ โดยไม่แยกจำนวนรายโครงการ"
        ),
    }
    for project in SCIENCE_PROJECTS
]


PROJECT_PROGRAMS = [
    *SCIENCE_PROJECT_PROGRAMS,
    {
        "project_code": "kmitl-chumphon-cpe-portfolio-1-1",
        "program_code": "kmitl-chumphon-computer-engineering",
        "slots_available": None,
        "program_notes": "ประกาศระบุ 40 คนรวมรอบ 1-1 ถึง 1-5 แต่ไม่แยกจำนวนเฉพาะรอบ 1-1",
    },
    {
        "project_code": "kmitl-chumphon-cpe-good-student-14plus-1-1",
        "program_code": "kmitl-chumphon-computer-engineering",
        "slots_available": 5,
        "program_notes": "จำนวนรับวิศวกรรมคอมพิวเตอร์ 5 คน",
    },
    {
        "project_code": "kmitl-chumphon-cpe-network-1-1",
        "program_code": "kmitl-chumphon-computer-engineering",
        "slots_available": None,
        "program_notes": "ประกาศระบุ 15 คนรวมรอบ 1-1 และ 1-2 แต่ไม่แยกจำนวนเฉพาะรอบ 1-1",
    },
    {
        "project_code": "kmitl-chumphon-cpe-potential-1-1",
        "program_code": "kmitl-chumphon-computer-engineering",
        "slots_available": None,
        "program_notes": "ประกาศระบุ 15 คนรวมรอบ 1-1 และ 1-2 แต่ไม่แยกจำนวนเฉพาะรอบ 1-1",
    },
    *[
        {
            "project_code": f"kmitl-chumphon-cpe-portfolio-{variant}",
            "program_code": "kmitl-chumphon-computer-engineering",
            "slots_available": None,
            "program_notes": f"ประกาศระบุ 40 คนรวมรอบ 1-1 ถึง 1-5 แต่ไม่แยกจำนวนเฉพาะรอบ {variant}",
        }
        for variant in ("1-2", "1-3", "1-4", "1-5")
    ],
    {
        "project_code": "kmitl-chumphon-cpe-network-1-2",
        "program_code": "kmitl-chumphon-computer-engineering",
        "slots_available": None,
        "program_notes": "ประกาศระบุ 15 คนรวมรอบ 1-1 และ 1-2 แต่ไม่แยกจำนวนเฉพาะรอบ 1-2",
    },
    {
        "project_code": "kmitl-chumphon-cpe-potential-1-2",
        "program_code": "kmitl-chumphon-computer-engineering",
        "slots_available": None,
        "program_notes": "ประกาศระบุ 15 คนรวมรอบ 1-1 และ 1-2 แต่ไม่แยกจำนวนเฉพาะรอบ 1-2",
    },
]


CPE_SPECIAL_ACHIEVEMENTS = [
    "ผ่านการอบรมเขียนโปรแกรมจาก 42 Bangkok และได้ประกาศนียบัตรแบบ completion",
    "ผ่านการอบรมเกี่ยวกับ IoT หรือ AI และได้รับประกาศนียบัตร",
    "ทำโครงงานคอมพิวเตอร์เกี่ยวกับเว็บไซต์หรือโมบายแอปพลิเคชันร่วมกับฐานข้อมูล",
    "แข่งขันทักษะด้านคอมพิวเตอร์ IoT หรือ AI และได้รับรางวัล",
    "ได้รับรางวัลโครงงานหรือสิ่งประดิษฐ์ที่เกี่ยวกับคอมพิวเตอร์ IoT หรือ AI",
]

CPE_BASE_QUALIFICATIONS = [
    "กำลังศึกษาหรือสำเร็จ ม.6 แผนวิทย์-คณิต หรือ ปวช. สาขาที่เกี่ยวกับวิศวกรรมคอมพิวเตอร์ เช่น อิเล็กทรอนิกส์หรือสารสนเทศ",
]

CPE_PORTFOLIO = (
    "ส่ง TCASFolio เป็น PDF ผ่านระบบสมัคร; ประวัติไม่เกิน 1 หน้า A4; "
    "หลักฐานผลงาน/รางวัล/กิจกรรม; ประกาศนียบัตรค่ายหรือโครงการวิชาการ (ถ้ามี) "
    "ไม่เกิน 2 ใบ; และข้อความแสดงความสนใจหรือความรู้ในสาขาไม่เกิน 1 หน้า A4"
)


def cpe_criteria(project_code, source_url, min_gpax, extra_qualifications, summary, *, portfolio=CPE_PORTFOLIO, extra_documents=None, additional=None):
    return {
        "project_code": project_code,
        "min_gpax": min_gpax,
        "gpax_requirements": {"semesters": 4, "graduated": "ตลอดหลักสูตร"},
        "subject_gpax": {},
        "min_english_score": {},
        "standardized_scores": {},
        "applicant_qualifications": CPE_BASE_QUALIFICATIONS + extra_qualifications,
        "portfolio_requirements": portfolio,
        "portfolio_details": {
            "portfolio_required": True,
            "portfolio_weight_percent": 50,
            "interview_weight_percent": 50,
        },
        "accepted_achievements": CPE_SPECIAL_ACHIEVEMENTS,
        "required_documents": ["TCASFolio ไฟล์ PDF"] + (extra_documents or []),
        "selection_methods": [
            "แฟ้มสะสมผลงาน (TCASFolio) 50 คะแนน",
            "สัมภาษณ์ 50 คะแนน โดยพิจารณาความเข้าใจในสาขา บุคลิกภาพ และความพร้อมเข้าศึกษา",
        ],
        "additional_requirements": additional or {},
        "criteria_summary": summary,
        "official_announcement_url": source_url,
        "program_code": "kmitl-chumphon-computer-engineering",
    }


SCIENCE_TALENT_ACHIEVEMENTS = [
    "ผ่านการคัดเลือกโครงการพัฒนาอัจฉริยภาพทางวิทยาศาสตร์สำหรับเด็กและเยาวชนของ สวทช. หรือสมาคมวิทยาศาสตร์แห่งประเทศไทย",
    "ผ่านการคัดเลือกการแข่งขันคณิตศาสตร์และวิทยาศาสตร์โอลิมปิกของ สสวท.",
    "ผ่านการสอบและการอบรมโอลิมปิกวิชาการของ สอวน.",
    "มีผลงานหรือรางวัลวิชาการด้านวิทยาศาสตร์-คณิตศาสตร์อย่างน้อย 1 รายการ; สำหรับวิทยาการคอมพิวเตอร์ต้องเป็นระดับจังหวัด ภูมิภาค ชาติ หรือนานาชาติ",
    "ได้รับรางวัลหรือเกียรติบัตรจากงานที่คณะวิทยาศาสตร์ สจล. เป็นเจ้าภาพหรือเจ้าภาพร่วม ยกเว้น Esports",
    "ได้รับรางวัลโครงการแข่งขันเพชรยอดมงกุฎ วิชาคณิตศาสตร์หรือวิทยาศาสตร์",
]

SCIENCE_STUDY_PLANS = [
    "วิทย์-คณิต",
    "ศิลป์-คำนวณ",
    "แผนการเรียนเกี่ยวกับคอมพิวเตอร์",
]


def science_cs_criteria(
    project_slug,
    round_variant,
    min_gpax,
    portfolio_weight,
    transcript_weight,
    *,
    study_plans,
    accepted_achievements=None,
    extra_qualifications=None,
    extra_documents=None,
):
    semesters = 4 if round_variant == "1.1" else 5
    project_code = (
        f"kmitl-science-cs-{project_slug}-{round_variant.replace('.', '-')}"
    )
    qualifications = [
        (
            f"วุฒิไทยใช้ผลการเรียนอย่างน้อย {semesters} ภาคการศึกษา "
            "หรือ 6 ภาคการศึกษาสำหรับผู้สำเร็จการศึกษา"
        ),
        (
            "รับ Grade 12 ระบบอเมริกัน, Year 13 ระบบอังกฤษ หรือ GED; "
            "ตารางประกาศไม่กำหนดแผนการเรียนและผลการเรียนสำหรับวุฒิเหล่านี้"
        ),
    ]
    if isinstance(study_plans, list):
        qualifications.append("แผนการเรียนที่รับ: " + ", ".join(study_plans))
    else:
        qualifications.append(study_plans)
    qualifications.extend(extra_qualifications or [])

    documents = [
        "ใบสมัครที่พิมพ์จากระบบ admission.reg.kmitl.ac.th",
        (
            f"ใบแสดงผลการเรียนอย่างน้อย {semesters} ภาคการศึกษา "
            "หรือ 6 ภาคการศึกษาสำหรับผู้สำเร็จการศึกษา หรือหลักฐาน Grade 12 / Year 13 / GED"
        ),
        "บัตรประจำตัวประชาชนของผู้สมัคร",
    ]
    documents.extend(extra_documents or [])

    gpax_requirements = {
        "วุฒิไทย-กำลังศึกษา": f"อย่างน้อย {semesters} ภาคการศึกษา",
        "วุฒิไทย-สำเร็จแล้ว": "6 ภาคการศึกษา",
        "Grade 12 / Year 13 / GED": "ประกาศไม่กำหนดผลการเรียน",
    }
    subject_gpax = (
        {"กลุ่มคณิตศาสตร์": 3.0, "กลุ่มวิทยาศาสตร์": 3.0}
        if project_slug == "good-student"
        else {}
    )
    grade_method = (
        f"ผลการเรียน {transcript_weight}%" if transcript_weight else None
    )
    selection_methods = [
        f"สอบสัมภาษณ์ 25%",
        f"Portfolio {portfolio_weight}%",
    ]
    if grade_method:
        selection_methods.append(grade_method)

    if project_slug == "good-student":
        criteria_summary = (
            f"วุฒิไทย GPAX อย่างน้อย 3.50 และ GPAX กลุ่มคณิตศาสตร์/วิทยาศาสตร์ "
            f"อย่างละ 3.00; Portfolio {portfolio_weight}% + สัมภาษณ์ 25% + "
            f"ผลการเรียน {transcript_weight}%"
        )
    elif project_slug == "science-talent":
        criteria_summary = (
            f"วุฒิไทย GPAX อย่างน้อย 2.75 และมีผลงานวิทยาศาสตร์-คณิตศาสตร์ตามประกาศ; "
            f"Portfolio {portfolio_weight}% + สัมภาษณ์ 25%"
        )
    elif project_slug == "staff-child":
        criteria_summary = (
            f"วุฒิไทย GPAX อย่างน้อย 2.75 และเป็นบุตรบุคลากร สจล.; "
            f"Portfolio {portfolio_weight}% + สัมภาษณ์ 25%"
        )
    else:
        criteria_summary = (
            "เฉพาะผู้ผ่านการอบรมโครงการนักพัฒนามืออาชีพของภาควิชา"
            f"วิทยาการคอมพิวเตอร์ สจล.; Portfolio {portfolio_weight}% + สัมภาษณ์ 25%"
        )

    return {
        "project_code": project_code,
        "min_gpax": min_gpax,
        "gpax_requirements": gpax_requirements,
        "subject_gpax": subject_gpax,
        "min_english_score": {},
        "standardized_scores": {},
        "applicant_qualifications": qualifications,
        "portfolio_requirements": (
            "คณะกรรมการพิจารณาเฉพาะ Portfolio ที่อยู่ในระบบ "
            "KMITL Student iFolio เท่านั้น"
        ),
        "portfolio_details": {
            "portfolio_required": True,
            "portfolio_weight_percent": portfolio_weight,
            "interview_weight_percent": 25,
            "transcript_weight_percent": transcript_weight,
        },
        "accepted_achievements": accepted_achievements or [],
        "required_documents": documents,
        "selection_methods": selection_methods,
        "additional_requirements": {
            "จำนวนรับ": (
                f"วิทยาการคอมพิวเตอร์รวม 25 คนในรอบ {round_variant} "
                "ทุกโครงการ; ประกาศไม่แยกจำนวนรายโครงการ"
            ),
            "การเลือก": "เลือกได้ 1 โครงการ และเลือกอันดับสาขาวิชาได้สูงสุด 2 สาขา",
            "ระบบ Portfolio": "KMITL Student iFolio",
            "ข่าวประกาศทางการ": "news_id 4640",
        },
        "criteria_summary": criteria_summary,
        "official_announcement_url": SCIENCE_PORTFOLIO_PDF,
        "program_code": "kmitl-science-computer-science",
    }


SCIENCE_CRITERIA = [
    science_cs_criteria(
        "good-student",
        round_variant,
        3.5,
        60,
        15,
        study_plans=SCIENCE_STUDY_PLANS,
    )
    for round_variant in ("1.1", "1.2")
] + [
    science_cs_criteria(
        "science-talent",
        round_variant,
        2.75,
        75,
        0,
        study_plans="ไม่กำหนดแผนการเรียน (สายสามัญเท่านั้น)",
        accepted_achievements=SCIENCE_TALENT_ACHIEVEMENTS,
    )
    for round_variant in ("1.1", "1.2")
] + [
    science_cs_criteria(
        "staff-child",
        round_variant,
        2.75,
        75,
        0,
        study_plans=SCIENCE_STUDY_PLANS,
        extra_qualifications=["ต้องเป็นบุตรบุคลากร สจล."],
        extra_documents=[
            "สำเนาทะเบียนบ้านของผู้สมัคร",
            "สำเนาบัตรข้าราชการหรือบัตรพนักงานของผู้ปกครอง",
        ],
    )
    for round_variant in ("1.1", "1.2")
] + [
    science_cs_criteria(
        "professional-developer",
        "1.2",
        None,
        75,
        0,
        study_plans="ไม่กำหนดแผนการเรียน (สายสามัญเท่านั้น)",
        extra_qualifications=[
            "ผ่านการอบรมโครงการนักพัฒนามืออาชีพของภาควิชาวิทยาการคอมพิวเตอร์ คณะวิทยาศาสตร์ สจล."
        ],
        extra_documents=["เกียรติบัตรผ่านการอบรมโครงการนักพัฒนามืออาชีพ"],
    )
]


CRITERIA = [
    *SCIENCE_CRITERIA,
    cpe_criteria(
        "kmitl-chumphon-cpe-portfolio-1-1",
        PORTFOLIO_PDF,
        3.25,
        ["รับผู้สมัครจากสถานศึกษาทั่วประเทศ"],
        "GPAX 4 ภาคเรียนหรือตลอดหลักสูตรอย่างน้อย 3.25; Portfolio 50 + สัมภาษณ์ 50; ผลงานคอมพิวเตอร์/IoT/AI ได้รับการพิจารณาเป็นกรณีพิเศษ",
        additional={
            "official_curriculum_id": 14142,
            "official_project_id": 2409,
            "announced_variants": ["1.1", "1.2", "1.3", "1.4", "1.5"],
            "announced_slots_across_variants": 40,
        },
    ),
    cpe_criteria(
        "kmitl-chumphon-cpe-good-student-14plus-1-1",
        GOOD_STUDENT_PDF,
        3.5,
        [
            "กำลังศึกษาหรือสำเร็จจากสถานศึกษาใน ชุมพร สุราษฎร์ธานี ระนอง กระบี่ พังงา ภูเก็ต ตรัง นครศรีธรรมราช พัทลุง สงขลา สตูล ปัตตานี ยะลา นราธิวาส ประจวบคีรีขันธ์ เพชรบุรี ราชบุรี นครปฐม หรือกรุงเทพมหานคร",
        ],
        "GPAX 4 ภาคเรียนหรือตลอดหลักสูตรอย่างน้อย 3.50; ต้องอยู่ในพื้นที่ 14 จังหวัดภาคใต้และจังหวัดใกล้เคียงตามรายชื่อประกาศ; Portfolio 50 + สัมภาษณ์ 50",
        additional={"official_curriculum_id": 14157, "official_project_id": 2410},
    ),
    cpe_criteria(
        "kmitl-chumphon-cpe-network-1-1",
        NETWORK_PDF,
        3.25,
        [
            "ต้องสังกัดสถานศึกษาที่มีข้อตกลงกับ สจล. วิทยาเขตชุมพร และได้รับการเสนอชื่อจากสถานศึกษา",
        ],
        "GPAX 4 ภาคเรียนหรือตลอดหลักสูตรอย่างน้อย 3.25; ต้องมาจากสถานศึกษาเครือข่ายและได้รับการเสนอชื่อ; Portfolio 50 + สัมภาษณ์ 50",
        portfolio=(
            "ส่ง TCASFolio เป็น PDF; ประวัติไม่เกิน 1 หน้า A4; สำเนาหนังสือเสนอชื่อจากสถานศึกษา; "
            "หลักฐานผลงาน/รางวัล/กิจกรรมไม่เกิน 3 ผลงาน; ประกาศนียบัตรค่ายหรือโครงการวิชาการ "
            "ไม่เกิน 2 ใบ; และข้อความแสดงความสนใจหรือความรู้ในสาขาไม่เกิน 1 หน้า A4"
        ),
        extra_documents=["สำเนาหนังสือเสนอชื่อผู้สมัครจากสถานศึกษาต้นสังกัด"],
        additional={
            "official_curriculum_id": 14171,
            "official_project_id": 2411,
            "school_nomination_required": True,
            "announced_variants": ["1.1", "1.2"],
            "announced_slots_across_variants": 15,
        },
    ),
    cpe_criteria(
        "kmitl-chumphon-cpe-potential-1-1",
        POTENTIAL_PDF,
        2.75,
        ["รับผู้สมัครจากสถานศึกษาทุกจังหวัดทั่วประเทศ"],
        "GPAX 4 ภาคเรียนหรือตลอดหลักสูตรอย่างน้อย 2.75; Portfolio เน้น STEM/วิศวกรรม/วิทยาศาสตร์ 50 + สัมภาษณ์ 50",
        portfolio=(
            "ส่ง TCASFolio เป็น PDF; ประวัติไม่เกิน 1 หน้า A4; ผลงาน/รางวัล/กิจกรรมค่ายวิชาการ "
            "ด้าน STEM วิศวกรรมศาสตร์ หรือวิทยาศาสตร์ไม่เกิน 3 ผลงาน; ประกาศนียบัตรค่ายหรือโครงการวิชาการ "
            "ไม่เกิน 2 ใบ; และข้อความแสดงความสนใจหรือความรู้ในสาขาไม่เกิน 1 หน้า A4"
        ),
        additional={
            "official_curriculum_id": 14187,
            "official_project_id": 2413,
            "announced_variants": ["1.1", "1.2"],
            "announced_slots_across_variants": 15,
        },
    ),
    *[
        cpe_criteria(
            f"kmitl-chumphon-cpe-portfolio-{variant.replace('.', '-')}",
            PORTFOLIO_PDF,
            3.25,
            ["รับผู้สมัครจากสถานศึกษาทั่วประเทศ"],
            "GPAX 4 ภาคเรียนหรือตลอดหลักสูตรอย่างน้อย 3.25; Portfolio 50 + สัมภาษณ์ 50; ผลงานคอมพิวเตอร์/IoT/AI ได้รับการพิจารณาเป็นกรณีพิเศษ",
            additional={
                "announced_variant": variant,
                "announced_variants": ["1.1", "1.2", "1.3", "1.4", "1.5"],
                "announced_slots_across_variants": 40,
            },
        )
        for variant in ("1.2", "1.3", "1.4", "1.5")
    ],
    cpe_criteria(
        "kmitl-chumphon-cpe-network-1-2",
        NETWORK_PDF,
        3.25,
        [
            "ต้องสังกัดสถานศึกษาที่มีข้อตกลงกับ สจล. วิทยาเขตชุมพร และได้รับการเสนอชื่อจากสถานศึกษา",
        ],
        "GPAX 4 ภาคเรียนหรือตลอดหลักสูตรอย่างน้อย 3.25; ต้องมาจากสถานศึกษาเครือข่ายและได้รับการเสนอชื่อ; Portfolio 50 + สัมภาษณ์ 50",
        portfolio=(
            "ส่ง TCASFolio เป็น PDF; ประวัติไม่เกิน 1 หน้า A4; สำเนาหนังสือเสนอชื่อจากสถานศึกษา; "
            "หลักฐานผลงาน/รางวัล/กิจกรรมไม่เกิน 3 ผลงาน; ประกาศนียบัตรค่ายหรือโครงการวิชาการ "
            "ไม่เกิน 2 ใบ; และข้อความแสดงความสนใจหรือความรู้ในสาขาไม่เกิน 1 หน้า A4"
        ),
        extra_documents=["สำเนาหนังสือเสนอชื่อผู้สมัครจากสถานศึกษาต้นสังกัด"],
        additional={
            "school_nomination_required": True,
            "announced_variant": "1.2",
            "announced_variants": ["1.1", "1.2"],
            "announced_slots_across_variants": 15,
        },
    ),
    cpe_criteria(
        "kmitl-chumphon-cpe-potential-1-2",
        POTENTIAL_PDF,
        2.75,
        ["รับผู้สมัครจากสถานศึกษาทุกจังหวัดทั่วประเทศ"],
        "GPAX 4 ภาคเรียนหรือตลอดหลักสูตรอย่างน้อย 2.75; Portfolio เน้น STEM/วิศวกรรม/วิทยาศาสตร์ 50 + สัมภาษณ์ 50",
        portfolio=(
            "ส่ง TCASFolio เป็น PDF; ประวัติไม่เกิน 1 หน้า A4; ผลงาน/รางวัล/กิจกรรมค่ายวิชาการ "
            "ด้าน STEM วิศวกรรมศาสตร์ หรือวิทยาศาสตร์ไม่เกิน 3 ผลงาน; ประกาศนียบัตรค่ายหรือโครงการวิชาการ "
            "ไม่เกิน 2 ใบ; และข้อความแสดงความสนใจหรือความรู้ในสาขาไม่เกิน 1 หน้า A4"
        ),
        additional={
            "announced_variant": "1.2",
            "announced_variants": ["1.1", "1.2"],
            "announced_slots_across_variants": 15,
        },
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


ROUND_SCHEDULES = {
    "1.1": {
        "apply": ("2026-08-17", "2026-09-30", "17 ส.ค.–30 ก.ย. 2569"),
        "payment": ("2026-09-30", "30 ก.ย. 2569 ภายใน 23.59 น."),
        "interview_list": ("2026-10-02", "2 ต.ค. 2569"),
        "interview": ("2026-10-10", "10 ต.ค. 2569"),
        "selected": ("2026-10-14", "14 ต.ค. 2569"),
    },
    "1.2": {
        "apply": ("2026-10-01", "2026-10-30", "1–30 ต.ค. 2569"),
        "payment": ("2026-10-30", "30 ต.ค. 2569 ภายใน 23.59 น."),
        "interview_list": ("2026-11-03", "3 พ.ย. 2569"),
        "interview": ("2026-11-07", "7 พ.ย. 2569"),
        "selected": ("2026-11-11", "11 พ.ย. 2569"),
    },
    "1.3": {
        "apply": ("2026-11-02", "2026-11-30", "2–30 พ.ย. 2569"),
        "payment": ("2026-11-30", "30 พ.ย. 2569 ภายใน 23.59 น."),
        "interview_list": ("2026-12-03", "3 ธ.ค. 2569"),
        "interview": ("2026-12-12", "12 ธ.ค. 2569"),
        "selected": ("2026-12-16", "16 ธ.ค. 2569"),
    },
    "1.4": {
        "apply": ("2026-12-01", "2026-12-29", "1–29 ธ.ค. 2569"),
        "payment": ("2026-12-29", "29 ธ.ค. 2569 ภายใน 23.59 น."),
        "interview_list": ("2027-01-04", "4 ม.ค. 2570"),
        "interview": ("2027-01-09", "9 ม.ค. 2570"),
        "selected": ("2027-01-13", "13 ม.ค. 2570"),
    },
    "1.5": {
        "apply": ("2027-01-04", "2027-01-28", "4–28 ม.ค. 2570"),
        "payment": ("2027-01-28", "28 ม.ค. 2570 ภายใน 23.59 น."),
        "interview_list": ("2027-02-01", "1 ก.พ. 2570"),
        "interview": ("2027-02-06", "6 ก.พ. 2570"),
        "selected": ("2027-02-10", "10 ก.พ. 2570"),
    },
}


SCIENCE_ROUND_SCHEDULES = {
    "1.1": {
        "apply": ("2026-09-01", "2026-10-30", "1 ก.ย.–30 ต.ค. 2569"),
        "interview_list": ("2026-11-09", "9 พ.ย. 2569"),
        "interview": ("2026-11-14", "14 พ.ย. 2569"),
        "selected": ("2026-11-27", "27 พ.ย. 2569"),
    },
    "1.2": {
        "apply": ("2026-12-01", "2027-01-28", "1 ธ.ค. 2569–28 ม.ค. 2570"),
        "interview_list": ("2027-02-05", "5 ก.พ. 2570"),
        "interview": ("2027-02-13", "13 ก.พ. 2570"),
        "selected": ("2027-02-26", "26 ก.พ. 2570"),
    },
}


def science_timeline(project_code, round_variant):
    schedule = SCIENCE_ROUND_SCHEDULES[round_variant]
    apply_start, apply_end, apply_display = schedule["apply"]
    interview_list_date, interview_list_display = schedule["interview_list"]
    interview_date, interview_display = schedule["interview"]
    selected_date, selected_display = schedule["selected"]
    return [
        event(
            project_code,
            "สร้าง Portfolio ใน KMITL Student iFolio และสมัครทางอินเทอร์เน็ต",
            apply_start,
            apply_end,
            apply_display,
        ),
        event(
            project_code,
            "ชำระเงินค่าสมัคร",
            apply_start,
            apply_end,
            apply_display,
        ),
        event(
            project_code,
            "ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์",
            interview_list_date,
            interview_list_date,
            interview_list_display,
        ),
        event(
            project_code,
            "สอบสัมภาษณ์",
            interview_date,
            interview_date,
            interview_display,
        ),
        event(
            project_code,
            "ประกาศผู้ผ่านการคัดเลือกและมีสิทธิ์ Clearing House",
            selected_date,
            selected_date,
            selected_display,
        ),
        event(
            project_code,
            "ยืนยันสิทธิ์ Clearing House ผ่านระบบ ทปอ.",
            "2027-03-10",
            "2027-03-11",
            "10–11 มี.ค. 2570",
        ),
        event(
            project_code,
            "ประกาศรายชื่อผู้มีสิทธิ์เข้าศึกษาและขั้นตอนชำระเงิน",
            "2027-03-19",
            "2027-03-19",
            "19 มี.ค. 2570",
        ),
        event(
            project_code,
            "ชำระเงินยืนยันสิทธิ์เข้าศึกษา",
            "2027-03-25",
            "2027-03-31",
            "25–31 มี.ค. 2570",
        ),
    ]


def chumphon_timeline(project_code, round_variant="1.1"):
    schedule = ROUND_SCHEDULES[round_variant]
    apply_start, apply_end, apply_display = schedule["apply"]
    payment_date, payment_display = schedule["payment"]
    interview_list_date, interview_list_display = schedule["interview_list"]
    interview_date, interview_display = schedule["interview"]
    selected_date, selected_display = schedule["selected"]
    return [
        event(project_code, "รับสมัครทางอินเทอร์เน็ต", apply_start, apply_end, apply_display),
        event(project_code, "ชำระเงินค่าสมัครภายใน 23.59 น.", payment_date, payment_date, payment_display),
        event(project_code, "ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์", interview_list_date, interview_list_date, interview_list_display),
        event(project_code, "สอบสัมภาษณ์", interview_date, interview_date, interview_display),
        event(project_code, "ประกาศผู้ผ่านการคัดเลือกและมีสิทธิ์ Clearing House", selected_date, selected_date, selected_display),
        event(project_code, "ยืนยันสิทธิ์ Clearing House ผ่านระบบ ทปอ.", "2027-03-10", "2027-03-11", "10–11 มี.ค. 2570"),
        event(project_code, "ประกาศรายชื่อผู้มีสิทธิ์เข้าศึกษา", "2027-03-19", "2027-03-19", "19 มี.ค. 2570"),
        event(project_code, "ชำระเงินยืนยันสิทธิ์เข้าศึกษา", "2027-03-25", "2027-03-31", "25–31 มี.ค. 2570"),
    ]


TIMELINE = [
    timeline_event
    for project in SCIENCE_PROJECTS
    for timeline_event in science_timeline(
        project["code"], project["round_variant"]
    )
]
for code, round_variant in [
    ("kmitl-chumphon-cpe-portfolio-1-1", "1.1"),
    ("kmitl-chumphon-cpe-portfolio-1-2", "1.2"),
    ("kmitl-chumphon-cpe-portfolio-1-3", "1.3"),
    ("kmitl-chumphon-cpe-portfolio-1-4", "1.4"),
    ("kmitl-chumphon-cpe-portfolio-1-5", "1.5"),
    ("kmitl-chumphon-cpe-good-student-14plus-1-1", "1.1"),
    ("kmitl-chumphon-cpe-network-1-1", "1.1"),
    ("kmitl-chumphon-cpe-network-1-2", "1.2"),
    ("kmitl-chumphon-cpe-potential-1-1", "1.1"),
    ("kmitl-chumphon-cpe-potential-1-2", "1.2"),
]:
    TIMELINE.extend(chumphon_timeline(code, round_variant))


AUDIT_SOURCES = [
    {
        "url": INDEX_URL,
        "publisher": "สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง",
        "classification": "used_primary_index",
        "academic_year": 2570,
        "decision": "ใช้ API ดัชนีประกาศรับสมัครทางการยืนยันข่าวเลขที่ 4640 ของคณะวิทยาศาสตร์ และประกาศสายวิศวกรรมคอมพิวเตอร์วิทยาเขตชุมพร",
    },
    {
        "url": IT_DRAFT_URL,
        "publisher": "คณะเทคโนโลยีสารสนเทศ สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง",
        "classification": "excluded_primary_not_announced",
        "academic_year": 2570,
        "decision": "หน้า TCAS70 แสดงเกณฑ์เตรียมไว้แต่หัวข้อยังระบุ 'รอประกาศอย่างเป็นทางการ'; เก็บ 3 โครงการเป็น draft และไม่ให้บอทแสดง",
    },
    {
        "url": SCIENCE_CS_URL,
        "publisher": "คณะวิทยาศาสตร์ สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง",
        "classification": "imported_primary_supporting",
        "academic_year": 2570,
        "decision": "ใช้ยืนยันข้อมูลหลักสูตรวิทยาการคอมพิวเตอร์ พ.ศ. 2569 จำนวน 130 หน่วยกิต; เกณฑ์รับสมัครใช้ประกาศลงนามข่าวเลขที่ 4640 แยกต่างหาก",
    },
    {
        "url": SCIENCE_PORTFOLIO_PDF,
        "publisher": "สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง",
        "classification": "imported_primary",
        "academic_year": 2570,
        "decision": "นำเข้าวิทยาการคอมพิวเตอร์ 7 โครงการย่อยใน Portfolio 1-1 และ 1-2 พร้อม GPAX น้ำหนักคัดเลือก กำหนดการ ค่าใช้จ่าย และหมายเหตุจำนวนรับรวมรอบละ 25 คน โดยไม่แต่งจำนวนรายโครงการ",
    },
    {
        "url": TEACHER_PDF,
        "publisher": "สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง",
        "classification": "excluded_user_scope",
        "academic_year": 2570,
        "decision": "เป็นประกาศทางการ แต่ผู้ใช้ขอไม่รวมสาขาเทคโนโลยีคอมพิวเตอร์ของคณะครุศาสตร์ฯ ในชุดข้อมูลสาย IT ของบอท",
    },
    {
        "url": PORTFOLIO_PDF,
        "publisher": "สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง",
        "classification": "imported_primary",
        "academic_year": 2570,
        "decision": "นำเข้าวิศวกรรมคอมพิวเตอร์ Portfolio รอบ 1-1 ถึง 1-5 พร้อมกำหนดการรายรอบ; ไม่กระจายจำนวนรับรวม 40 คนเป็นจำนวนต่อรอบ",
    },
    {
        "url": GOOD_STUDENT_PDF,
        "publisher": "สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง",
        "classification": "imported_primary",
        "academic_year": 2570,
        "decision": "นำเข้าวิศวกรรมคอมพิวเตอร์ โครงการเรียนดี 14 จังหวัดพลัส รอบ 1-1 จำนวน 5 คน",
    },
    {
        "url": NETWORK_PDF,
        "publisher": "สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง",
        "classification": "imported_primary",
        "academic_year": 2570,
        "decision": "นำเข้าวิศวกรรมคอมพิวเตอร์ โครงการสถานศึกษาเครือข่าย รอบ 1-1 และ 1-2; เก็บเงื่อนไขเสนอชื่อและไม่กระจายจำนวนรับรวม 15 คนเป็นจำนวนต่อรอบ",
    },
    {
        "url": POTENTIAL_PDF,
        "publisher": "สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง",
        "classification": "imported_primary",
        "academic_year": 2570,
        "decision": "นำเข้าวิศวกรรมคอมพิวเตอร์ โครงการผู้มีศักยภาพด้านวิศวกรรมและเทคโนโลยี รอบ 1-1 และ 1-2; ไม่กระจายจำนวนรับรวม 15 คนเป็นจำนวนต่อรอบ",
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
    data["programs"] = [
        item
        for item in data["programs"]
        if item["code"] not in REMOVED_PROGRAM_CODES
    ]
    data["projects"] = [
        item
        for item in data["projects"]
        if item["code"] not in REMOVED_PROJECT_CODES
    ]
    for collection in ("project_programs", "criteria", "timeline"):
        data[collection] = [
            item
            for item in data[collection]
            if item["project_code"] not in REMOVED_PROJECT_CODES
            and item.get("program_code") not in REMOVED_PROGRAM_CODES
        ]
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
    DATASET_PATH.write_text(
        json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
    )

    audit = json.loads(AUDIT_PATH.read_text(encoding="utf-8"))
    audit["checked_at"] = CHECKED_AT
    upsert(audit["sources"], AUDIT_SOURCES, lambda item: item["url"])
    AUDIT_PATH.write_text(
        json.dumps(audit, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
    )

    project_codes = {item["code"] for item in PROJECTS}
    program_codes = {item["code"] for item in PROGRAMS}
    delta = {
        "schema_version": data["schema_version"],
        "academic_year": data["academic_year"],
        "checked_at": data["checked_at"],
        "status_policy": data["status_policy"],
        "universities": [
            item for item in data["universities"] if item["short_name"] == "KMITL"
        ],
        "programs": [
            item for item in data["programs"] if item["code"] in program_codes
        ],
        "projects": [
            item for item in data["projects"] if item["code"] in project_codes
        ],
        "project_programs": [
            item
            for item in data["project_programs"]
            if item["project_code"] in project_codes
        ],
        "criteria": [
            item for item in data["criteria"] if item["project_code"] in project_codes
        ],
        "timeline": [
            item for item in data["timeline"] if item["project_code"] in project_codes
        ],
    }
    DELTA_SQL_PATH.write_text(generate(delta), encoding="utf-8", newline="\n")

    print(
        f"Imported {len(PROGRAMS)} programs, {len(PROJECTS)} projects, "
        f"{len(CRITERIA)} criteria rows and {len(TIMELINE)} timeline events; "
        f"generated {DELTA_SQL_PATH.name}"
    )


if __name__ == "__main__":
    main()
