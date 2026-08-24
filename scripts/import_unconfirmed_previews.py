import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
DATASET_PATH = ROOT / "datasets" / "tcas70_admissions.json"
AUDIT_PATH = ROOT / "datasets" / "tcas70_source_audit.json"
CHECKED_AT = "2026-08-24T18:45:00+07:00"


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


SPECIFIC_PREVIEWS = {
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
    ],
    "cu-engineering-computer-engineering": [
        {
            "title": "TCAS1: Portfolio CP",
            "reference_academic_year": 2569,
            "round_label": "TCAS รอบ 1",
            "slots_available": None,
            "status": "unconfirmed",
            "note": "เป็นรูปแบบรับสมัครปี 2569 ใช้ดูแนวทางเท่านั้น ยังไม่ยืนยันว่าจะเปิดเหมือนเดิมใน TCAS70",
            "source_url": "https://www.cp.eng.chula.ac.th/cp-tcas1",
        }
    ],
    "cu-engineering-cedt": [
        {
            "title": "TCAS1: Portfolio CEDT",
            "reference_academic_year": 2569,
            "round_label": "TCAS รอบ 1",
            "slots_available": None,
            "status": "unconfirmed",
            "note": "เป็นรูปแบบรับสมัครปี 2569 ใช้ดูแนวทางเท่านั้น ยังไม่ยืนยันว่าจะเปิดเหมือนเดิมใน TCAS70",
            "source_url": "https://www.cp.eng.chula.ac.th/cedt-tcas1",
        }
    ],
    "ku-bangkhen-computer-engineering": [
        {
            "title": "โครงการช้างเผือก",
            "reference_academic_year": 2569,
            "round_label": "Portfolio 1.1",
            "slots_available": 20,
            "status": "unconfirmed",
            "note": "เป็นจำนวนรับของ TCAS69 ยังห้ามใช้แทนจำนวนรับ TCAS70",
            "source_url": "https://admission.ku.ac.th/media/announcements/2025/10/08/69_TCAS1_White_Elephant_1.1.pdf",
        },
        {
            "title": "โครงการเรียนล่วงหน้าของมหาวิทยาลัยเกษตรศาสตร์",
            "reference_academic_year": 2569,
            "round_label": "Portfolio 1.1",
            "slots_available": 5,
            "status": "unconfirmed",
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
            "note": "เป็นจำนวนรับของ TCAS69 ยังห้ามใช้แทนจำนวนรับ TCAS70",
            "source_url": "https://admission.ku.ac.th/media/announcements/2025/10/29/69_TCAS1_AP_1.1_edit_29102025.pdf",
        }
    ],
    "tu-engineering-computer-engineering": [
        {
            "title": "รอบที่ 1 Portfolio คณะวิศวกรรมศาสตร์",
            "reference_academic_year": 2568,
            "round_label": "Portfolio",
            "slots_available": 10,
            "status": "unconfirmed",
            "note": "หน้าอ้างอิงยังเป็น TCAS68 (GPAX 3.00) ใช้ดูรูปแบบเก่าเท่านั้น ไม่ใช่เกณฑ์ TCAS70",
            "source_url": "https://engr.tu.ac.th/admission/bachelor",
        }
    ],
}


PENDING_SOURCE_BY_UNIVERSITY = {
    "KMITL": {
        "title": "หน้ารับสมัคร TCAS70 รอบ Portfolio",
        "source_url": "https://www1.reg.kmitl.ac.th/TCAS_old/home.php?round=1",
        "note": "พบหลักสูตรในหน้ารับสมัคร แต่ยังไม่พบประกาศโครงการเฉพาะสาขาที่บอทยืนยันได้",
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
        "url": "https://admission.ku.ac.th/media/announcements/2025/10/08/69_TCAS1_White_Elephant_1.1.pdf",
        "publisher": "มหาวิทยาลัยเกษตรศาสตร์",
        "classification": "reference_unconfirmed_prior_year",
        "academic_year": 2569,
        "decision": "ใช้แสดงโครงการช้างเผือกของวิศวกรรมคอมพิวเตอร์ปี 2569 เป็นข้อมูลอ้างอิง ไม่ใช้เป็นเกณฑ์ TCAS70",
    },
    {
        "url": "https://admission.ku.ac.th/media/announcements/2025/10/29/69_TCAS1_AP_1.1_edit_29102025.pdf",
        "publisher": "มหาวิทยาลัยเกษตรศาสตร์",
        "classification": "reference_unconfirmed_prior_year",
        "academic_year": 2569,
        "decision": "ใช้แสดงโครงการเรียนล่วงหน้าของวิศวกรรมคอมพิวเตอร์และวิทยาการคอมพิวเตอร์ปี 2569 เป็นข้อมูลอ้างอิง",
    },
    {
        "url": "https://admission.ku.ac.th/media/announcements/2025/10/15/69-TCAS1-International_Program_1.2.pdf",
        "publisher": "มหาวิทยาลัยเกษตรศาสตร์",
        "classification": "reference_unconfirmed_prior_year",
        "academic_year": 2569,
        "decision": "ใช้แสดงรอบหลักสูตรนานาชาติของวิศวกรรมซอฟต์แวร์และความรู้ปี 2569 เป็นข้อมูลอ้างอิง",
    },
    {
        "url": "https://engr.tu.ac.th/admission/bachelor",
        "publisher": "คณะวิศวกรรมศาสตร์ มหาวิทยาลัยธรรมศาสตร์",
        "classification": "reference_unconfirmed_prior_year",
        "academic_year": 2568,
        "decision": "ใช้แสดงรูปแบบ Portfolio วิศวกรรมคอมพิวเตอร์ปี 2568 พร้อมเตือนว่าไม่ใช่เกณฑ์ TCAS70",
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
        if pending:
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
