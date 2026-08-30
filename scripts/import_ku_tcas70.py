"""Import current KU-TCAS70 projects in the dataset's technology scope.

The KU admission catalogue exposes separate project pages for Bangkhen,
Kamphaeng Saen, and Sriracha.  This importer keeps those campus/project
boundaries intact and imports every current project page that lists a
computer, information-technology, or related science/engineering program.
When a campus page lists a program but serves its detailed criteria through a
separate dynamic system, the record remains visible with an explicit warning
instead of guessed GPAX or portfolio requirements.
"""

import json
from pathlib import Path

from generate_seed_sql import generate


ROOT = Path(__file__).resolve().parents[1]
DATASET_PATH = ROOT / "datasets" / "tcas70_admissions.json"
AUDIT_PATH = ROOT / "datasets" / "tcas70_source_audit.json"
DELTA_SQL_PATH = ROOT / "seed_ku_tcas70.sql"
CHECKED_AT = "2026-08-30T12:00:00+07:00"

HOME_URL = "https://admission.ku.ac.th/"
WHITE_ELEPHANT_URL = "https://admission.ku.ac.th/majors/project/1/"
ADVANCED_PLACEMENT_URL = "https://admission.ku.ac.th/majors/project/2/"
INTERNATIONAL_11_URL = "https://admission.ku.ac.th/majors/project/3/"
INTERNATIONAL_12_URL = "https://admission.ku.ac.th/majors/project/103/"
SPORTS_URL = "https://admission.ku.ac.th/majors/project/4/"
MORALS_URL = "https://admission.ku.ac.th/majors/project/5/"
YOUTH_LEADER_URL = "https://admission.ku.ac.th/majors/project/6/"
CULTURE_SOFT_POWER_URL = "https://admission.ku.ac.th/majors/project/18/"
SCIENCE_NETWORK_URL = "https://admission.ku.ac.th/majors/project/32/"
PSW_URL = "https://admission.ku.ac.th/majors/project/8/"
OLYMPIC_11_URL = "https://admission.ku.ac.th/majors/project/9/"
KPS_PORTFOLIO_11_URL = "https://admission.ku.ac.th/majors/project/10/"
SRIRACHA_EXPANSION_11_URL = "https://admission.ku.ac.th/majors/project/107/"
OLYMPIC_12_URL = "https://admission.ku.ac.th/majors/project/109/"
KPS_PORTFOLIO_12_URL = "https://admission.ku.ac.th/majors/project/110/"
SRIRACHA_EXPANSION_12_URL = "https://admission.ku.ac.th/majors/project/207/"
KPS_SITE_URL = "https://admission.kps.ku.ac.th/"
SRIRACHA_SITE_URL = "https://admissions.src.ku.ac.th/"

CS_CODE = "ku-bangkhen-computer-science"
CPE_CODE = "ku-bangkhen-computer-engineering"
SKE_CODE = "ku-bangkhen-software-knowledge-engineering"
CS_SPECIAL_CODE = "ku-bangkhen-computer-science-special"
KPS_CPE_CODE = "ku-kps-computer-engineering"
KPS_IT_CODE = "ku-kps-information-technology"
KPS_IT_SPECIAL_CODE = "ku-kps-information-technology-special"
KPS_CS_CODE = "ku-kps-computer-science"
KPS_CS_SPECIAL_CODE = "ku-kps-computer-science-special"
SRC_CPE_IS_CODE = "ku-sriracha-computer-engineering-information-science"
SRC_CS_CODE = "ku-sriracha-computer-science"
SRC_CS_SPECIAL_CODE = "ku-sriracha-computer-science-special"

CONFIRMED_PROGRAM_CODES = {
    CS_CODE,
    CPE_CODE,
    SKE_CODE,
    CS_SPECIAL_CODE,
    KPS_CPE_CODE,
    KPS_IT_CODE,
    KPS_IT_SPECIAL_CODE,
    KPS_CS_CODE,
    KPS_CS_SPECIAL_CODE,
    SRC_CPE_IS_CODE,
    SRC_CS_CODE,
    SRC_CS_SPECIAL_CODE,
}

UNIVERSITY = {
    "name": "มหาวิทยาลัยเกษตรศาสตร์",
    "short_name": "KU",
    "logo_url": None,
}


def program_record(
    code,
    faculty_name,
    major_name,
    program_type,
    campus_code,
    official_program_url,
):
    return {
        "university_short_name": "KU",
        "code": code,
        "faculty_name": faculty_name,
        "major_name": major_name,
        "program_type": program_type,
        "language": "ไทย",
        "curriculum_credits": None,
        "curriculum_year": None,
        "duration_years": 4,
        "official_program_url": official_program_url,
        "data_status": "official",
        "admission_previews": [],
        "campus_code": campus_code,
    }


PROGRAM_ADDITIONS = [
    program_record(
        CS_SPECIAL_CODE,
        "คณะวิทยาศาสตร์ วิทยาเขตบางเขน",
        "วิทยาการคอมพิวเตอร์ (ภาคพิเศษ)",
        "วิทยาศาสตรบัณฑิต",
        "bangkhen",
        WHITE_ELEPHANT_URL,
    ),
    program_record(
        KPS_CPE_CODE,
        "คณะวิศวกรรมศาสตร์ วิทยาเขตกำแพงแสน",
        "วิศวกรรมคอมพิวเตอร์",
        "วิศวกรรมศาสตรบัณฑิต",
        "kamphaeng-saen",
        KPS_PORTFOLIO_11_URL,
    ),
    program_record(
        KPS_IT_CODE,
        "คณะศิลปศาสตร์และวิทยาศาสตร์ วิทยาเขตกำแพงแสน",
        "เทคโนโลยีสารสนเทศ",
        "วิทยาศาสตรบัณฑิต",
        "kamphaeng-saen",
        KPS_PORTFOLIO_11_URL,
    ),
    program_record(
        KPS_IT_SPECIAL_CODE,
        "คณะศิลปศาสตร์และวิทยาศาสตร์ วิทยาเขตกำแพงแสน",
        "เทคโนโลยีสารสนเทศ (ภาคพิเศษ)",
        "วิทยาศาสตรบัณฑิต",
        "kamphaeng-saen",
        KPS_PORTFOLIO_11_URL,
    ),
    program_record(
        KPS_CS_CODE,
        "คณะศิลปศาสตร์และวิทยาศาสตร์ วิทยาเขตกำแพงแสน",
        "วิทยาการคอมพิวเตอร์",
        "วิทยาศาสตรบัณฑิต",
        "kamphaeng-saen",
        KPS_PORTFOLIO_11_URL,
    ),
    program_record(
        KPS_CS_SPECIAL_CODE,
        "คณะศิลปศาสตร์และวิทยาศาสตร์ วิทยาเขตกำแพงแสน",
        "วิทยาการคอมพิวเตอร์ (ภาคพิเศษ)",
        "วิทยาศาสตรบัณฑิต",
        "kamphaeng-saen",
        KPS_PORTFOLIO_11_URL,
    ),
    program_record(
        SRC_CPE_IS_CODE,
        "คณะวิศวกรรมศาสตร์ วิทยาเขตศรีราชา",
        "วิศวกรรมคอมพิวเตอร์และสารสนเทศศาสตร์",
        "วิศวกรรมศาสตรบัณฑิต",
        "sriracha",
        SRIRACHA_SITE_URL,
    ),
    program_record(
        SRC_CS_CODE,
        "คณะวิทยาศาสตร์ วิทยาเขตศรีราชา",
        "วิทยาการคอมพิวเตอร์",
        "วิทยาศาสตรบัณฑิต",
        "sriracha",
        SRIRACHA_SITE_URL,
    ),
    program_record(
        SRC_CS_SPECIAL_CODE,
        "คณะวิทยาศาสตร์ วิทยาเขตศรีราชา",
        "วิทยาการคอมพิวเตอร์ (ภาคพิเศษ)",
        "วิทยาศาสตรบัณฑิต",
        "sriracha",
        SRIRACHA_SITE_URL,
    ),
]


def project(
    code,
    group_code,
    name,
    variant,
    source_url,
    source_title,
    *,
    application_url=HOME_URL,
    data_notes=None,
):
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
        "application_url": application_url,
        "source_url": source_url,
        "source_title": source_title,
        "source_published_at": None,
        "source_checked_at": CHECKED_AT,
        "data_notes": data_notes or (
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


PROJECT_ADDITIONS = [
    project(
        "ku-bangkhen-sports-1-1",
        "ku-bangkhen-sports",
        "โครงการรับนักกีฬาดีเด่น",
        "1.1",
        SPORTS_URL,
        "เกณฑ์โครงการรับนักกีฬาดีเด่น รอบ 1.1 KU-TCAS70",
    ),
    project(
        "ku-bangkhen-psw-1-1",
        "ku-bangkhen-psw",
        "โครงการ พสวท. และผู้มีความสามารถพิเศษทางวิทยาศาสตร์",
        "1.1",
        PSW_URL,
        "เกณฑ์โครงการ พสวท. รอบ 1.1 KU-TCAS70",
        data_notes=(
            "หน้ารวม KU-TCAS70 ระบุสาขาและเงื่อนไขหลัก แต่จำนวนรับของวิทยาการคอมพิวเตอร์ "
            "เป็นจำนวนรวมกับเงื่อนไขอื่น จึงไม่แสดงเป็นจำนวนรับเฉพาะโครงการนี้"
        ),
    ),
    project(
        "ku-bangkhen-culture-soft-power-1-1",
        "ku-bangkhen-culture-soft-power",
        "โควตาศิลปวัฒนธรรมและซอฟต์พาวเวอร์",
        "1.1",
        CULTURE_SOFT_POWER_URL,
        "เกณฑ์โควตาศิลปวัฒนธรรมและซอฟต์พาวเวอร์ รอบ 1.1 KU-TCAS70",
        data_notes=(
            "หน้ารวม KU-TCAS70 ระบุวิศวกรรมคอมพิวเตอร์และจำนวนรับ 2 คน; "
            "รายละเอียดการทดสอบและสัมภาษณ์ยังควรตรวจประกาศต้นทางก่อนสมัคร"
        ),
    ),
    project(
        "ku-bangkhen-science-network-1-1",
        "ku-bangkhen-science-network",
        "โครงการพัฒนาเครือข่ายองค์กรแห่งการเรียนรู้ด้านวิทยาศาสตร์สู่การต่อยอดระดับสากล",
        "1.1",
        SCIENCE_NETWORK_URL,
        "เกณฑ์โครงการพัฒนาเครือข่ายองค์กรแห่งการเรียนรู้ด้านวิทยาศาสตร์ รอบ 1.1 KU-TCAS70",
        data_notes=(
            "หน้ารายโครงการระบุวิทยาการคอมพิวเตอร์ภาคปกติและภาคพิเศษ แต่จำนวนรับเป็นยอดรวม "
            "และไม่ได้แจกแจงเกณฑ์เฉพาะสาขาคอมพิวเตอร์ จึงต้องตรวจประกาศต้นทางก่อนสมัคร"
        ),
    ),
    project(
        "ku-bangkhen-olympic-1-1",
        "ku-bangkhen-olympic",
        "โครงการโอลิมปิกวิชาการ รอบ 1.1",
        "1.1",
        OLYMPIC_11_URL,
        "เกณฑ์โครงการโอลิมปิกวิชาการ รอบ 1.1 KU-TCAS70",
    ),
    project(
        "ku-bangkhen-olympic-1-2",
        "ku-bangkhen-olympic",
        "โครงการโอลิมปิกวิชาการ รอบ 1.2",
        "1.2",
        OLYMPIC_12_URL,
        "เกณฑ์โครงการโอลิมปิกวิชาการ รอบ 1.2 KU-TCAS70",
        data_notes=(
            "หน้ารวม KU-TCAS70 ระบุสาขาและจำนวนรับแล้ว; เกณฑ์ของบางสาขา "
            "ต้องตรวจเอกสาร/ประกาศย่อยก่อนสมัคร"
        ),
    ),
    project(
        "ku-kps-advanced-placement-1-1",
        "ku-kps-advanced-placement",
        "โครงการเรียนล่วงหน้า วิทยาเขตกำแพงแสน",
        "1.1",
        ADVANCED_PLACEMENT_URL,
        "เกณฑ์โครงการเรียนล่วงหน้า วิทยาเขตกำแพงแสน KU-TCAS70",
    ),
    project(
        "ku-kps-portfolio-1-1",
        "ku-kps-portfolio",
        "โครงการ Portfolio วิทยาเขตกำแพงแสน",
        "1.1",
        KPS_PORTFOLIO_11_URL,
        "เกณฑ์โครงการ Portfolio วิทยาเขตกำแพงแสน รอบ 1.1 KU-TCAS70",
        application_url=KPS_SITE_URL,
    ),
    project(
        "ku-kps-portfolio-1-2",
        "ku-kps-portfolio",
        "โครงการ Portfolio วิทยาเขตกำแพงแสน",
        "1.2",
        KPS_PORTFOLIO_12_URL,
        "เกณฑ์โครงการ Portfolio วิทยาเขตกำแพงแสน รอบ 1.2 KU-TCAS70",
        application_url=KPS_SITE_URL,
    ),
    project(
        "ku-sriracha-morals-1-1",
        "ku-sriracha-morals",
        "โครงการส่งเสริมคุณธรรมและจริยธรรม",
        "1.1",
        MORALS_URL,
        "เกณฑ์โครงการส่งเสริมคุณธรรมและจริยธรรม วิทยาเขตศรีราชา KU-TCAS70",
        application_url=SRIRACHA_SITE_URL,
        data_notes=(
            "หน้ารวม KU-TCAS70 ยืนยันชื่อสาขาและจำนวนรับ; รายละเอียดเกณฑ์รายสาขา "
            "อยู่ในระบบรับสมัครวิทยาเขตศรีราชาและต้องตรวจซ้ำก่อนสมัคร"
        ),
    ),
    project(
        "ku-sriracha-youth-leader-1-1",
        "ku-sriracha-youth-leader",
        "โครงการผู้นำเยาวชน",
        "1.1",
        YOUTH_LEADER_URL,
        "เกณฑ์โครงการผู้นำเยาวชน วิทยาเขตศรีราชา KU-TCAS70",
        application_url=SRIRACHA_SITE_URL,
        data_notes=(
            "หน้ารวม KU-TCAS70 ยืนยันชื่อสาขาและจำนวนรับ; รายละเอียดเกณฑ์รายสาขา "
            "อยู่ในระบบรับสมัครวิทยาเขตศรีราชาและต้องตรวจซ้ำก่อนสมัคร"
        ),
    ),
    project(
        "ku-sriracha-expansion-1-1",
        "ku-sriracha-expansion",
        "โครงการขยายโอกาสทางการศึกษา วิทยาเขตศรีราชา",
        "1.1",
        SRIRACHA_EXPANSION_11_URL,
        "เกณฑ์โครงการขยายโอกาสทางการศึกษา วิทยาเขตศรีราชา รอบ 1.1 KU-TCAS70",
        application_url=SRIRACHA_SITE_URL,
    ),
    project(
        "ku-sriracha-expansion-1-2",
        "ku-sriracha-expansion",
        "โครงการขยายโอกาสทางการศึกษา วิทยาเขตศรีราชา",
        "1.2",
        SRIRACHA_EXPANSION_12_URL,
        "เกณฑ์โครงการขยายโอกาสทางการศึกษา วิทยาเขตศรีราชา รอบ 1.2 KU-TCAS70",
        application_url=SRIRACHA_SITE_URL,
        data_notes=(
            "หน้ารวม KU-TCAS70 ระบุสาขาแล้ว แต่ปฏิทินรอบ 1.2 ของวิทยาเขตศรีราชา "
            "ยังรอประกาศ จึงยังไม่แสดงวันสมัครเป็นวันที่ยืนยัน"
        ),
    ),
]

PROJECTS.extend(PROJECT_ADDITIONS)

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


PROJECT_PROGRAM_ADDITIONS = [
    {
        "project_code": "ku-bangkhen-white-elephant-1-1",
        "program_code": CS_SPECIAL_CODE,
        "slots_available": 22,
        "program_notes": "รับ 22 คน; มีทั้งเส้นทางผู้มีผลงานและผู้ไม่มีผลงานตามเกณฑ์หน้าโครงการ",
    },
    {
        "project_code": "ku-bangkhen-sports-1-1",
        "program_code": CS_CODE,
        "slots_available": 2,
        "program_notes": "รับ 2 คน; นักกีฬาระดับชาติหรือเยาวชนทีมชาติ",
    },
    {
        "project_code": "ku-bangkhen-sports-1-1",
        "program_code": CPE_CODE,
        "slots_available": 1,
        "program_notes": "รับ 1 คน; นักกีฬาระดับชาติหรือเยาวชนทีมชาติ",
    },
    {
        "project_code": "ku-bangkhen-psw-1-1",
        "program_code": CS_CODE,
        "slots_available": None,
        "program_notes": "จำนวนรับรวมกับเงื่อนไขอื่นตามที่หน้าโครงการระบุ",
    },
    {
        "project_code": "ku-bangkhen-culture-soft-power-1-1",
        "program_code": CPE_CODE,
        "slots_available": 2,
        "program_notes": "รับ 2 คน; โควตาศิลปวัฒนธรรม/ซอฟต์พาวเวอร์ และต้องตรวจรายละเอียดการทดสอบจากประกาศ",
    },
    {
        "project_code": "ku-bangkhen-science-network-1-1",
        "program_code": CS_CODE,
        "slots_available": None,
        "program_notes": "จำนวนรับรวมกับเงื่อนไขอื่นตามหน้าโครงการ ไม่ใช่จำนวนรับเฉพาะวิทยาการคอมพิวเตอร์",
    },
    {
        "project_code": "ku-bangkhen-science-network-1-1",
        "program_code": CS_SPECIAL_CODE,
        "slots_available": None,
        "program_notes": "จำนวนรับรวมกับเงื่อนไขอื่นตามหน้าโครงการ ไม่ใช่จำนวนรับเฉพาะวิทยาการคอมพิวเตอร์ภาคพิเศษ",
    },
    {
        "project_code": "ku-bangkhen-olympic-1-1",
        "program_code": CS_CODE,
        "slots_available": 2,
        "program_notes": "รับ 2 คน; ต้องมีประสบการณ์ค่าย สอวน. อย่างน้อย 2 ค่าย",
    },
    {
        "project_code": "ku-bangkhen-olympic-1-1",
        "program_code": SKE_CODE,
        "slots_available": 2,
        "program_notes": "รับ 2 คน; ใช้คุณสมบัติตามเส้นทาง สสวท.",
    },
    {
        "project_code": "ku-bangkhen-olympic-1-2",
        "program_code": CPE_CODE,
        "slots_available": 10,
        "program_notes": "รับรวม 10 คน แบ่งเป็น สอวน. 5 คน และ สสวท. 5 คน",
    },
    {
        "project_code": "ku-bangkhen-olympic-1-2",
        "program_code": SKE_CODE,
        "slots_available": 2,
        "program_notes": "หน้าโครงการระบุ 2 คน แต่รายละเอียดเกณฑ์รายสาขายังต้องตรวจประกาศย่อยก่อนสมัคร",
    },
    {
        "project_code": "ku-kps-advanced-placement-1-1",
        "program_code": KPS_CPE_CODE,
        "slots_available": 2,
        "program_notes": "รับ 2 คน; ผู้เข้าร่วมโครงการเรียนล่วงหน้า และต้องผ่านวิชาตามเกณฑ์กำแพงแสน",
    },
    {
        "project_code": "ku-kps-portfolio-1-1",
        "program_code": KPS_CPE_CODE,
        "slots_available": 20,
        "program_notes": "รับ 20 คน; แผนวิทยาศาสตร์-คณิตศาสตร์และมีผลงานคอมพิวเตอร์",
    },
    {
        "project_code": "ku-kps-portfolio-1-1",
        "program_code": KPS_IT_CODE,
        "slots_available": 30,
        "program_notes": "รับ 30 คน; รับ ม.6 หรือ ปวช. ตามเงื่อนไขสาขา",
    },
    {
        "project_code": "ku-kps-portfolio-1-1",
        "program_code": KPS_IT_SPECIAL_CODE,
        "slots_available": 70,
        "program_notes": "รับ 70 คน; รับ ม.6 หรือ ปวช. ตามเงื่อนไขสาขาภาคพิเศษ",
    },
    {
        "project_code": "ku-kps-portfolio-1-1",
        "program_code": KPS_CS_CODE,
        "slots_available": 30,
        "program_notes": "รับ 30 คน; รับตามแผนการเรียนและคุณสมบัติของสาขา",
    },
    {
        "project_code": "ku-kps-portfolio-1-1",
        "program_code": KPS_CS_SPECIAL_CODE,
        "slots_available": 40,
        "program_notes": "รับ 40 คน; รับ ม.6 หรือ ปวช. ตามเงื่อนไขสาขาภาคพิเศษ",
    },
    {
        "project_code": "ku-kps-portfolio-1-2",
        "program_code": KPS_CPE_CODE,
        "slots_available": 1,
        "program_notes": "รับ 1 คน; แผนวิทยาศาสตร์-คณิตศาสตร์และมีผลงานคอมพิวเตอร์",
    },
    {
        "project_code": "ku-sriracha-morals-1-1",
        "program_code": SRC_CPE_IS_CODE,
        "slots_available": 1,
        "program_notes": "รับ 1 คน; รายละเอียดคุณสมบัติรายสาขาให้ตรวจในระบบรับสมัครศรีราชา",
    },
    {
        "project_code": "ku-sriracha-youth-leader-1-1",
        "program_code": SRC_CPE_IS_CODE,
        "slots_available": 1,
        "program_notes": "รับ 1 คน; รายละเอียดคุณสมบัติรายสาขาให้ตรวจในระบบรับสมัครศรีราชา",
    },
    {
        "project_code": "ku-sriracha-youth-leader-1-1",
        "program_code": SRC_CS_SPECIAL_CODE,
        "slots_available": 3,
        "program_notes": "รับ 3 คน; รายละเอียดคุณสมบัติรายสาขาให้ตรวจในระบบรับสมัครศรีราชา",
    },
    {
        "project_code": "ku-sriracha-youth-leader-1-1",
        "program_code": SRC_CS_CODE,
        "slots_available": 2,
        "program_notes": "รับ 2 คน; รายละเอียดคุณสมบัติรายสาขาให้ตรวจในระบบรับสมัครศรีราชา",
    },
    {
        "project_code": "ku-sriracha-expansion-1-1",
        "program_code": SRC_CPE_IS_CODE,
        "slots_available": 20,
        "program_notes": "รับรวม 20 คน แบ่งตามคุณสมบัติ ม.6 และ ปวช.",
    },
    {
        "project_code": "ku-sriracha-expansion-1-1",
        "program_code": SRC_CS_CODE,
        "slots_available": 10,
        "program_notes": "รับ 10 คน; ใช้เกณฑ์ Portfolio, GPAX และสัมภาษณ์ตามหน้าโครงการ",
    },
    {
        "project_code": "ku-sriracha-expansion-1-1",
        "program_code": SRC_CS_SPECIAL_CODE,
        "slots_available": 25,
        "program_notes": "รับ 25 คน; ใช้เกณฑ์ Portfolio, GPAX และสัมภาษณ์ตามหน้าโครงการ",
    },
    {
        "project_code": "ku-sriracha-expansion-1-2",
        "program_code": SRC_CPE_IS_CODE,
        "slots_available": 20,
        "program_notes": "รับรวม 20 คน แบ่งตามคุณสมบัติ ม.6 และ ปวช.; วันสมัครรอประกาศ",
    },
    {
        "project_code": "ku-sriracha-expansion-1-2",
        "program_code": SRC_CS_CODE,
        "slots_available": 10,
        "program_notes": "รับ 10 คน; วันสมัครรอประกาศจากวิทยาเขตศรีราชา",
    },
    {
        "project_code": "ku-sriracha-expansion-1-2",
        "program_code": SRC_CS_SPECIAL_CODE,
        "slots_available": 10,
        "program_notes": "รับ 10 คน; วันสมัครรอประกาศจากวิทยาเขตศรีราชา",
    },
]

PROJECT_PROGRAMS.extend(PROJECT_PROGRAM_ADDITIONS)


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


def weighted_methods(*items):
    return [
        {"name": name, "weight_percent": weight}
        for name, weight in items
    ]


def incomplete_sriracha_criterion(project_code, program_code, source_url):
    return criterion(
        project_code,
        program_code,
        portfolio_requirements=(
            "หน้ารวม KU-TCAS70 ยืนยันชื่อโครงการและสาขาแล้ว แต่รายละเอียดรูปแบบ Portfolio "
            "และเอกสารของสาขานี้ต้องตรวจในระบบรับสมัครวิทยาเขตศรีราชา"
        ),
        required_documents=[
            "ตรวจรายการเอกสารในระบบรับสมัครวิทยาเขตศรีราชา",
            "ผลการเรียนและ Portfolio ตามประกาศรายสาขา",
        ],
        selection_methods=["ตรวจตามเกณฑ์รายสาขาในระบบรับสมัครวิทยาเขตศรีราชา"],
        additional_requirements={
            "detail_source": SRIRACHA_SITE_URL,
            "criteria_detail_status": (
                "หน้ารวม KU ระบุสาขาและจำนวนรับ แต่ระบบรายละเอียดรายสาขาโหลดแบบไดนามิก; "
                "ต้องตรวจประกาศล่าสุดก่อนสมัคร"
            ),
        },
        criteria_summary=(
            "มีรายการรับสมัครใน KU-TCAS70 แล้ว แต่ยังไม่พบรายละเอียดเกณฑ์รายสาขา "
            "จากหน้าที่อ่านได้อัตโนมัติ; ห้ามใช้การ์ดนี้แทนประกาศ ให้เปิดระบบศรีราชาตรวจซ้ำ"
        ),
        official_announcement_url=source_url,
    )


def incomplete_detail_criterion(project_code, program_code, source_url, note):
    return criterion(
        project_code,
        program_code,
        portfolio_requirements=(
            "หน้ารวม KU-TCAS70 ระบุว่ามีสาขานี้ในโครงการแล้ว แต่ไม่ได้แสดงรายละเอียด Portfolio "
            "และคุณสมบัติรายสาขาครบในหน้าที่ตรวจได้"
        ),
        required_documents=["ตรวจประกาศ/เอกสารย่อยของโครงการก่อนสมัคร"],
        selection_methods=["ตรวจตามประกาศรายสาขา"],
        additional_requirements={"detail_status": note},
        criteria_summary=(
            "พบชื่อโครงการและสาขาจากหน้ารวม KU-TCAS70 แล้ว แต่เกณฑ์รายสาขายังไม่ครบ "
            "จึงไม่สรุป GPAX หรือสัดส่วนคะแนนแทนประกาศ"
        ),
        official_announcement_url=source_url,
    )


def kps_cpe_criterion(project_code, source_url, semester_note):
    return criterion(
        project_code,
        KPS_CPE_CODE,
        min_gpax=3.00,
        gpax_requirements={
            "studying_semesters": semester_note,
            "graduated_semesters": 6,
        },
        applicant_qualifications=[
            "ม.6 หรือเทียบเท่า",
            "แผนการเรียนวิทยาศาสตร์-คณิตศาสตร์",
            "กำลังศึกษาอย่างน้อยตามจำนวนภาคเรียนที่ประกาศกำหนด หรือผู้จบแล้วใช้ผลการเรียน 6 ภาคเรียน",
            "มีผลงาน โครงงาน การแข่งขัน หรือประกาศนียบัตรด้านคอมพิวเตอร์",
        ],
        portfolio_requirements=(
            "Portfolio ควรแสดงประวัติ เหตุผลที่เลือกสาขา กิจกรรม/ผลงานคอมพิวเตอร์ "
            "และแผนการเรียนตามหัวข้อที่วิทยาเขตกำแพงแสนกำหนด"
        ),
        portfolio_details={
            "portfolio_weight_percent": 70,
            "profile_weight_percent": 10,
            "reason_and_goal_weight_percent": 20,
            "activities_weight_percent": 40,
            "academic_plan_weight_percent": 30,
        },
        accepted_achievements=[
            "โครงงานด้านคอมพิวเตอร์",
            "ผลงานจากการแข่งขัน",
            "ประกาศนียบัตรด้านคอมพิวเตอร์",
        ],
        required_documents=["ผลการเรียน", "Portfolio", "หลักฐานผลงาน/ประกาศนียบัตร"],
        selection_methods=[
            "ประเมิน Portfolio 70% (ประวัติ 10% + เหตุผล 20% + กิจกรรม 40%)",
            "ประเมินผลการเรียน/แผนการเรียน 30%",
            "มีสอบสัมภาษณ์ (หน้าโครงการระบุสัดส่วนขั้นสัมภาษณ์ 100%)",
        ],
        additional_requirements={"interview_required": True},
        criteria_summary=(
            f"GPAX ≥ 3.00; แผนวิทยาศาสตร์-คณิตศาสตร์; ใช้ผลการเรียน {semester_note} "
            "หรือผู้จบแล้ว 6 ภาคเรียน; ต้องมีผลงานคอมพิวเตอร์; Portfolio 70% "
            "และมีสัมภาษณ์"
        ),
        official_announcement_url=source_url,
    )


def kps_track_criterion(
    project_code,
    program_code,
    source_url,
    major_label,
    min_gpax,
    semester_note,
    qualifications,
    portfolio_text,
    accepted,
    summary,
    *,
    additional=None,
):
    return criterion(
        project_code,
        program_code,
        min_gpax=min_gpax,
        gpax_requirements={"semesters": semester_note},
        applicant_qualifications=qualifications,
        portfolio_requirements=portfolio_text,
        accepted_achievements=accepted,
        required_documents=["ผลการเรียน", "Portfolio", "หลักฐานกิจกรรม/โครงงานที่เกี่ยวข้อง"],
        selection_methods=[],
        additional_requirements=additional or {},
        criteria_summary=summary,
        official_announcement_url=source_url,
    )


def sriracha_expansion_cpe_criterion(project_code, source_url, semester_note):
    return criterion(
        project_code,
        SRC_CPE_IS_CODE,
        gpax_requirements={"semesters": semester_note},
        applicant_qualifications=[
            "มี 2 เส้นทางคุณสมบัติ: ม.6 หรือ ปวช. เทคนิคคอมพิวเตอร์/คอมพิวเตอร์ธุรกิจ",
            "เกณฑ์ GPAX และหน่วยกิตแยกตามวุฒิในหัวข้อเงื่อนไขเพิ่มเติม",
        ],
        portfolio_requirements=(
            "Portfolio แสดงผลงาน/กิจกรรมที่เกี่ยวข้องกับวิศวกรรมคอมพิวเตอร์และสารสนเทศศาสตร์ "
            "พร้อมเหตุผลที่เลือกสาขา"
        ),
        portfolio_details={
            "portfolio_weight_percent": 40,
            "gpax_weight_percent": 20,
            "interview_weight_percent": 40,
        },
        accepted_achievements=["กิจกรรมหรือโครงงานด้านคอมพิวเตอร์และสารสนเทศ"],
        required_documents=["ผลการเรียน", "Portfolio", "หลักฐานกิจกรรม/โครงงาน", "เอกสารยืนยันวุฒิ"],
        selection_methods=weighted_methods(
            ("Portfolio", 40),
            ("GPAX", 20),
            ("สัมภาษณ์", 40),
        ),
        additional_requirements={
            "qualification_paths": [
                {
                    "qualification": "ม.6",
                    "min_gpax": 3.25,
                    "minimum_subject_credits": {
                        "คณิตศาสตร์": 12 if semester_note == 5 else 10,
                        "วิทยาศาสตร์": 22 if semester_note == 5 else 20,
                        "ภาษาต่างประเทศ": 6,
                    },
                },
                {
                    "qualification": "ปวช. เทคนิคคอมพิวเตอร์/คอมพิวเตอร์ธุรกิจ",
                    "min_gpax": 3.00,
                },
            ],
            "interview_required": True,
        },
        criteria_summary=(
            f"รับ ม.6 หรือ ปวช. ตามสาขาที่กำหนด; ม.6 GPAX ≥ 3.25 และใช้หน่วยกิตตามประกาศ "
            "ส่วน ปวช. GPAX ≥ 3.00; Portfolio 40% GPAX 20% สัมภาษณ์ 40%"
        ),
        official_announcement_url=source_url,
    )


CRITERIA.extend(
    [
        criterion(
            "ku-bangkhen-olympic-1-1",
            CS_CODE,
            min_gpax=3.00,
            gpax_requirements={"semesters": 4},
            applicant_qualifications=[
                "กำลังศึกษา ม.6 หรือเทียบเท่า",
                "ผ่านค่าย สอวน. อย่างน้อย 2 ค่าย ตามสาขา/หลักฐานที่ประกาศกำหนด",
            ],
            portfolio_requirements="Portfolio ด้านวิชาการหรือกิจกรรม ไม่เกิน 10 หน้า",
            portfolio_details={"max_pages": 10},
            accepted_achievements=["หลักฐานผ่านค่าย สอวน. อย่างน้อย 2 ค่าย", "ผลงานวิชาการหรือกิจกรรม"],
            required_documents=["ผลการเรียน 4 ภาคเรียน", "หลักฐานค่าย สอวน.", "Portfolio ไม่เกิน 10 หน้า"],
            selection_methods=["สัมภาษณ์"],
            additional_requirements={
                "minimum_subject_credits": {"คณิตศาสตร์": 12},
                "interview_required": True,
            },
            criteria_summary=(
                "GPAX 4 ภาคเรียน ≥ 3.00; ผ่านค่าย สอวน. อย่างน้อย 2 ค่าย; "
                "ต้องมีคณิตศาสตร์อย่างน้อย 12 หน่วยกิต และสอบสัมภาษณ์"
            ),
            official_announcement_url=OLYMPIC_11_URL,
        ),
        criterion(
            "ku-bangkhen-olympic-1-1",
            SKE_CODE,
            min_gpax=3.00,
            gpax_requirements={"semesters": 4},
            applicant_qualifications=[
                "กำลังศึกษา ม.6 หรือเทียบเท่า",
                "ผ่านค่าย/การคัดเลือก สสวท. อย่างน้อย 3 ค่าย ตามรายละเอียดหน้าโครงการ",
            ],
            portfolio_requirements="Portfolio ด้านวิชาการหรือกิจกรรม ไม่เกิน 10 หน้า",
            portfolio_details={"max_pages": 10},
            accepted_achievements=["หลักฐานค่าย/การคัดเลือก สสวท.", "ผลงานวิชาการหรือกิจกรรม"],
            required_documents=["ผลการเรียน 4 ภาคเรียน", "หลักฐานค่าย สสวท.", "Portfolio ไม่เกิน 10 หน้า"],
            selection_methods=weighted_methods(("Portfolio", 50), ("สัมภาษณ์", 50)),
            additional_requirements={
                "minimum_subject_credits": {
                    "วิทยาศาสตร์": 22,
                    "คณิตศาสตร์": 12,
                    "ภาษาต่างประเทศ": 9,
                },
                "ipst_camp_min": 3,
                "interview_required": True,
            },
            criteria_summary=(
                "GPAX 4 ภาคเรียน ≥ 3.00; วิทยาศาสตร์ 22 คณิตศาสตร์ 12 และภาษาต่างประเทศ 9 หน่วยกิต; "
                "ผ่านค่าย สสวท. อย่างน้อย 3 ค่าย; Portfolio 50% และสัมภาษณ์ 50%"
            ),
            official_announcement_url=OLYMPIC_11_URL,
        ),
        criterion(
            "ku-bangkhen-olympic-1-2",
            CPE_CODE,
            min_gpax=2.50,
            gpax_requirements={"semesters": 5},
            applicant_qualifications=[
                "กำลังศึกษา ม.6 หรือเทียบเท่า",
                "เลือกเส้นทาง สอวน. หรือ สสวท. ตามจำนวนที่โครงการแบ่งไว้",
            ],
            portfolio_requirements="Portfolio ด้านวิชาการหรือกิจกรรม ไม่เกิน 10 หน้า",
            portfolio_details={"max_pages": 10},
            accepted_achievements=["ผ่านค่าย สอวน. อย่างน้อย 2 ค่าย", "ผ่านค่าย/การคัดเลือก สสวท. ระดับประเทศ"],
            required_documents=["ผลการเรียน", "หลักฐานค่าย/การคัดเลือก", "Portfolio ไม่เกิน 10 หน้า"],
            selection_methods=weighted_methods(("Portfolio", 50), ("สัมภาษณ์", 50)),
            additional_requirements={
                "minimum_subject_credits": {
                    "วิทยาศาสตร์": 22,
                    "คณิตศาสตร์": 12,
                    "ภาษาต่างประเทศ": 9,
                },
                "seat_tracks": ["สอวน. 5 คน", "สสวท. 5 คน"],
                "interview_required": True,
            },
            criteria_summary=(
                "GPAX ≥ 2.50; วิทยาศาสตร์ 22 คณิตศาสตร์ 12 และภาษาต่างประเทศ 9 หน่วยกิต; "
                "รับรวม 10 คน แบ่ง สอวน. 5 และ สสวท. 5; Portfolio 50% และสัมภาษณ์ 50%"
            ),
            official_announcement_url=OLYMPIC_12_URL,
        ),
        incomplete_detail_criterion(
            "ku-bangkhen-olympic-1-2",
            SKE_CODE,
            OLYMPIC_12_URL,
            "หน้ารวมระบุจำนวนรับ 2 คน แต่ไม่แสดงรายละเอียดเกณฑ์ของวิศวกรรมซอฟต์แวร์และความรู้ครบ",
        ),
        criterion(
            "ku-kps-advanced-placement-1-1",
            KPS_CPE_CODE,
            applicant_qualifications=[
                "กำลังศึกษา ม.6 หรือเทียบเท่า",
                "เข้าร่วมโครงการเรียนล่วงหน้าของมหาวิทยาลัยเกษตรศาสตร์",
            ],
            required_documents=["หลักฐานเข้าร่วมโครงการเรียนล่วงหน้า", "ผลรายวิชาที่ใช้สมัคร"],
            selection_methods=["ผลรายวิชาโครงการเรียนล่วงหน้า", "สัมภาษณ์"],
            additional_requirements={
                "advanced_placement_courses": ["คณิตศาสตร์", "ฟิสิกส์", "คอมพิวเตอร์และการโปรแกรม", "การเขียนแบบวิศวกรรม"],
                "choose_courses": 2,
                "minimum_grade": "C",
                "interview_required": True,
            },
            criteria_summary=(
                "ผู้เข้าร่วมโครงการเรียนล่วงหน้า มก.; ใช้ผลรายวิชาตามชุดวิชาที่กำหนด "
                "และต้องมีเกรดอย่างน้อย C ในวิชาที่เลือก พร้อมสัมภาษณ์"
            ),
            official_announcement_url=ADVANCED_PLACEMENT_URL,
        ),
        kps_cpe_criterion("ku-kps-portfolio-1-1", KPS_PORTFOLIO_11_URL, "4 หรือ 5"),
        kps_track_criterion(
            "ku-kps-portfolio-1-1",
            KPS_IT_CODE,
            KPS_PORTFOLIO_11_URL,
            "เทคโนโลยีสารสนเทศ",
            None,
            "4 หรือ 5",
            [
                "ม.6 แผนวิทยาศาสตร์และคณิตศาสตร์ หรือแผนวิทยาศาสตร์ หรือแผนคณิตศาสตร์",
                "หรือ ปวช. สาขาที่เกี่ยวข้องกับคอมพิวเตอร์ตามประกาศ",
            ],
            "Portfolio กิจกรรม/โครงงานด้านเทคโนโลยีสารสนเทศ พร้อมเหตุผลที่เลือกสาขาและเป้าหมายการเรียน",
            ["กิจกรรมด้านเทคโนโลยีสารสนเทศ", "โครงงานด้านเทคโนโลยีสารสนเทศ"],
            "ม.6 GPAX ≥ 2.25 หรือ ปวช. GPAX ≥ 2.50 และผู้สมัคร ปวช. ต้องมีหน่วยกิตคอมพิวเตอร์อย่างน้อย 18; ส่ง Portfolio ที่เกี่ยวข้อง",
            additional={
                "qualification_paths": [
                    {"qualification": "ม.6", "min_gpax": 2.25},
                    {"qualification": "ปวช. ที่เกี่ยวข้อง", "min_gpax": 2.50, "computer_credits_min": 18},
                ]
            },
        ),
        kps_track_criterion(
            "ku-kps-portfolio-1-1",
            KPS_IT_SPECIAL_CODE,
            KPS_PORTFOLIO_11_URL,
            "เทคโนโลยีสารสนเทศ ภาคพิเศษ",
            None,
            "4 หรือ 5",
            [
                "ม.6 แผนวิทยาศาสตร์และคณิตศาสตร์ หรือแผนวิทยาศาสตร์ หรือแผนคณิตศาสตร์",
                "หรือ ปวช. สาขาที่เกี่ยวข้องกับคอมพิวเตอร์ตามประกาศ",
            ],
            "Portfolio กิจกรรม/โครงงานด้านเทคโนโลยีสารสนเทศ พร้อมเหตุผลที่เลือกสาขาและเป้าหมายการเรียน",
            ["กิจกรรมด้านเทคโนโลยีสารสนเทศ", "โครงงานด้านเทคโนโลยีสารสนเทศ"],
            "ม.6 GPAX ≥ 2.00 หรือ ปวช. GPAX ≥ 2.25 และผู้สมัคร ปวช. ต้องมีหน่วยกิตคอมพิวเตอร์อย่างน้อย 18; ส่ง Portfolio ที่เกี่ยวข้อง",
            additional={
                "qualification_paths": [
                    {"qualification": "ม.6", "min_gpax": 2.00},
                    {"qualification": "ปวช. ที่เกี่ยวข้อง", "min_gpax": 2.25, "computer_credits_min": 18},
                ]
            },
        ),
        kps_track_criterion(
            "ku-kps-portfolio-1-1",
            KPS_CS_CODE,
            KPS_PORTFOLIO_11_URL,
            "วิทยาการคอมพิวเตอร์",
            2.75,
            "4 หรือ 5",
            [
                "ม.6 แผนวิทยาศาสตร์และคณิตศาสตร์ หรือแผนวิทยาศาสตร์ หรือแผนคณิตศาสตร์",
                "มีผลงาน/กิจกรรมที่เกี่ยวข้องกับวิทยาการคอมพิวเตอร์",
            ],
            "Portfolio กิจกรรมหรือโครงงานด้านวิทยาการคอมพิวเตอร์ พร้อมเหตุผลที่เลือกสาขาและเป้าหมายการเรียน",
            ["กิจกรรมด้านวิทยาการคอมพิวเตอร์", "โครงงานด้านวิทยาการคอมพิวเตอร์"],
            "GPAX ≥ 2.75; รับตามแผนการเรียนที่ประกาศกำหนด และส่ง Portfolio ที่เกี่ยวข้องกับวิทยาการคอมพิวเตอร์",
        ),
        kps_track_criterion(
            "ku-kps-portfolio-1-1",
            KPS_CS_SPECIAL_CODE,
            KPS_PORTFOLIO_11_URL,
            "วิทยาการคอมพิวเตอร์ ภาคพิเศษ",
            2.50,
            "4 หรือ 5",
            [
                "ม.6 หรือ ปวช. สาขาที่ประกาศกำหนด เช่น ช่างเทคนิคคอมพิวเตอร์ คอมพิวเตอร์ธุรกิจ ไฟฟ้า หรืออิเล็กทรอนิกส์",
                "มีผลงาน/กิจกรรมที่เกี่ยวข้องกับวิทยาการคอมพิวเตอร์",
            ],
            "Portfolio กิจกรรมหรือโครงงานด้านวิทยาการคอมพิวเตอร์ พร้อมเหตุผลที่เลือกสาขาและเป้าหมายการเรียน",
            ["กิจกรรมด้านวิทยาการคอมพิวเตอร์", "โครงงานด้านวิทยาการคอมพิวเตอร์"],
            "GPAX ≥ 2.50; รับ ม.6 หรือ ปวช. ตามสาขาที่ประกาศกำหนด และส่ง Portfolio ที่เกี่ยวข้อง",
        ),
        kps_cpe_criterion("ku-kps-portfolio-1-2", KPS_PORTFOLIO_12_URL, "4 หรือ 5"),
        incomplete_sriracha_criterion("ku-sriracha-morals-1-1", SRC_CPE_IS_CODE, MORALS_URL),
        incomplete_sriracha_criterion("ku-sriracha-youth-leader-1-1", SRC_CPE_IS_CODE, YOUTH_LEADER_URL),
        incomplete_sriracha_criterion("ku-sriracha-youth-leader-1-1", SRC_CS_SPECIAL_CODE, YOUTH_LEADER_URL),
        incomplete_sriracha_criterion("ku-sriracha-youth-leader-1-1", SRC_CS_CODE, YOUTH_LEADER_URL),
        sriracha_expansion_cpe_criterion("ku-sriracha-expansion-1-1", SRIRACHA_EXPANSION_11_URL, 4),
        criterion(
            "ku-sriracha-expansion-1-1",
            SRC_CS_CODE,
            min_gpax=3.25,
            gpax_requirements={"semesters": 4},
            subject_gpax={"คณิตศาสตร์": 2.75},
            applicant_qualifications=["กำลังศึกษา ม.6 หรือเทียบเท่า", "หน่วยกิตคณิตศาสตร์ 10 วิทยาศาสตร์ 20 และภาษาต่างประเทศ 5"],
            portfolio_requirements="Portfolio ผลงาน/กิจกรรมด้านวิทยาการคอมพิวเตอร์ พร้อมเหตุผลที่เลือกสาขา",
            portfolio_details={"portfolio_weight_percent": 70, "gpax_weight_percent": 10, "interview_weight_percent": 20},
            accepted_achievements=["ผลงานหรือกิจกรรมด้านวิทยาการคอมพิวเตอร์"],
            required_documents=["ผลการเรียน 4 ภาคเรียน", "Portfolio", "หลักฐานกิจกรรม/ผลงาน"],
            selection_methods=weighted_methods(("Portfolio", 70), ("GPAX", 10), ("สัมภาษณ์", 20)),
            additional_requirements={"minimum_subject_credits": {"คณิตศาสตร์": 10, "วิทยาศาสตร์": 20, "ภาษาต่างประเทศ": 5}, "interview_required": True},
            criteria_summary="GPAX ≥ 3.25; คณิตศาสตร์ 10 วิทยาศาสตร์ 20 ภาษาต่างประเทศ 5 หน่วยกิต และเกรดคณิตศาสตร์ ≥ 2.75; Portfolio 70% GPAX 10% สัมภาษณ์ 20%",
            official_announcement_url=SRIRACHA_EXPANSION_11_URL,
        ),
        criterion(
            "ku-sriracha-expansion-1-1",
            SRC_CS_SPECIAL_CODE,
            min_gpax=3.00,
            gpax_requirements={"semesters": 4},
            applicant_qualifications=["กำลังศึกษา ม.6 หรือเทียบเท่า", "หน่วยกิตคณิตศาสตร์ 5 วิทยาศาสตร์ 5 และภาษาต่างประเทศ 7"],
            portfolio_requirements="Portfolio ผลงาน/กิจกรรมด้านวิทยาการคอมพิวเตอร์ พร้อมเหตุผลที่เลือกสาขา",
            portfolio_details={"portfolio_weight_percent": 80, "gpax_weight_percent": 10, "interview_weight_percent": 10},
            accepted_achievements=["ผลงานหรือกิจกรรมด้านวิทยาการคอมพิวเตอร์"],
            required_documents=["ผลการเรียน 4 ภาคเรียน", "Portfolio", "หลักฐานกิจกรรม/ผลงาน"],
            selection_methods=weighted_methods(("Portfolio", 80), ("GPAX", 10), ("สัมภาษณ์", 10)),
            additional_requirements={"minimum_subject_credits": {"คณิตศาสตร์": 5, "วิทยาศาสตร์": 5, "ภาษาต่างประเทศ": 7}, "interview_required": True},
            criteria_summary="GPAX ≥ 3.00; คณิตศาสตร์ 5 วิทยาศาสตร์ 5 ภาษาต่างประเทศ 7 หน่วยกิต; Portfolio 80% GPAX 10% สัมภาษณ์ 10%",
            official_announcement_url=SRIRACHA_EXPANSION_11_URL,
        ),
        sriracha_expansion_cpe_criterion("ku-sriracha-expansion-1-2", SRIRACHA_EXPANSION_12_URL, 5),
        criterion(
            "ku-sriracha-expansion-1-2",
            SRC_CS_CODE,
            min_gpax=3.25,
            gpax_requirements={"semesters": 5},
            subject_gpax={"คณิตศาสตร์": 2.75},
            applicant_qualifications=["กำลังศึกษา ม.6 หรือเทียบเท่า", "หน่วยกิตคณิตศาสตร์ 12 และวิทยาศาสตร์ 22"],
            portfolio_requirements="Portfolio ผลงาน/กิจกรรมด้านวิทยาการคอมพิวเตอร์ พร้อมเหตุผลที่เลือกสาขา",
            portfolio_details={"portfolio_weight_percent": 70, "gpax_weight_percent": 10, "interview_weight_percent": 20},
            accepted_achievements=["ผลงานหรือกิจกรรมด้านวิทยาการคอมพิวเตอร์"],
            required_documents=["ผลการเรียน 5 ภาคเรียน", "Portfolio", "หลักฐานกิจกรรม/ผลงาน"],
            selection_methods=weighted_methods(("Portfolio", 70), ("GPAX", 10), ("สัมภาษณ์", 20)),
            additional_requirements={"minimum_subject_credits": {"คณิตศาสตร์": 12, "วิทยาศาสตร์": 22}, "interview_required": True},
            criteria_summary="GPAX ≥ 3.25; ใช้ผลการเรียน 5 ภาคเรียน; คณิตศาสตร์ 12 วิทยาศาสตร์ 22 หน่วยกิต และเกรดคณิตศาสตร์ ≥ 2.75; Portfolio 70% GPAX 10% สัมภาษณ์ 20%",
            official_announcement_url=SRIRACHA_EXPANSION_12_URL,
        ),
        criterion(
            "ku-sriracha-expansion-1-2",
            SRC_CS_SPECIAL_CODE,
            min_gpax=3.00,
            gpax_requirements={"semesters": 5},
            applicant_qualifications=["กำลังศึกษา ม.6 หรือเทียบเท่า", "หน่วยกิตคณิตศาสตร์ 6 วิทยาศาสตร์ 6 และภาษาต่างประเทศ 9"],
            portfolio_requirements="Portfolio ผลงาน/กิจกรรมด้านวิทยาการคอมพิวเตอร์ พร้อมเหตุผลที่เลือกสาขา",
            portfolio_details={"portfolio_weight_percent": 80, "gpax_weight_percent": 10, "interview_weight_percent": 10},
            accepted_achievements=["ผลงานหรือกิจกรรมด้านวิทยาการคอมพิวเตอร์"],
            required_documents=["ผลการเรียน 5 ภาคเรียน", "Portfolio", "หลักฐานกิจกรรม/ผลงาน"],
            selection_methods=weighted_methods(("Portfolio", 80), ("GPAX", 10), ("สัมภาษณ์", 10)),
            additional_requirements={"minimum_subject_credits": {"คณิตศาสตร์": 6, "วิทยาศาสตร์": 6, "ภาษาต่างประเทศ": 9}, "interview_required": True},
            criteria_summary="GPAX ≥ 3.00; ใช้ผลการเรียน 5 ภาคเรียน; คณิตศาสตร์ 6 วิทยาศาสตร์ 6 ภาษาต่างประเทศ 9 หน่วยกิต; Portfolio 80% GPAX 10% สัมภาษณ์ 10%",
            official_announcement_url=SRIRACHA_EXPANSION_12_URL,
        ),
    ]
)


CRITERIA.extend(
    [
        criterion(
            "ku-bangkhen-white-elephant-1-1",
            CS_SPECIAL_CODE,
            min_gpax=2.75,
            gpax_requirements={"semesters": 4},
            applicant_qualifications=[
                "กำลังศึกษา ม.6 หรือเทียบเท่าในปีการศึกษา 2569",
                "มีผลงานเขียนโปรแกรม/โครงงานที่เข้าประกวดหรือได้รับรางวัล และผู้สมัครมีบทบาทหลักอย่างน้อย 30%",
                "หรือมีประกาศนียบัตรการอบรมด้านการเขียนโปรแกรมอย่างน้อย 3 หัวข้อ",
                "กรณีไม่มีผลงาน ใช้ GPAX และเกรดเฉลี่ยภาษาอังกฤษ/คณิตศาสตร์ตามเส้นทางที่ประกาศกำหนด",
            ],
            portfolio_requirements=(
                "ส่งวิดีโอผลงานความยาวไม่เกิน 2 นาที นำเสนอผลงานเด่นไม่เกิน 3 รายการ "
                "อธิบายการออกแบบ การพัฒนา source code และรางวัล; หากใช้ AI ต้องระบุส่วนที่ใช้"
            ),
            portfolio_details={
                "video_max_minutes": 2,
                "max_featured_awarded_projects": 3,
                "minimum_primary_contribution_percent": 30,
                "ai_usage_disclosure_required": True,
            },
            accepted_achievements=[
                "ผลงานเขียนโปรแกรมหรือโครงงานที่เข้าประกวด",
                "ผลงานเขียนโปรแกรมหรือโครงงานที่ได้รับรางวัล",
                "ประกาศนียบัตรการอบรมด้านการเขียนโปรแกรมอย่างน้อย 3 หัวข้อ",
            ],
            required_documents=[
                "ผลการเรียน 4 ภาคเรียน",
                "หลักฐานผลงาน/รางวัล หรือประกาศนียบัตรการอบรม",
                "วิดีโอผลงาน",
            ],
            selection_methods=[
                "กรณีมีผลงาน: GPAX 10% + ผลงาน 70% + สัมภาษณ์ 20%",
                "กรณีไม่มีผลงาน: GPAX 40% + ภาษาอังกฤษ 30% + คณิตศาสตร์ 30%",
            ],
            additional_requirements={
                "interview_required": True,
                "no_work_path": {
                    "gpax_min": 3.50,
                    "english_average_min": 3.25,
                    "mathematics_average_min": 3.00,
                },
            },
            criteria_summary=(
                "GPAX 4 ภาคเรียน ≥ 2.75; มีผลงานเขียนโปรแกรม/โครงงานที่ทำหลักอย่างน้อย 30% "
                "หรือใบอบรมเขียนโปรแกรมอย่างน้อย 3 หัวข้อ; ถ้าไม่มีผลงานต้องมี GPAX ≥ 3.50 "
                "และใช้เกรดอังกฤษ/คณิตศาสตร์ตามประกาศ"
            ),
            official_announcement_url=WHITE_ELEPHANT_URL,
        ),
        criterion(
            "ku-bangkhen-sports-1-1",
            CS_CODE,
            gpax_requirements={"semesters": 4},
            applicant_qualifications=[
                "กำลังศึกษา ม.6 หรือเทียบเท่า",
                "เป็นนักกีฬาระดับชาติหรือเยาวชนทีมชาติ ตามประเภทและหลักฐานที่ประกาศกำหนด",
            ],
            accepted_achievements=["ผลงาน/หนังสือรับรองการเป็นนักกีฬาระดับชาติหรือเยาวชนทีมชาติ"],
            required_documents=["ผลการเรียน", "หลักฐานสถานะนักกีฬา", "Portfolio หรือหลักฐานผลงานตามประกาศ"],
            selection_methods=["สัมภาษณ์ 100%"],
            additional_requirements={
                "minimum_subject_credits": {"คณิตศาสตร์": 12, "ภาษาต่างประเทศ": 9},
                "interview_required": True,
            },
            criteria_summary=(
                "รับนักกีฬาระดับชาติหรือเยาวชนทีมชาติ; ต้องมีคณิตศาสตร์อย่างน้อย 12 "
                "และภาษาต่างประเทศ 9 หน่วยกิต; คัดเลือกด้วยสัมภาษณ์"
            ),
            official_announcement_url=SPORTS_URL,
        ),
        criterion(
            "ku-bangkhen-sports-1-1",
            CPE_CODE,
            gpax_requirements={"semesters": 4},
            applicant_qualifications=[
                "กำลังศึกษา ม.6 หรือเทียบเท่า",
                "เป็นนักกีฬาระดับชาติหรือเยาวชนทีมชาติ ตามประเภทและหลักฐานที่ประกาศกำหนด",
            ],
            accepted_achievements=["ผลงาน/หนังสือรับรองการเป็นนักกีฬาระดับชาติหรือเยาวชนทีมชาติ"],
            required_documents=["ผลการเรียน", "หลักฐานสถานะนักกีฬา", "Portfolio หรือหลักฐานผลงานตามประกาศ"],
            selection_methods=["สัมภาษณ์ 100%"],
            additional_requirements={
                "minimum_subject_credits": {
                    "วิทยาศาสตร์": 22,
                    "คณิตศาสตร์": 12,
                    "ภาษาต่างประเทศ": 9,
                },
                "interview_required": True,
            },
            criteria_summary=(
                "รับนักกีฬาระดับชาติหรือเยาวชนทีมชาติ; ต้องมีวิทยาศาสตร์ 22 "
                "คณิตศาสตร์ 12 และภาษาต่างประเทศ 9 หน่วยกิต; คัดเลือกด้วยสัมภาษณ์"
            ),
            official_announcement_url=SPORTS_URL,
        ),
        criterion(
            "ku-bangkhen-psw-1-1",
            CS_CODE,
            min_gpax=3.00,
            gpax_requirements={"semesters": 4},
            subject_gpax={"วิทยาศาสตร์": 3.25, "คณิตศาสตร์": 3.25},
            applicant_qualifications=[
                "นักเรียนโครงการ พสวท. หรือผู้มีความสามารถพิเศษทางวิทยาศาสตร์ตามเงื่อนไขของโครงการ",
                "มีผลการเรียนและคะแนน TGAT/TPAT3 ตามเกณฑ์หน้าโครงการ",
            ],
            portfolio_requirements=(
                "รวบรวมหลักฐานการเข้าค่าย/การแข่งขัน/โครงงานด้านวิทยาศาสตร์หรือคณิตศาสตร์ "
                "และจัดทำ Portfolio ไม่เกิน 10 หน้า"
            ),
            portfolio_details={"max_pages": 10},
            accepted_achievements=[
                "การเข้าค่ายหรือผ่านการคัดเลือกโครงการ พสวท.",
                "โครงงาน/การแข่งขันด้านวิทยาศาสตร์หรือคณิตศาสตร์",
            ],
            required_documents=["ผลการเรียน", "Portfolio ไม่เกิน 10 หน้า", "หลักฐานค่าย/ผลงาน", "ผล TGAT และ TPAT3"],
            selection_methods=weighted_methods(
                ("Portfolio", 10),
                ("ผลการเรียนวิทยาศาสตร์/คณิตศาสตร์", 10),
                ("TGAT", 10),
                ("TPAT3", 30),
                ("สัมภาษณ์", 40),
            ),
            additional_requirements={
                "minimum_subject_credits": {"วิทยาศาสตร์": 22, "คณิตศาสตร์": 12},
                "minimum_tgat_each": 25,
                "tpat3_min": 35,
                "interview_required": True,
            },
            standardized_scores={"TGAT1": 25, "TGAT2": 25, "TGAT3": 25, "TPAT3": 35},
            criteria_summary=(
                "GPAX ≥ 3.00; เกรดเฉลี่ยวิทยาศาสตร์และคณิตศาสตร์ ≥ 3.25; "
                "ใช้ TGAT1/2/3 อย่างละ ≥ 25 และ TPAT3 ≥ 35; Portfolio 10% "
                "วิชา/เกรด 10% TGAT 10% TPAT3 30% สัมภาษณ์ 40%"
            ),
            official_announcement_url=PSW_URL,
        ),
    ]
)


CRITERIA.extend(
    [
        criterion(
            "ku-bangkhen-culture-soft-power-1-1",
            CPE_CODE,
            min_gpax=2.75,
            gpax_requirements={"semesters": 4},
            applicant_qualifications=[
                "กำลังศึกษาอยู่ชั้นมัธยมศึกษาปีที่ 6 หรือเทียบเท่าในปีการศึกษา 2569",
                "มีประวัติและผลงานตามประเภทศิลปวัฒนธรรมและซอฟต์พาวเวอร์ที่มหาวิทยาลัยกำหนด",
                "หน่วยกิตกลุ่มสาระการเรียนรู้คณิตศาสตร์ไม่ต่ำกว่า 12 หน่วยกิต",
            ],
            portfolio_requirements=(
                "Portfolio และหลักฐานผลงานด้านศิลปวัฒนธรรมหรือซอฟต์พาวเวอร์ "
                "ตามประเภทที่มหาวิทยาลัยกำหนด"
            ),
            accepted_achievements=[
                "ผลงานศิลปวัฒนธรรม",
                "ผลงานซอฟต์พาวเวอร์",
                "รางวัลหรือหลักฐานความสามารถตามประเภทที่มหาวิทยาลัยกำหนด",
            ],
            required_documents=[
                "ผลการเรียน 4 ภาคเรียน",
                "Portfolio และหลักฐานผลงาน",
                "ผลคะแนนภาษาอังกฤษ (ถ้ามี/ตามประกาศ)",
            ],
            selection_methods=[
                "ผลคะแนนสอบภาษาอังกฤษ",
                "การทดสอบความสามารถด้านศิลปวัฒนธรรมและซอฟต์พาวเวอร์",
                "สอบสัมภาษณ์เป็นภาษาอังกฤษ",
            ],
            additional_requirements={
                "minimum_subject_credits": {"คณิตศาสตร์": 12},
                "interview_required": True,
                "interview_language": "อังกฤษ",
                "ability_test_weight_percent": 100,
            },
            criteria_summary=(
                "GPAX 4 ภาคเรียน ≥ 2.75; คณิตศาสตร์ 12 หน่วยกิต; "
                "ต้องมีผลงานศิลปวัฒนธรรมหรือซอฟต์พาวเวอร์ตามประเภทที่กำหนด; "
                "มีผลภาษาอังกฤษ การทดสอบความสามารถ และสัมภาษณ์ภาษาอังกฤษ"
            ),
            official_announcement_url=CULTURE_SOFT_POWER_URL,
        ),
        incomplete_detail_criterion(
            "ku-bangkhen-science-network-1-1",
            CS_CODE,
            SCIENCE_NETWORK_URL,
            "หน้ารายโครงการระบุวิทยาการคอมพิวเตอร์ภาคปกติเป็นจำนวนรับรวมกับเงื่อนไขอื่น "
            "และไม่แสดงเกณฑ์เฉพาะสาขาคอมพิวเตอร์ครบ",
        ),
        incomplete_detail_criterion(
            "ku-bangkhen-science-network-1-1",
            CS_SPECIAL_CODE,
            SCIENCE_NETWORK_URL,
            "หน้ารายโครงการระบุวิทยาการคอมพิวเตอร์ภาคพิเศษเป็นจำนวนรับรวมกับเงื่อนไขอื่น "
            "และไม่แสดงเกณฑ์เฉพาะสาขาคอมพิวเตอร์ครบ",
        ),
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


def campus_round_timeline(project_code, variant, campus):
    if campus == "kamphaeng-saen":
        schedules = {
            "1.1": {
                "apply": ("2026-10-01", "2026-11-05", "1 ต.ค.–5 พ.ย. 2569"),
                "eligible": ("2026-11-16", "16 พ.ย. 2569"),
                "interview": ("2026-11-20", "20 พ.ย. 2569"),
                "result": ("2026-11-24", "24 พ.ย. 2569"),
            },
            "1.2": {
                "apply": ("2026-12-01", "2027-02-10", "1 ธ.ค. 2569–10 ก.พ. 2570"),
                "eligible": ("2027-02-22", "22 ก.พ. 2570"),
                "interview": ("2027-02-25", "2027-02-26", "25–26 ก.พ. 2570"),
                "result": ("2027-03-02", "2 มี.ค. 2570"),
            },
        }
    elif campus == "sriracha" and variant == "1.1":
        schedules = {
            "1.1": {
                "apply": ("2026-08-25", "2026-11-15", "25 ส.ค.–15 พ.ย. 2569"),
                "eligible": ("2026-12-04", "4 ธ.ค. 2569"),
                "interview": ("2026-12-13", "13 ธ.ค. 2569"),
                "result": ("2026-12-18", "18 ธ.ค. 2569"),
            }
        }
    else:
        return []

    schedule = schedules[variant]
    apply_start, apply_end, apply_display = schedule["apply"]
    eligible = schedule["eligible"]
    interview = schedule["interview"]
    result = schedule["result"]
    eligible_start, eligible_display = eligible[0], eligible[-1]
    interview_start = interview[0]
    interview_end = interview[1] if len(interview) == 3 else interview[0]
    interview_display = interview[-1]
    result_start, result_display = result[0], result[-1]
    return [
        event(project_code, "รับสมัคร", apply_start, apply_end, apply_display),
        event(
            project_code,
            "ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์",
            eligible_start,
            eligible_start,
            eligible_display,
        ),
        event(project_code, "สอบสัมภาษณ์", interview_start, interview_end, interview_display),
        event(
            project_code,
            "ประกาศผลสอบสัมภาษณ์",
            result_start,
            result_start,
            result_display,
        ),
    ]


TIMELINE = []
for item in PROJECTS:
    if item["code"].startswith("ku-kps-"):
        TIMELINE.extend(
            campus_round_timeline(item["code"], item["round_variant"], "kamphaeng-saen")
        )
    elif item["code"].startswith("ku-sriracha-"):
        TIMELINE.extend(
            campus_round_timeline(item["code"], item["round_variant"], "sriracha")
        )
    else:
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
    {
        "url": SPORTS_URL,
        "publisher": "มหาวิทยาลัยเกษตรศาสตร์",
        "classification": "imported_primary",
        "academic_year": 2570,
        "decision": "นำเข้าโครงการรับนักกีฬาดีเด่นของวิทยาการคอมพิวเตอร์และวิศวกรรมคอมพิวเตอร์ พร้อมจำนวนรับและเงื่อนไขหลัก",
    },
    {
        "url": PSW_URL,
        "publisher": "มหาวิทยาลัยเกษตรศาสตร์",
        "classification": "imported_primary",
        "academic_year": 2570,
        "decision": "นำเข้าโครงการ พสวท. ของวิทยาการคอมพิวเตอร์ พร้อมเกณฑ์ GPAX คะแนน TGAT/TPAT3 และสัดส่วนคัดเลือก; จำนวนรับเป็นจำนวนรวมตามหน้าโครงการ",
    },
    {
        "url": CULTURE_SOFT_POWER_URL,
        "publisher": "มหาวิทยาลัยเกษตรศาสตร์",
        "classification": "imported_primary",
        "academic_year": 2570,
        "decision": "นำเข้าโควตาศิลปวัฒนธรรมและซอฟต์พาวเวอร์ของวิศวกรรมคอมพิวเตอร์ พร้อม GPAX หน่วยกิตคณิตศาสตร์ และรูปแบบการทดสอบที่หน้าโครงการระบุ",
    },
    {
        "url": SCIENCE_NETWORK_URL,
        "publisher": "มหาวิทยาลัยเกษตรศาสตร์",
        "classification": "imported_primary",
        "academic_year": 2570,
        "decision": "นำเข้าโครงการพัฒนาเครือข่ายองค์กรแห่งการเรียนรู้ด้านวิทยาศาสตร์ที่ระบุวิทยาการคอมพิวเตอร์ภาคปกติ/พิเศษ; เก็บจำนวนรับเป็นยอดรวมและติดป้ายให้ตรวจเกณฑ์เฉพาะสาขา",
    },
    {
        "url": OLYMPIC_11_URL,
        "publisher": "มหาวิทยาลัยเกษตรศาสตร์",
        "classification": "imported_primary",
        "academic_year": 2570,
        "decision": "นำเข้าโครงการโอลิมปิกวิชาการ 1.1 ของวิทยาการคอมพิวเตอร์และวิศวกรรมซอฟต์แวร์และความรู้",
    },
    {
        "url": OLYMPIC_12_URL,
        "publisher": "มหาวิทยาลัยเกษตรศาสตร์",
        "classification": "imported_primary",
        "academic_year": 2570,
        "decision": "นำเข้าโครงการโอลิมปิกวิชาการ 1.2 ของวิศวกรรมคอมพิวเตอร์และรายการวิศวกรรมซอฟต์แวร์และความรู้ที่หน้าโครงการระบุ พร้อมป้ายเตือนเมื่อรายละเอียดรายสาขายังไม่ครบ",
    },
    {
        "url": KPS_PORTFOLIO_11_URL,
        "publisher": "มหาวิทยาลัยเกษตรศาสตร์",
        "classification": "imported_primary",
        "academic_year": 2570,
        "decision": "นำเข้า Portfolio 1.1 วิทยาเขตกำแพงแสน ครบรายการสายคอมพิวเตอร์/เทคโนโลยีสารสนเทศที่หน้าโครงการระบุ",
    },
    {
        "url": KPS_PORTFOLIO_12_URL,
        "publisher": "มหาวิทยาลัยเกษตรศาสตร์",
        "classification": "imported_primary",
        "academic_year": 2570,
        "decision": "นำเข้า Portfolio 1.2 วิทยาเขตกำแพงแสนของวิศวกรรมคอมพิวเตอร์ พร้อมจำนวนรับ 1 คน",
    },
    {
        "url": SRIRACHA_EXPANSION_11_URL,
        "publisher": "มหาวิทยาลัยเกษตรศาสตร์",
        "classification": "imported_primary",
        "academic_year": 2570,
        "decision": "นำเข้าโครงการขยายโอกาสทางการศึกษา วิทยาเขตศรีราชา 1.1 ของวิศวกรรมคอมพิวเตอร์และสารสนเทศศาสตร์และวิทยาการคอมพิวเตอร์",
    },
    {
        "url": SRIRACHA_EXPANSION_12_URL,
        "publisher": "มหาวิทยาลัยเกษตรศาสตร์",
        "classification": "imported_primary",
        "academic_year": 2570,
        "decision": "นำเข้าโครงการขยายโอกาสทางการศึกษา วิทยาเขตศรีราชา 1.2; รายการมีจำนวนรับแล้วแต่วันสมัครรอประกาศ",
    },
    {
        "url": MORALS_URL,
        "publisher": "มหาวิทยาลัยเกษตรศาสตร์",
        "classification": "imported_primary",
        "academic_year": 2570,
        "decision": "นำเข้ารายการวิศวกรรมคอมพิวเตอร์และสารสนเทศศาสตร์ในโครงการคุณธรรมของศรีราชา พร้อมป้ายให้ตรวจเกณฑ์รายสาขาในระบบศรีราชา",
    },
    {
        "url": YOUTH_LEADER_URL,
        "publisher": "มหาวิทยาลัยเกษตรศาสตร์",
        "classification": "imported_primary",
        "academic_year": 2570,
        "decision": "นำเข้ารายการสายคอมพิวเตอร์ในโครงการผู้นำเยาวชนของศรีราชา พร้อมป้ายให้ตรวจเกณฑ์รายสาขาในระบบศรีราชา",
    },
    {
        "url": KPS_SITE_URL,
        "publisher": "มหาวิทยาลัยเกษตรศาสตร์ วิทยาเขตกำแพงแสน",
        "classification": "imported_primary_supporting",
        "academic_year": 2570,
        "decision": "เก็บเป็นช่องทางสมัคร/ตรวจรายละเอียดของวิทยาเขตกำแพงแสน",
    },
    {
        "url": SRIRACHA_SITE_URL,
        "publisher": "มหาวิทยาลัยเกษตรศาสตร์ วิทยาเขตศรีราชา",
        "classification": "imported_primary_supporting",
        "academic_year": 2570,
        "decision": "เก็บเป็นระบบรับสมัครและแหล่งตรวจเกณฑ์รายสาขาของศรีราชา; หน้าเกณฑ์โหลดแบบไดนามิกจึงไม่เดาเงื่อนไขแทน",
    },
]


KU_CALENDARS = [
    {
        "code": "ku-bangkhen-portfolio-2570",
        "university_short_name": "KU",
        "campus_codes": ["bangkhen"],
        "title": "ปฏิทิน มก. • บางเขน",
        "academic_year": 2570,
        "source_url": HOME_URL,
        "source_checked_at": "2026-08-30",
        "scope_note": "ปฏิทินวิทยาเขต ไม่ยืนยันว่าทุกสาขาเปิดทั้งสองครั้ง; วันด้านล่างเป็นผลสัมภาษณ์ ไม่ใช่วันยืนยันสิทธิ์",
        "rounds": [
            {
                "label": "Portfolio 1.1",
                "application_start_on": "2026-09-18",
                "application_end_on": "2026-10-14",
                "result_announcement_on": None,
                "date_status": "confirmed",
                "interview_eligible_on": "2026-11-03",
                "interview_on": "2026-11-09",
                "interview_passed_on": "2026-11-16",
            },
            {
                "label": "Portfolio 1.2",
                "application_start_on": "2027-01-04",
                "application_end_on": "2027-02-04",
                "result_announcement_on": None,
                "date_status": "confirmed",
                "interview_eligible_on": "2027-03-02",
                "interview_on": "2027-03-04",
                "interview_passed_on": "2027-03-05",
            },
        ],
    },
    {
        "code": "ku-kamphaeng-saen-portfolio-2570",
        "university_short_name": "KU",
        "campus_codes": ["kamphaeng-saen"],
        "title": "ปฏิทิน มก. • กำแพงแสน",
        "academic_year": 2570,
        "source_url": HOME_URL,
        "source_checked_at": "2026-08-30",
        "scope_note": "ปฏิทินกลาง มก. สำหรับวิทยาเขตกำแพงแสน; วันสมัครและผลเป็นกำหนดการกลาง ไม่แทนเกณฑ์รายสาขา",
        "rounds": [
            {
                "label": "Portfolio 1.1",
                "application_start_on": "2026-10-01",
                "application_end_on": "2026-11-05",
                "result_announcement_on": None,
                "date_status": "confirmed",
                "interview_eligible_on": "2026-11-16",
                "interview_on": "2026-11-20",
                "interview_passed_on": "2026-11-24",
            },
            {
                "label": "Portfolio 1.2",
                "application_start_on": "2026-12-01",
                "application_end_on": "2027-02-10",
                "result_announcement_on": None,
                "date_status": "confirmed",
                "interview_eligible_on": "2027-02-22",
                "interview_on": "2027-02-25",
                "interview_end_on": "2027-02-26",
                "interview_passed_on": "2027-03-02",
            },
        ],
    },
    {
        "code": "ku-sriracha-portfolio-2570",
        "university_short_name": "KU",
        "campus_codes": ["sriracha"],
        "title": "ปฏิทิน มก. • ศรีราชา",
        "academic_year": 2570,
        "source_url": HOME_URL,
        "source_checked_at": "2026-08-30",
        "scope_note": "ปฏิทินวิทยาเขตศรีราชา; รอบ 1.2 ยังรอประกาศ จึงไม่แสดงวันสมัครแทนการประกาศ",
        "rounds": [
            {
                "label": "Portfolio 1.1",
                "application_start_on": "2026-08-25",
                "application_end_on": "2026-11-15",
                "result_announcement_on": None,
                "date_status": "confirmed",
                "interview_eligible_on": "2026-12-04",
                "interview_on": "2026-12-13",
                "interview_passed_on": "2026-12-18",
            }
        ],
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
    existing_by_code = {
        existing.get("code"): existing for existing in data["programs"]
    }
    additions_by_code = {item["code"]: item for item in PROGRAM_ADDITIONS}
    ordered_codes = [item["code"] for item in PROGRAM_ADDITIONS] + [
        CS_CODE,
        CPE_CODE,
        SKE_CODE,
    ]
    programs = []
    for code in ordered_codes:
        item = dict(additions_by_code.get(code) or existing_by_code.get(code) or {})
        if not item:
            continue
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
    upsert(
        data["university_admission_calendars"],
        KU_CALENDARS,
        lambda item: item["code"],
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

    delta = {
        "schema_version": data["schema_version"],
        "academic_year": data["academic_year"],
        "checked_at": data["checked_at"],
        "status_policy": data["status_policy"],
        "universities": [UNIVERSITY],
        "campuses": [
            item for item in data.get("campuses", [])
            if item.get("university_short_name") == "KU"
        ],
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
