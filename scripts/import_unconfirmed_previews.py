import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
DATASET_PATH = ROOT / "datasets" / "tcas70_admissions.json"
AUDIT_PATH = ROOT / "datasets" / "tcas70_source_audit.json"
CHECKED_AT = "2026-08-24T22:11:08+07:00"


NEW_PROGRAMS = [
    {
        "university_short_name": "KMITL",
        "code": "kmitl-engineering-computer-engineering",
        "faculty_name": "คณะวิศวกรรมศาสตร์",
        "major_name": "วิศวกรรมคอมพิวเตอร์",
        "program_type": "วิศวกรรมศาสตรบัณฑิต",
        "language": "ไทย",
        "curriculum_credits": None,
        "curriculum_year": None,
        "duration_years": 4,
        "official_program_url": "https://www.ce.kmitl.ac.th/",
        "data_status": "official",
    },
    {
        "university_short_name": "KMITL",
        "code": "kmitl-engineering-software-international",
        "faculty_name": "คณะวิศวกรรมศาสตร์",
        "major_name": "วิศวกรรมซอฟต์แวร์ (หลักสูตรนานาชาติ)",
        "program_type": "วิศวกรรมศาสตรบัณฑิต",
        "language": "อังกฤษ",
        "curriculum_credits": None,
        "curriculum_year": 2567,
        "duration_years": 4,
        "official_program_url": "https://office.kmitl.ac.th/oaq/curriculum/",
        "data_status": "official",
    },
    {
        "university_short_name": "KMITL",
        "code": "kmitl-engineering-computer-innovation-international",
        "faculty_name": "คณะวิศวกรรมศาสตร์",
        "major_name": "วิศวกรรมนวัตกรรมคอมพิวเตอร์ (หลักสูตรนานาชาติ)",
        "program_type": "วิศวกรรมศาสตรบัณฑิต",
        "language": "อังกฤษ",
        "curriculum_credits": None,
        "curriculum_year": None,
        "duration_years": 4,
        "official_program_url": "https://office.kmitl.ac.th/oaq/curriculum/",
        "data_status": "official",
    },
    {
        "university_short_name": "KMITL",
        "code": "kmitl-engineering-information-engineering",
        "faculty_name": "คณะวิศวกรรมศาสตร์",
        "major_name": "วิศวกรรมสารสนเทศ",
        "program_type": "วิศวกรรมศาสตรบัณฑิต",
        "language": "ไทย",
        "curriculum_credits": None,
        "curriculum_year": None,
        "duration_years": 4,
        "official_program_url": "https://office.kmitl.ac.th/oaq/curriculum/",
        "data_status": "official",
    },
    {
        "university_short_name": "KMITL",
        "code": "kmitl-engineering-robotics-ai-international",
        "faculty_name": "คณะวิศวกรรมศาสตร์",
        "major_name": "วิศวกรรมหุ่นยนต์และปัญญาประดิษฐ์ (หลักสูตรนานาชาติ)",
        "program_type": "วิศวกรรมศาสตรบัณฑิต",
        "language": "อังกฤษ",
        "curriculum_credits": None,
        "curriculum_year": None,
        "duration_years": 4,
        "official_program_url": "https://office.kmitl.ac.th/oaq/curriculum/",
        "data_status": "official",
    },
    {
        "university_short_name": "KU",
        "code": "ku-bangkhen-computer-engineering",
        "faculty_name": "คณะวิศวกรรมศาสตร์ วิทยาเขตบางเขน",
        "major_name": "วิศวกรรมคอมพิวเตอร์",
        "program_type": "วิศวกรรมศาสตรบัณฑิต",
        "language": "ไทย",
        "curriculum_credits": None,
        "curriculum_year": None,
        "duration_years": 4,
        "official_program_url": "https://cpe.ku.ac.th/",
        "data_status": "official",
    },
    {
        "university_short_name": "KU",
        "code": "ku-bangkhen-software-knowledge-engineering",
        "faculty_name": "คณะวิศวกรรมศาสตร์ วิทยาเขตบางเขน",
        "major_name": "วิศวกรรมซอฟต์แวร์และความรู้ (หลักสูตรนานาชาติ)",
        "program_type": "วิศวกรรมศาสตรบัณฑิต",
        "language": "อังกฤษ",
        "curriculum_credits": None,
        "curriculum_year": 2565,
        "duration_years": 4,
        "official_program_url": "https://cpe.ku.ac.th/index.php/ske-course-2565/",
        "data_status": "official",
    },
    {
        "university_short_name": "KU",
        "code": "ku-bangkhen-computer-science",
        "faculty_name": "คณะวิทยาศาสตร์ วิทยาเขตบางเขน",
        "major_name": "วิทยาการคอมพิวเตอร์",
        "program_type": "วิทยาศาสตรบัณฑิต",
        "language": "ไทย",
        "curriculum_credits": 128,
        "curriculum_year": None,
        "duration_years": 4,
        "official_program_url": "https://sci.ku.ac.th/web2024/program/b-s-computer-science/",
        "data_status": "official",
    },
    {
        "university_short_name": "TU",
        "code": "tu-engineering-computer-engineering",
        "faculty_name": "คณะวิศวกรรมศาสตร์",
        "major_name": "วิศวกรรมคอมพิวเตอร์",
        "program_type": "วิศวกรรมศาสตรบัณฑิต",
        "language": "ไทย",
        "curriculum_credits": None,
        "curriculum_year": 2566,
        "duration_years": 4,
        "official_program_url": "https://engr.tu.ac.th/bachelor",
        "data_status": "official",
    },
    {
        "university_short_name": "TU",
        "code": "tu-engineering-software-engineering",
        "faculty_name": "คณะวิศวกรรมศาสตร์",
        "major_name": "วิศวกรรมซอฟต์แวร์",
        "program_type": "วิศวกรรมศาสตรบัณฑิต",
        "language": "ไทย",
        "curriculum_credits": None,
        "curriculum_year": None,
        "duration_years": 4,
        "official_program_url": "https://engr.tu.ac.th/bachelor",
        "data_status": "official",
    },
    {
        "university_short_name": "TU",
        "code": "tu-science-computer-science",
        "faculty_name": "คณะวิทยาศาสตร์และเทคโนโลยี",
        "major_name": "วิทยาการคอมพิวเตอร์ (คอมพิวเตอร์และวิทยาการสารสนเทศ)",
        "program_type": "วิทยาศาสตรบัณฑิต",
        "language": "ไทย",
        "curriculum_credits": None,
        "curriculum_year": None,
        "duration_years": 4,
        "official_program_url": "https://cs.sci.tu.ac.th/comsci-cis-th-2/",
        "data_status": "official",
    },
]


KMITL_IT_TCAS69_SOURCE = (
    "https://www.reg.kmitl.ac.th/TCAS_old/news/files/"
    "2569_1_news1_4088_2025_09_25-14-42-31_e436c.pdf"
)


def kmitl_it_tcas69_preview(
    title,
    slots,
    min_gpax,
    selection_summary,
    qualification_summary,
    *,
    english_score_summary=None,
):
    preview = {
        "title": f"{title} - TCAS69 (ข้อมูลอ้างอิง)",
        "reference_academic_year": 2569,
        "round_label": "Portfolio",
        "slots_available": slots,
        "status": "unconfirmed",
        "min_gpax": min_gpax,
        "gpax_summary": f"GPAX ไม่น้อยกว่า {min_gpax:.2f}",
        "tuition_fee_per_semester": 32000,
        "application_fee": 300,
        "selection_summary": selection_summary,
        "qualification_summary": qualification_summary,
        "portfolio_summary": "ยื่น KMITL Student iFolio และเลือกผลงานเด่น 3 รายการ",
        "application_period": "1 ต.ค. - 22 ธ.ค. 2568 (กำหนดการของ TCAS69)",
        "note": "เป็นประกาศ TCAS69 ใช้เตรียมตัวได้ แต่ห้ามใช้ยืนยันคุณสมบัติ จำนวนรับ หรือวันสมัคร TCAS70",
        "source_url": KMITL_IT_TCAS69_SOURCE,
    }
    if english_score_summary:
        preview["english_score_summary"] = english_score_summary
    return preview


SPECIFIC_PREVIEWS = {
    "kmitl-engineering-computer-engineering": [
        {
            "title": "สถานะ TCAS70 รอบ 1 ของวิศวกรรมคอมพิวเตอร์",
            "reference_academic_year": 2570,
            "round_label": "Portfolio",
            "slots_available": None,
            "status": "unconfirmed",
            "note": "มีชื่อหลักสูตรในหน้ารอบ 1 แล้ว แต่วันปิดรับสมัครยังเป็น '-' และยังไม่พบประกาศคณะวิศวกรรมศาสตร์ฉบับรายละเอียด จึงยังยืนยันว่าเปิดยื่นไม่ได้",
            "source_url": "https://www1.reg.kmitl.ac.th/TCAS_old/home.php?round=1",
        },
        {
            "title": "ประกาศคณะวิศวกรรมศาสตร์ TCAS69 (ใช้เป็นข้อมูลอ้างอิง)",
            "reference_academic_year": 2569,
            "round_label": "Portfolio",
            "slots_available": 40,
            "status": "unconfirmed",
            "tuition_fee_per_semester": 25000,
            "selection_summary": "Portfolio/ผลงาน และบางโครงการใช้ TGAT กับ TPAT3 ก่อนสัมภาษณ์",
            "note": "ปี 2569 เปิด 5 โครงการ รับวิศวกรรมคอมพิวเตอร์ 40 คน ข้อมูลนี้ใช้ดูแนวทางเท่านั้น ไม่ใช่เกณฑ์หรือจำนวนรับ TCAS70",
            "source_url": "https://www.reg.kmitl.ac.th/TCAS_old/news/files/2569_1_news1_4112_2025_11_11-12-54-28_46fcd.pdf",
        },
    ],
    "kmitl-it": [
        {
            "title": "โครงการนักเรียนที่มีความสามารถด้านเทคโนโลยีสารสนเทศ",
            "reference_academic_year": 2570,
            "round_label": "Portfolio 1.1",
            "slots_available": 50,
            "status": "unconfirmed",
            "note": "พบในหน้าข้อมูลเตรียมประกาศของคณะ แต่ยังระบุว่ารอประกาศอย่างเป็นทางการ",
            "source_url": "https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1",
        },
        {
            "title": "โครงการนักเรียนที่มีศักยภาพทางวิชาการและเทคโนโลยีสารสนเทศ",
            "reference_academic_year": 2570,
            "round_label": "Portfolio 1.1",
            "slots_available": 5,
            "status": "unconfirmed",
            "note": "ชื่อโครงการและจำนวนรับยังไม่ใช่ประกาศรับสมัครฉบับสมบูรณ์",
            "source_url": "https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1",
        },
        {
            "title": "โครงการนักเรียนที่มีความสามารถด้านภาษาอังกฤษและเทคโนโลยีสารสนเทศ",
            "reference_academic_year": 2570,
            "round_label": "Portfolio 1.1",
            "slots_available": 5,
            "status": "unconfirmed",
            "note": "ชื่อโครงการและจำนวนรับยังไม่ใช่ประกาศรับสมัครฉบับสมบูรณ์",
            "source_url": "https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1",
        },
        kmitl_it_tcas69_preview(
            "โครงการนักเรียนเรียนดีและมีความสนใจทางเทคโนโลยีสารสนเทศ",
            115,
            3.00,
            "TGAT1 20 + TGAT2 20 + TPAT3 40 + Portfolio 10 + สัมภาษณ์ 10",
            "ม.6/เทียบเท่า และมีผลงานหรือกิจกรรมวิชาการ/คอมพิวเตอร์ตามประกาศ",
        ),
        kmitl_it_tcas69_preview(
            "โครงการนักเรียนที่มีความสามารถทางด้านเทคโนโลยีสารสนเทศ",
            20,
            2.75,
            "TGAT1 20 + TGAT2 20 + TPAT3 30 + Portfolio 15 + สัมภาษณ์ 15",
            "ต้องมีผลงานคอมพิวเตอร์/IT เช่น รางวัล ผลงานใช้งานจริง NSC YSC สิทธิบัตร หรือ Super AI Engineer ตามประกาศ",
        ),
        kmitl_it_tcas69_preview(
            "โครงการนักเรียนที่มีความสามารถทางด้านภาษาอังกฤษและเทคโนโลยีสารสนเทศ",
            5,
            3.00,
            "TGAT2 30 + TPAT3 30 + Portfolio 20 + สัมภาษณ์ 20",
            "มีผลงานวิชาการ/คอมพิวเตอร์ และคะแนนภาษาอังกฤษที่ยังไม่หมดอายุตามประกาศ",
            english_score_summary="IELTS 6.0 / TOEFL iBT 78 / TOEFL PBT 598 / TOEIC 825",
        ),
    ],
    "kmitl-engineering-software-international": [
        {
            "title": "คณะวิศวกรรมศาสตร์ TCAS69 - วิศวกรรมซอฟต์แวร์นานาชาติ",
            "reference_academic_year": 2569,
            "round_label": "Portfolio",
            "slots_available": 10,
            "status": "unconfirmed",
            "tuition_fee_per_semester": 90000,
            "application_fee": 300,
            "selection_summary": "เลือก 1 ใน 5 โครงการหลัก; ใช้ผลงาน หรือ TGAT/TPAT3 ตามประเภทโครงการ แล้วสอบสัมภาษณ์",
            "portfolio_summary": "สร้าง iFolio และส่งผลงานเด่น 1 ผลงาน",
            "application_period": "ถึง 22 ธ.ค. 2568 (กำหนดการของ TCAS69)",
            "note": "เป็นจำนวนรับและค่าเรียน TCAS69 ไม่ใช่ประกาศ TCAS70",
            "source_url": "https://www.reg.kmitl.ac.th/TCAS_old/news/files/2569_1_news1_4112_2025_11_11-12-54-28_46fcd.pdf",
        },
        {
            "title": "Direct Admission ปี 2568 (ใช้เป็นข้อมูลอ้างอิง)",
            "reference_academic_year": 2568,
            "round_label": "Direct Admission",
            "slots_available": 50,
            "status": "unconfirmed",
            "gpax_summary": "ไม่กำหนด GPAX รวม; GPA คณิตศาสตร์ 3.00 เป็นหนึ่งในทางเลือกของเกณฑ์คณิตศาสตร์",
            "application_fee": 1000,
            "selection_summary": "ผลการเรียน/คะแนนมาตรฐาน เอกสารประกอบ และสัมภาษณ์",
            "note": "เป็น Direct Admission ปี 2568 ไม่ใช่เกณฑ์ TCAS70 และรูปแบบรอบอาจเปลี่ยนได้",
            "source_url": "https://www.eng.kmitl.ac.th/direct-admission/",
        },
        {
            "title": "ประกาศค่าธรรมเนียมปีการศึกษา 2569",
            "reference_academic_year": 2569,
            "round_label": "ข้อมูลค่าเล่าเรียน",
            "slots_available": None,
            "status": "unconfirmed",
            "tuition_fee_per_semester": 90000,
            "note": "เป็นอัตราค่าธรรมเนียมปี 2569 ใช้อ้างอิงงบประมาณเท่านั้น ต้องตรวจอัตราปีเข้าเรียนอีกครั้ง",
            "source_url": "https://www1.reg.kmitl.ac.th/TCAS_old/news/files/2569_1_news1_4381_2026_03_18-09-14-13_b207a.pdf",
        },
    ],
    "kmitl-dsba": [
        {
            "title": "โครงการนักเรียนที่มีความสามารถด้านเทคโนโลยีสารสนเทศ",
            "reference_academic_year": 2570,
            "round_label": "Portfolio 1.1",
            "slots_available": 5,
            "status": "unconfirmed",
            "note": "พบในหน้าข้อมูลเตรียมประกาศของคณะ แต่ยังระบุว่ารอประกาศอย่างเป็นทางการ",
            "source_url": "https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1",
        },
        {
            "title": "โครงการนักเรียนที่มีศักยภาพทางวิชาการและเทคโนโลยีสารสนเทศ",
            "reference_academic_year": 2570,
            "round_label": "Portfolio 1.1",
            "slots_available": 2,
            "status": "unconfirmed",
            "note": "ชื่อโครงการและจำนวนรับยังไม่ใช่ประกาศรับสมัครฉบับสมบูรณ์",
            "source_url": "https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1",
        },
        kmitl_it_tcas69_preview(
            "โครงการนักเรียนเรียนดีและมีความสนใจทางเทคโนโลยีสารสนเทศ",
            20,
            3.00,
            "TGAT1 20 + TGAT2 20 + TPAT3 40 + Portfolio 10 + สัมภาษณ์ 10",
            "ม.6/เทียบเท่า และมีผลงานหรือกิจกรรมวิชาการ/คอมพิวเตอร์ตามประกาศ",
        ),
        kmitl_it_tcas69_preview(
            "โครงการนักเรียนที่มีความสามารถทางด้านเทคโนโลยีสารสนเทศ",
            10,
            2.75,
            "TGAT1 20 + TGAT2 20 + TPAT3 30 + Portfolio 15 + สัมภาษณ์ 15",
            "ต้องมีผลงานคอมพิวเตอร์/IT ตามรายการที่ประกาศกำหนด",
        ),
    ],
    "kmitl-ait": [
        {
            "title": "โครงการนักเรียนที่มีความสามารถด้านเทคโนโลยีสารสนเทศ",
            "reference_academic_year": 2570,
            "round_label": "Portfolio 1.1",
            "slots_available": 5,
            "status": "unconfirmed",
            "note": "พบในหน้าข้อมูลเตรียมประกาศของคณะ แต่ยังระบุว่ารอประกาศอย่างเป็นทางการ",
            "source_url": "https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1",
        },
        {
            "title": "โครงการนักเรียนที่มีศักยภาพทางวิชาการและเทคโนโลยีสารสนเทศ",
            "reference_academic_year": 2570,
            "round_label": "Portfolio 1.1",
            "slots_available": 1,
            "status": "unconfirmed",
            "note": "ชื่อโครงการและจำนวนรับยังไม่ใช่ประกาศรับสมัครฉบับสมบูรณ์",
            "source_url": "https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1",
        },
        {
            "title": "โครงการนักเรียนที่มีความสามารถด้านภาษาอังกฤษและเทคโนโลยีสารสนเทศ",
            "reference_academic_year": 2570,
            "round_label": "Portfolio 1.1",
            "slots_available": 1,
            "status": "unconfirmed",
            "note": "หน้าเตรียมข้อมูลระบุว่าโครงการนี้ไม่เปิดรับ DSBA",
            "source_url": "https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1",
        },
        kmitl_it_tcas69_preview(
            "โครงการนักเรียนเรียนดีและมีความสนใจทางเทคโนโลยีสารสนเทศ",
            20,
            3.00,
            "TGAT1 20 + TGAT2 20 + TPAT3 40 + Portfolio 10 + สัมภาษณ์ 10",
            "ม.6/เทียบเท่า และมีผลงานหรือกิจกรรมวิชาการ/คอมพิวเตอร์ตามประกาศ",
        ),
        kmitl_it_tcas69_preview(
            "โครงการนักเรียนที่มีความสามารถทางด้านเทคโนโลยีสารสนเทศ",
            10,
            2.75,
            "TGAT1 20 + TGAT2 20 + TPAT3 30 + Portfolio 15 + สัมภาษณ์ 15",
            "ต้องมีผลงานคอมพิวเตอร์/IT ตามรายการที่ประกาศกำหนด",
        ),
    ],
    "kmitl-engineering-robotics-ai-international": [
        {
            "title": "คณะวิศวกรรมศาสตร์ TCAS69 - วิศวกรรมหุ่นยนต์และ AI นานาชาติ",
            "reference_academic_year": 2569,
            "round_label": "Portfolio",
            "slots_available": 10,
            "status": "unconfirmed",
            "tuition_fee_per_semester": 105000,
            "application_fee": 300,
            "selection_summary": "เลือก 1 ใน 5 โครงการหลัก; ใช้ผลงาน หรือ TGAT/TPAT3 ตามประเภทโครงการ แล้วสอบสัมภาษณ์",
            "portfolio_summary": "สร้าง iFolio และส่งผลงานเด่น 1 ผลงาน",
            "application_period": "ถึง 22 ธ.ค. 2568 (กำหนดการของ TCAS69)",
            "note": "เป็นจำนวนรับและค่าเรียน TCAS69 ไม่ใช่ประกาศ TCAS70",
            "source_url": "https://www.reg.kmitl.ac.th/TCAS_old/news/files/2569_1_news1_4112_2025_11_11-12-54-28_46fcd.pdf",
        },
    ],
    "cu-engineering-computer-engineering": [
        {
            "title": "TCAS1: Portfolio CP",
            "reference_academic_year": 2569,
            "round_label": "TCAS รอบ 1",
            "slots_available": 65,
            "status": "unconfirmed",
            "min_gpax": 3.00,
            "gpax_summary": "GPAX ม.4-ม.6 รวม 5 ภาค ไม่น้อยกว่า 3.00",
            "application_fee": 0,
            "selection_summary": "Portfolio ด้านวิชาการ/วิศวกรรม 100 คะแนน ต้องได้อย่างน้อย 70; สัมภาษณ์ 100 คะแนน ต้องได้อย่างน้อย 70",
            "qualification_summary": "ม.6 ปีการศึกษา 2568 และมีผลงานวิชาการระดับชาติ/นานาชาติตามรายการในประกาศ",
            "portfolio_summary": "ไฟล์ PDF เนื้อหาไม่เกิน 10 หน้า เน้นผลงานคณิตศาสตร์ วิทยาศาสตร์ ฟิสิกส์ เคมี วิศวกรรมคอมพิวเตอร์ หรือวิศวกรรม",
            "application_period": "3-17 พ.ย. 2568 (กำหนดการของ TCAS69)",
            "note": "เป็นรูปแบบรับสมัครปี 2569 ใช้ดูแนวทางเท่านั้น ยังไม่ยืนยันว่าจะเปิดเหมือนเดิมใน TCAS70",
            "source_url": "https://admission.chula.ac.th/upload/adm_announce/file_235_2_4922.pdf",
        }
    ],
    "cu-engineering-cedt": [
        {
            "title": "TCAS1: Portfolio CEDT",
            "reference_academic_year": 2569,
            "round_label": "TCAS รอบ 1",
            "slots_available": 220,
            "status": "unconfirmed",
            "min_gpax": 3.00,
            "gpax_summary": "GPAX ม.6 หรือ ปวช. รวม 5 ภาค ไม่น้อยกว่า 3.00",
            "application_fee": 0,
            "selection_summary": "Portfolio ผลงานวิชาการ/วิศวกรรมคอมพิวเตอร์ 100 คะแนน ต้องได้อย่างน้อย 70; สัมภาษณ์ 100 คะแนน ต้องได้อย่างน้อย 70",
            "qualification_summary": "ม.6 หรือ ปวช.3 ปีการศึกษา 2568 และมีผลงานคอมพิวเตอร์/วิชาการตามรายการในประกาศ",
            "portfolio_summary": "ไฟล์ PDF เนื้อหาไม่เกิน 10 หน้า มีประวัติ เหตุผลที่เลือกสาขา ผลงานเด่น และกิจกรรม",
            "application_period": "3-17 พ.ย. 2568 (กำหนดการของ TCAS69)",
            "note": "เป็นรูปแบบรับสมัครปี 2569 ใช้ดูแนวทางเท่านั้น ยังไม่ยืนยันว่าจะเปิดเหมือนเดิมใน TCAS70",
            "source_url": "https://admission.chula.ac.th/upload/adm_announce/file_238_1_5249.pdf",
        }
    ],
    "cu-science-computer-science": [
        {
            "title": "โครงการพัฒนาอัจฉริยภาพทางวิทยาศาสตร์สำหรับเด็กและเยาวชน",
            "reference_academic_year": 2569,
            "round_label": "TCAS รอบ 1 Portfolio",
            "slots_available": None,
            "status": "unconfirmed",
            "selection_summary": "Portfolio ด้านคณิตศาสตร์/วิทยาศาสตร์หรือผลงานระดับชาติ-นานาชาติ 100 คะแนน ต้องได้อย่างน้อย 70 คะแนน แล้วสอบสัมภาษณ์",
            "qualification_summary": "ผู้ได้รับคัดเลือกในโครงการพัฒนาอัจฉริยภาพฯ ของ สวทช. ผู้ผ่านโครงงานวิทยาศาสตร์ระดับชาติ หรือผู้แทนประเทศไทย IYPT ตามประกาศ",
            "portfolio_summary": "แฟ้มผลงานกิจกรรมด้านคณิตศาสตร์และวิทยาศาสตร์ หรือผลงานวิทยาศาสตร์ระดับชาติ/นานาชาติ",
            "note": "ประกาศรับรวม 25 คนสำหรับ 16 สาขาและเลือกสาขาในวันสัมภาษณ์ จึงไม่ระบุจำนวนรับเฉพาะวิทยาการคอมพิวเตอร์ และห้ามใช้แทน TCAS70",
            "source_url": "https://admission.chula.ac.th/upload/adm_announce/file_245_1_2310.pdf",
        }
    ],
    "ku-bangkhen-computer-engineering": [
        {
            "title": "โครงการช้างเผือก",
            "reference_academic_year": 2569,
            "round_label": "Portfolio 1.1",
            "slots_available": 20,
            "status": "unconfirmed",
            "min_gpax": 2.50,
            "gpax_summary": "GPAX ไม่น้อยกว่า 2.50",
            "application_fee": 200,
            "selection_summary": "ประวัติผลงาน/ประกาศนียบัตร 50% + สัมภาษณ์ 50%",
            "qualification_summary": "ม.6/เทียบเท่า มีหน่วยกิตวิทยาศาสตร์ 22 คณิตศาสตร์ 12 ภาษาต่างประเทศ 9 และมีผลงานคอมพิวเตอร์ชัดเจน",
            "portfolio_summary": "ผลงานพัฒนาโปรแกรม ซอฟต์แวร์ ฮาร์ดแวร์ หรือนวัตกรรม; หากเป็นการแข่งขันต้องระดับประเทศหรือนานาชาติ",
            "application_period": "15 ต.ค. - 13 พ.ย. 2568 (กำหนดการของ TCAS69)",
            "note": "เป็นจำนวนรับของ TCAS69 ยังห้ามใช้แทนจำนวนรับ TCAS70",
            "source_url": "https://admission.ku.ac.th/media/announcements/2025/10/08/69_TCAS1_White_Elephant_1.1.pdf",
        },
        {
            "title": "โครงการเรียนล่วงหน้าของมหาวิทยาลัยเกษตรศาสตร์",
            "reference_academic_year": 2569,
            "round_label": "Portfolio 1.1",
            "slots_available": 5,
            "status": "unconfirmed",
            "application_fee": 0,
            "selection_summary": "ใช้ผลรายวิชาโครงการเรียนล่วงหน้า โดยเลือก 2 จาก 3 วิชาและมีค่าเฉลี่ยอย่างน้อย B+ ตามตารางประกาศ",
            "qualification_summary": "ต้องเป็นผู้ผ่านรายวิชาโครงการเรียนล่วงหน้าของมหาวิทยาลัยเกษตรศาสตร์ตามชุดวิชาที่กำหนด",
            "application_period": "15 ต.ค. - 13 พ.ย. 2568 (กำหนดการของ TCAS69)",
            "note": "เป็นจำนวนรับของ TCAS69 ยังห้ามใช้แทนจำนวนรับ TCAS70",
            "source_url": "https://admission.ku.ac.th/media/announcements/2025/10/29/69_TCAS1_AP_1.1_edit_29102025.pdf",
        },
    ],
    "ku-bangkhen-software-knowledge-engineering": [
        {
            "title": "โครงการหลักสูตรนานาชาติและหลักสูตรภาษาอังกฤษ",
            "reference_academic_year": 2569,
            "round_label": "Portfolio 1.2",
            "slots_available": 15,
            "status": "unconfirmed",
            "min_gpax": 2.50,
            "gpax_summary": "GPAX 5 ภาค ไม่น้อยกว่า 2.50 หรือเทียบเท่า",
            "application_fee": 200,
            "selection_summary": "Portfolio + คะแนน/ความสามารถภาษาอังกฤษ + สัมภาษณ์ภาษาอังกฤษ",
            "english_score_summary": "SAT Math 600 และ SAT รวม 1,000 พร้อม TOEFL iBT 61 / IELTS 5.5 / Duolingo 95 / TGAT1 60 หรือใช้เกณฑ์ผลการเรียนตามประกาศ",
            "portfolio_summary": "Portfolio ไม่เกิน 10 หน้า A4 ไม่รวมปก คำนำ และสารบัญ",
            "application_period": "19 ธ.ค. 2568 - 15 ม.ค. 2569 (กำหนดการของ TCAS69)",
            "note": "เป็นจำนวนรับของ TCAS69 ยังห้ามใช้แทนจำนวนรับ TCAS70",
            "source_url": "https://admission.ku.ac.th/media/announcements/2025/10/15/69-TCAS1-International_Program_1.2.pdf",
        }
    ],
    "ku-bangkhen-computer-science": [
        {
            "title": "โครงการเรียนล่วงหน้าของมหาวิทยาลัยเกษตรศาสตร์",
            "reference_academic_year": 2569,
            "round_label": "Portfolio 1.1",
            "slots_available": 5,
            "status": "unconfirmed",
            "application_fee": 0,
            "selection_summary": "ใช้ผลรายวิชาโครงการเรียนล่วงหน้า โดยคณิตศาสตร์หรือแนวคิดการโปรแกรมเบื้องต้นต้องได้อย่างน้อย B ตามตารางประกาศ",
            "qualification_summary": "ต้องเป็นผู้ผ่านรายวิชาโครงการเรียนล่วงหน้าของมหาวิทยาลัยเกษตรศาสตร์ตามชุดวิชาที่กำหนด",
            "application_period": "15 ต.ค. - 13 พ.ย. 2568 (กำหนดการของ TCAS69)",
            "note": "เป็นจำนวนรับของ TCAS69 ยังห้ามใช้แทนจำนวนรับ TCAS70",
            "source_url": "https://admission.ku.ac.th/media/announcements/2025/10/29/69_TCAS1_AP_1.1_edit_29102025.pdf",
        }
    ],
    "kmutnb-fitm-information-technology": [
        {
            "title": "รอบ Portfolio คณะเทคโนโลยีและการจัดการอุตสาหกรรม",
            "reference_academic_year": 2569,
            "round_label": "Portfolio รอบ 2",
            "slots_available": 40,
            "status": "unconfirmed",
            "tuition_fee_per_semester": 19000,
            "selection_summary": "พิจารณา Portfolio และสอบสัมภาษณ์ออนไลน์ โดยไม่มีการสอบข้อเขียน",
            "qualification_summary": "หลักสูตร 4 ปี รับผู้จบหรือกำลังเรียน ม.6 และ ปวช. ในสาขาที่เกี่ยวข้อง ตามคุณวุฒิที่มหาวิทยาลัยกำหนด",
            "portfolio_summary": "ส่งแฟ้มสะสมผลงานเป็น PDF ตามรูปแบบในประกาศ พร้อมหลักฐานการศึกษาและบัตรประจำตัว",
            "application_period": "24 พ.ย. 2568 - 10 ม.ค. 2569 (กำหนดการของ TCAS69)",
            "note": "เป็นประกาศ TCAS69 ของวิทยาเขตปราจีนบุรี ใช้ดูแนวทางและงบประมาณเท่านั้น ไม่ใช่เกณฑ์หรือจำนวนรับ TCAS70",
            "source_url": "https://www.admission.kmutnb.ac.th/sites/default/files/2025-10/FITM-Portfolio2.pdf",
        }
    ],
    "kmutnb-fitm-information-network-engineering": [
        {
            "title": "รอบ Portfolio คณะเทคโนโลยีและการจัดการอุตสาหกรรม",
            "reference_academic_year": 2569,
            "round_label": "Portfolio รอบ 2",
            "slots_available": 40,
            "status": "unconfirmed",
            "tuition_fee_per_semester": 25000,
            "selection_summary": "พิจารณา Portfolio และสอบสัมภาษณ์ออนไลน์ โดยไม่มีการสอบข้อเขียน",
            "qualification_summary": "หลักสูตร 4 ปี รับผู้จบหรือกำลังเรียน ม.6 และ ปวช. ในสาขาที่เกี่ยวข้อง ตามคุณวุฒิที่มหาวิทยาลัยกำหนด",
            "portfolio_summary": "ส่งแฟ้มสะสมผลงานเป็น PDF ตามรูปแบบในประกาศ พร้อมหลักฐานการศึกษาและบัตรประจำตัว",
            "application_period": "24 พ.ย. 2568 - 10 ม.ค. 2569 (กำหนดการของ TCAS69)",
            "note": "เป็นประกาศ TCAS69 ของวิทยาเขตปราจีนบุรี ใช้ดูแนวทางและงบประมาณเท่านั้น ไม่ใช่เกณฑ์หรือจำนวนรับ TCAS70",
            "source_url": "https://www.admission.kmutnb.ac.th/sites/default/files/2025-10/FITM-Portfolio2.pdf",
        }
    ],
    "tu-engineering-computer-engineering": [
        {
            "title": "โครงการรับตรง คณะวิศวกรรมศาสตร์",
            "reference_academic_year": 2569,
            "round_label": "Portfolio",
            "slots_available": 20,
            "status": "unconfirmed",
            "min_gpax": 2.75,
            "gpax_summary": "GPAX ขั้นต่ำ 2.75",
            "application_fee": 200,
            "selection_summary": "TPAT3 40% + Portfolio 40% + สัมภาษณ์ 20%",
            "qualification_summary": "ม.6/เทียบเท่า รวมผู้เทียบวุฒิต่างประเทศหรือหลักสูตรนานาชาติ ตามรายละเอียดในประกาศ",
            "portfolio_summary": "PDF ไม่เกิน 10 หน้า ไม่รวมปก เน้นผลงานวิชาการ วิทยาศาสตร์ คณิตศาสตร์ เทคโนโลยี และวิศวกรรมศาสตร์",
            "application_period": "15 ต.ค. - 17 พ.ย. 2568 (กำหนดการของ TCAS69)",
            "note": "เป็นเกณฑ์และจำนวนรับ TCAS69 ใช้เตรียมตัวได้ แต่ห้ามใช้ยืนยันการสมัคร TCAS70",
            "source_url": "https://www.tuadmissions.in.th/img/2025111008462947.pdf",
        },
        {
            "title": "รอบที่ 1 Portfolio คณะวิศวกรรมศาสตร์",
            "reference_academic_year": 2568,
            "round_label": "Portfolio",
            "slots_available": 10,
            "status": "unconfirmed",
            "min_gpax": 3.00,
            "gpax_summary": "GPAX ขั้นต่ำ 3.00",
            "selection_summary": "TPAT3 40% + Portfolio 40% + สัมภาษณ์ 20%",
            "qualification_summary": "ม.6/เทียบเท่า มีหน่วยกิตวิทยาศาสตร์อย่างน้อย 22 และคณิตศาสตร์อย่างน้อย 12",
            "portfolio_summary": "ไฟล์ PDF ไม่เกิน 10 หน้า เน้นวิทยาศาสตร์ คณิตศาสตร์ เทคโนโลยี วิศวกรรม และผลงาน/รางวัลที่เกี่ยวข้อง",
            "application_period": "5-26 พ.ย. 2567 (กำหนดการของ TCAS68)",
            "note": "หน้าอ้างอิงยังเป็น TCAS68 ใช้ดูรูปแบบเก่าเท่านั้น ไม่ใช่เกณฑ์ TCAS70",
            "source_url": "https://engr.tu.ac.th/admission/bachelor",
        }
    ],
    "tu-engineering-software-engineering": [
        {
            "title": "โครงการรับตรง วิศวกรรมซอฟต์แวร์ (โครงการพิเศษ)",
            "reference_academic_year": 2569,
            "round_label": "Portfolio",
            "slots_available": 35,
            "status": "unconfirmed",
            "min_gpax": 2.75,
            "gpax_summary": "GPAX ขั้นต่ำ 2.75",
            "application_fee": 200,
            "selection_summary": "Portfolio 40% + TPAT3 40% + สัมภาษณ์ 20%",
            "qualification_summary": "ม.6, ปวช.ช่างอุตสาหกรรม, กศน. หรือเทียบวุฒิต่างประเทศ/หลักสูตรนานาชาติ ตามประกาศ",
            "portfolio_summary": "PDF ไม่เกิน 10 หน้า ไม่รวมปก มีประวัติ/การศึกษา Statement of Purpose ผลงานวิชาการและกิจกรรม",
            "application_period": "15 ต.ค. - 17 พ.ย. 2568 (กำหนดการของ TCAS69)",
            "note": "เป็นเกณฑ์และจำนวนรับ TCAS69 ใช้เตรียมตัวได้ แต่ห้ามใช้ยืนยันการสมัคร TCAS70",
            "source_url": "https://www.tuadmissions.in.th/img/2025111008462947.pdf",
        }
    ],
    "tu-science-computer-science": [
        {
            "title": "โครงการรับตรง วิทยาการคอมพิวเตอร์",
            "reference_academic_year": 2569,
            "round_label": "Portfolio",
            "slots_available": 20,
            "status": "unconfirmed",
            "min_gpax": 3.00,
            "gpax_summary": "GPAX ขั้นต่ำ 3.00",
            "application_fee": 200,
            "selection_summary": "Portfolio 50% + TGAT1 15% + TGAT2 15% + TGAT3 5% + TPAT3 15%",
            "qualification_summary": "ม.6 มีหน่วยกิตวิทยาศาสตร์อย่างน้อย 22 และคณิตศาสตร์อย่างน้อย 12",
            "portfolio_summary": "PDF ไม่เกิน 10 หน้า ไม่รวมปก มี Statement of Purpose และผลงานนวัตกรรม/กิจกรรม/รางวัลที่เกี่ยวข้อง",
            "application_period": "15 ต.ค. - 17 พ.ย. 2568 (กำหนดการของ TCAS69)",
            "note": "เป็นเกณฑ์และจำนวนรับ TCAS69 ใช้เตรียมตัวได้ แต่ห้ามใช้ยืนยันการสมัคร TCAS70",
            "source_url": "https://www.tuadmissions.in.th/img/2025111008462947.pdf",
        }
    ],
}


PENDING_SOURCE_BY_UNIVERSITY = {
    "KMITL": {
        "title": "หน้ารับสมัคร TCAS70 รอบ Portfolio",
        "source_url": "https://www1.reg.kmitl.ac.th/TCAS_old/home.php?round=1",
        "note": "พบชื่อหลักสูตรในหน้ารอบ 1 TCAS70 แล้ว แต่วันปิดรับสมัครยังเป็น '-' และยังไม่พบประกาศคณะหรือโครงการฉบับรายละเอียด จึงยังยืนยันว่าเปิดยื่นไม่ได้",
    },
    "CU": {
        "title": "หน้าประกาศรับสมัคร TCAS70",
        "source_url": "https://admission.chula.ac.th/admission_c1.php",
        "note": "หน้าทางการยังแสดงว่าไม่พบประกาศรับสมัครสำหรับหลักสูตรนี้",
    },
    "KMUTNB": {
        "title": "หน้ารับสมัครรอบ 1 ปีการศึกษา 2570",
        "source_url": "https://admission.kmutnb.ac.th/apply/round/1",
        "note": "ยังไม่พบโครงการ TCAS70 ที่ระบุหลักสูตรนี้ในหน้าทางการ",
    },
    "KU": {
        "title": "หน้ารับสมัคร KU-TCAS70",
        "source_url": "https://admission.ku.ac.th/kuadm/",
        "note": "ยังไม่พบประกาศ TCAS70 ของหลักสูตรนี้ จึงแสดงข้อมูลปีเก่าแยกเป็นข้อมูลอ้างอิงเท่านั้น",
    },
    "TU": {
        "title": "หน้ารับสมัครมหาวิทยาลัยธรรมศาสตร์",
        "source_url": "https://www.tuadmissions.in.th/",
        "note": "ยังไม่พบประกาศ TCAS70 ของหลักสูตรนี้จากหน้าทางการ",
    },
}


AUDIT_SOURCES = [
    {
        "url": "https://admission.chula.ac.th/upload/adm_announce/file_235_2_4922.pdf",
        "publisher": "จุฬาลงกรณ์มหาวิทยาลัย",
        "classification": "reference_unconfirmed_prior_year",
        "academic_year": 2569,
        "decision": "เพิ่ม CP TCAS69 จำนวนรับ 65 คน GPAX 3.00 เงื่อนไขผลงาน Portfolio สัมภาษณ์ และกำหนดการ เป็นข้อมูลอ้างอิงที่ไม่ใช้แทน TCAS70",
    },
    {
        "url": "https://admission.chula.ac.th/upload/adm_announce/file_238_1_5249.pdf",
        "publisher": "จุฬาลงกรณ์มหาวิทยาลัย",
        "classification": "reference_unconfirmed_prior_year",
        "academic_year": 2569,
        "decision": "เพิ่ม CEDT TCAS69 จำนวนรับ 220 คน GPAX 3.00 เงื่อนไขผลงาน Portfolio สัมภาษณ์ และกำหนดการ เป็นข้อมูลอ้างอิงที่ไม่ใช้แทน TCAS70",
    },
    {
        "url": KMITL_IT_TCAS69_SOURCE,
        "publisher": "คณะเทคโนโลยีสารสนเทศ สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง",
        "classification": "reference_unconfirmed_prior_year",
        "academic_year": 2569,
        "decision": "เพิ่มข้อมูลรายโครงการ TCAS69 แยกตามสาขา ได้แก่ จำนวนรับ GPAX คะแนน TGAT/TPAT3 Portfolio สัมภาษณ์ ค่าสมัคร เอกสารผลงาน และกำหนดการ โดยแสดงปีต้นทางและไม่ใช้แทน TCAS70",
    },
    {
        "url": "https://www.reg.kmitl.ac.th/TCAS_old/news/files/2569_1_news1_4112_2025_11_11-12-54-28_46fcd.pdf",
        "publisher": "คณะวิศวกรรมศาสตร์ สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง",
        "classification": "reference_unconfirmed_prior_year",
        "academic_year": 2569,
        "decision": "เก็บจำนวนรับ 40 คน ค่าเรียน 25,000 บาทต่อภาค และภาพรวมการคัดเลือกของวิศวกรรมคอมพิวเตอร์ TCAS69 เป็นข้อมูลอ้างอิงระหว่างรอประกาศ TCAS70 โดยไม่ใช้ยืนยันการสมัคร",
    },
    {
        "url": "https://www3.it.kmitl.ac.th/th/admission/bachelor/portfolio",
        "publisher": "คณะเทคโนโลยีสารสนเทศ สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง",
        "classification": "reference_unconfirmed_prior_year",
        "academic_year": 2569,
        "decision": "เก็บจำนวนรับ GPAX ค่าเรียน ค่าสมัคร และวิธีคัดเลือก TCAS69 ของ IT, DSBA และ AIT เพื่อแสดงเป็นข้อมูลปีก่อนเมื่อ TCAS70 ยังไม่ประกาศ โดยติดป้ายห้ามใช้ยืนยันการสมัคร",
    },
    {
        "url": "https://www.eng.kmitl.ac.th/direct-admission/",
        "publisher": "คณะวิศวกรรมศาสตร์ สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง",
        "classification": "reference_unconfirmed_prior_year",
        "academic_year": 2568,
        "decision": "เก็บจำนวนรับและรูปแบบเกณฑ์ Direct Admission เดิมของวิศวกรรมซอฟต์แวร์นานาชาติเป็นข้อมูลอ้างอิง ไม่ใช้แทน TCAS70",
    },
    {
        "url": "https://www1.reg.kmitl.ac.th/TCAS_old/news/files/2569_1_news1_4381_2026_03_18-09-14-13_b207a.pdf",
        "publisher": "สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง",
        "classification": "reference_unconfirmed_prior_year",
        "academic_year": 2569,
        "decision": "เก็บค่าเล่าเรียนวิศวกรรมซอฟต์แวร์นานาชาติปี 2569 เป็นข้อมูลอ้างอิงงบประมาณ พร้อมกำกับให้ตรวจอัตราปีเข้าเรียนอีกครั้ง",
    },
    {
        "url": "https://www.it.kmitl.ac.th/en/programs",
        "publisher": "คณะเทคโนโลยีสารสนเทศ สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง",
        "classification": "excluded_user_scope",
        "academic_year": 2570,
        "decision": "เว็บคณะยืนยันหลักสูตรปริญญาตรี 4 หลักสูตร แต่เมนูบอทแสดงเฉพาะ IT, DSBA และ AIT ตามขอบเขตผู้ใช้; เก็บ BIT ไว้ในฐานข้อมูลแต่ไม่แสดงในเมนู",
    },
    {
        "url": "https://www1.reg.kmitl.ac.th/TCAS_old/home.php?round=1",
        "publisher": "สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง",
        "classification": "reference_unconfirmed_current",
        "academic_year": 2570,
        "decision": "ใช้แสดงว่าหลักสูตรสายคอมใดปรากฏในหน้ารับสมัคร TCAS70 แต่ไม่สร้างเกณฑ์จนกว่าจะมีประกาศเฉพาะโครงการ",
    },
    {
        "url": "https://office.kmitl.ac.th/oaq/curriculum/",
        "publisher": "สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง",
        "classification": "imported_primary_supporting",
        "academic_year": 2570,
        "decision": "เพิ่มหลักสูตรสายคอมของคณะวิศวกรรมศาสตร์ที่เปิดสอนจริง โดยเว้นเกณฑ์รับสมัครที่ยังไม่ประกาศ",
    },
    {
        "url": "https://www.cp.eng.chula.ac.th/cp-tcas1",
        "publisher": "ภาควิชาวิศวกรรมคอมพิวเตอร์ จุฬาลงกรณ์มหาวิทยาลัย",
        "classification": "reference_unconfirmed_prior_year",
        "academic_year": 2569,
        "decision": "แสดงชื่อโครงการวิศวกรรมคอมพิวเตอร์ปี 2569 เป็นแนวทางย้อนหลัง พร้อมป้ายไม่ยืนยันสำหรับ TCAS70",
    },
    {
        "url": "https://www.cp.eng.chula.ac.th/cedt-tcas1",
        "publisher": "ภาควิชาวิศวกรรมคอมพิวเตอร์ จุฬาลงกรณ์มหาวิทยาลัย",
        "classification": "reference_unconfirmed_prior_year",
        "academic_year": 2569,
        "decision": "แสดงชื่อ TCAS1 Portfolio CEDT ปี 2569 เป็นแนวทางย้อนหลัง พร้อมป้ายไม่ยืนยันสำหรับ TCAS70",
    },
    {
        "url": "https://admission.chula.ac.th/upload/adm_announce/file_245_1_2310.pdf",
        "publisher": "จุฬาลงกรณ์มหาวิทยาลัย",
        "classification": "reference_unconfirmed_prior_year",
        "academic_year": 2569,
        "decision": "เพิ่มโครงการพัฒนาอัจฉริยภาพทางวิทยาศาสตร์สำหรับวิทยาการคอมพิวเตอร์ TCAS69 พร้อมเงื่อนไขผู้สมัคร Portfolio และคะแนนขั้นต่ำ โดยเว้นจำนวนรับรายสาขาเพราะประกาศระบุ 25 คนรวม 16 สาขา",
    },
    {
        "url": "https://admission.ku.ac.th/media/announcements/2025/10/08/69_TCAS1_White_Elephant_1.1.pdf",
        "publisher": "มหาวิทยาลัยเกษตรศาสตร์",
        "classification": "reference_unconfirmed_prior_year",
        "academic_year": 2569,
        "decision": "ใช้แสดงโครงการช้างเผือกวิศวกรรมคอมพิวเตอร์ปี 2569 พร้อมจำนวนรับ GPAX หน่วยกิต ผลงาน สัดส่วนคัดเลือก ค่าสมัคร และช่วงสมัครเป็นข้อมูลอ้างอิง ไม่ใช้เป็นเกณฑ์ TCAS70",
    },
    {
        "url": "https://admission.ku.ac.th/media/announcements/2025/10/29/69_TCAS1_AP_1.1_edit_29102025.pdf",
        "publisher": "มหาวิทยาลัยเกษตรศาสตร์",
        "classification": "reference_unconfirmed_prior_year",
        "academic_year": 2569,
        "decision": "ใช้แสดงโครงการเรียนล่วงหน้าของวิศวกรรมคอมพิวเตอร์และวิทยาการคอมพิวเตอร์ปี 2569 พร้อมจำนวนรับ ผลรายวิชาที่ใช้คัดเลือก ค่าสมัคร และช่วงสมัครเป็นข้อมูลอ้างอิง",
    },
    {
        "url": "https://admission.ku.ac.th/media/announcements/2025/10/15/69-TCAS1-International_Program_1.2.pdf",
        "publisher": "มหาวิทยาลัยเกษตรศาสตร์",
        "classification": "reference_unconfirmed_prior_year",
        "academic_year": 2569,
        "decision": "ใช้แสดงรอบหลักสูตรนานาชาติของวิศวกรรมซอฟต์แวร์และความรู้ปี 2569 พร้อม GPAX คะแนนภาษาอังกฤษ Portfolio สัมภาษณ์ ค่าสมัคร และช่วงสมัครเป็นข้อมูลอ้างอิง",
    },
    {
        "url": "https://www.admission.kmutnb.ac.th/sites/default/files/2025-10/FITM-Portfolio2.pdf",
        "publisher": "คณะเทคโนโลยีและการจัดการอุตสาหกรรม มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ",
        "classification": "reference_unconfirmed_prior_year",
        "academic_year": 2569,
        "decision": "เพิ่ม IT และ INE วิทยาเขตปราจีนบุรี TCAS69 สาขาละ 40 คน พร้อมค่าเรียน คุณวุฒิ วิธีคัดเลือก Portfolio/สัมภาษณ์ และช่วงสมัคร เป็นข้อมูลอ้างอิงที่ไม่ใช้แทน TCAS70",
    },
    {
        "url": "https://www.tuadmissions.in.th/img/2025111008462947.pdf",
        "publisher": "มหาวิทยาลัยธรรมศาสตร์",
        "classification": "reference_unconfirmed_prior_year",
        "academic_year": 2569,
        "decision": "เพิ่มวิศวกรรมคอมพิวเตอร์ วิศวกรรมซอฟต์แวร์ และวิทยาการคอมพิวเตอร์ TCAS69 พร้อมจำนวนรับ GPAX สัดส่วนคะแนน Portfolio ค่าสมัคร และช่วงสมัคร เป็นข้อมูลอ้างอิงที่ไม่ใช้แทน TCAS70",
    },
    {
        "url": "https://engr.tu.ac.th/admission/bachelor",
        "publisher": "คณะวิศวกรรมศาสตร์ มหาวิทยาลัยธรรมศาสตร์",
        "classification": "reference_unconfirmed_prior_year",
        "academic_year": 2568,
        "decision": "ใช้แสดงวิศวกรรมคอมพิวเตอร์ Portfolio ปี 2568 พร้อมจำนวนรับ GPAX หน่วยกิต สัดส่วน TPAT3/Portfolio/สัมภาษณ์ รูปแบบแฟ้ม และช่วงสมัคร โดยเตือนว่าไม่ใช่เกณฑ์ TCAS70",
    },
    {
        "url": "https://cs.sci.tu.ac.th/comsci-cis-th-2/",
        "publisher": "คณะวิทยาศาสตร์และเทคโนโลยี มหาวิทยาลัยธรรมศาสตร์",
        "classification": "imported_primary_supporting",
        "academic_year": 2570,
        "decision": "เพิ่มหลักสูตรวิทยาการคอมพิวเตอร์เป็นรายการหลักสูตรที่เปิดสอนจริง โดยยังไม่สร้างเกณฑ์ TCAS70",
    },
]


def upsert_by_key(items, new_item, key):
    value = new_item[key]
    for index, item in enumerate(items):
        if item.get(key) == value:
            items[index] = {**item, **new_item}
            return
    items.append(new_item)


def main():
    data = json.loads(DATASET_PATH.read_text(encoding="utf-8"))
    audit = json.loads(AUDIT_PATH.read_text(encoding="utf-8"))

    data["schema_version"] = max(int(data.get("schema_version", 3)), 4)
    data["checked_at"] = CHECKED_AT
    data.setdefault("status_policy", {})["unconfirmed_reference"] = (
        "ข้อมูลจากหน้าเตรียมประกาศหรือประกาศปีก่อน แสดงได้เฉพาะเมื่อมีป้ายเตือนและปีต้นทาง"
    )

    for program in NEW_PROGRAMS:
        upsert_by_key(data["programs"], program, "code")

    official_program_links = {
        link["program_code"]
        for link in data.get("project_programs", [])
        if next(
            project
            for project in data["projects"]
            if project["code"] == link["project_code"]
        ).get("publication_status")
        == "official"
    }

    for program in data["programs"]:
        code = program["code"]
        if code in official_program_links:
            program.pop("admission_previews", None)
            continue

        previews = list(SPECIFIC_PREVIEWS.get(code, []))
        pending = PENDING_SOURCE_BY_UNIVERSITY.get(
            program["university_short_name"]
        )
        has_current_preview = any(
            preview.get("reference_academic_year") == 2570
            for preview in previews
        )
        if pending and not has_current_preview:
            previews.append(
                {
                    "title": pending["title"],
                    "reference_academic_year": 2570,
                    "round_label": "สถานะล่าสุด",
                    "slots_available": None,
                    "status": "unconfirmed",
                    "note": pending["note"],
                    "source_url": pending["source_url"],
                }
            )
        program["admission_previews"] = previews

    audit["checked_at"] = CHECKED_AT
    for source in AUDIT_SOURCES:
        upsert_by_key(audit["sources"], source, "url")

    DATASET_PATH.write_text(
        json.dumps(data, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )
    AUDIT_PATH.write_text(
        json.dumps(audit, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )

    preview_count = sum(
        len(program.get("admission_previews") or [])
        for program in data["programs"]
    )
    print(
        json.dumps(
            {
                "programs": len(data["programs"]),
                "programs_added": len(NEW_PROGRAMS),
                "admission_previews": preview_count,
                "checked_at": CHECKED_AT,
            },
            ensure_ascii=False,
            indent=2,
        )
    )


if __name__ == "__main__":
    main()
