import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
DATASET_PATH = ROOT / "datasets" / "tcas70_admissions.json"
AUDIT_PATH = ROOT / "datasets" / "tcas70_source_audit.json"


CAMPUSES = [
    {"university_short_name": "CMU", "code": "main", "name": "วิทยาเขตหลัก", "is_main": True, "official_url": "https://www.cmu.ac.th/th/campus"},
    {"university_short_name": "CU", "code": "pathum-wan", "name": "พื้นที่การศึกษาปทุมวัน", "is_main": True, "official_url": "https://www.chula.ac.th/contact/"},
    {"university_short_name": "KMITL", "code": "ladkrabang", "name": "วิทยาเขตลาดกระบัง", "is_main": True, "official_url": "https://www.kmitl.ac.th/contact"},
    {"university_short_name": "KMITL", "code": "chumphon", "name": "วิทยาเขตชุมพรเขตรอุดมศักดิ์", "is_main": False, "official_url": "https://www.kmitl-chumphon.kmitl.ac.th/contact-us/"},
    {"university_short_name": "KMUTNB", "code": "bangkok", "name": "วิทยาเขตกรุงเทพมหานคร", "is_main": True, "official_url": "https://www.kmutnb.ac.th/About-(1)/Contact-Directions/Contact.aspx"},
    {"university_short_name": "KMUTNB", "code": "prachinburi", "name": "วิทยาเขตปราจีนบุรี", "is_main": False, "official_url": "https://www.kmutnb.ac.th/faculty-and-agencies/prachin-campus/faculty-of-Industrial-technology-and-management.aspx"},
    {"university_short_name": "KMUTT", "code": "bangmod", "name": "พื้นที่การศึกษาบางมด", "is_main": True, "official_url": "https://www.kmutt.ac.th/about-kmutt/campus/"},
    {"university_short_name": "KMUTT", "code": "bangkhuntien", "name": "พื้นที่การศึกษาบางขุนเทียน", "is_main": False, "official_url": "https://www.kmutt.ac.th/about-kmutt/contact-us/"},
    {"university_short_name": "KMUTT", "code": "ratchaburi", "name": "พื้นที่การศึกษาราชบุรี", "is_main": False, "official_url": "https://www.kmutt.ac.th/about-kmutt/contact-us/"},
    {"university_short_name": "KU", "code": "bangkhen", "name": "วิทยาเขตบางเขน", "is_main": True, "official_url": "https://ku.ac.th/th/campus-information"},
    {"university_short_name": "KU", "code": "kamphaeng-saen", "name": "วิทยาเขตกำแพงแสน", "is_main": False, "official_url": "https://admission.kps.ku.ac.th/"},
    {"university_short_name": "KU", "code": "sriracha", "name": "วิทยาเขตศรีราชา", "is_main": False, "official_url": "https://admissions.src.ku.ac.th/"},
    {"university_short_name": "KU", "code": "sakon-nakhon", "name": "วิทยาเขตเฉลิมพระเกียรติ จังหวัดสกลนคร", "is_main": False, "official_url": "https://ku.ac.th/th/campus-information"},
    {"university_short_name": "MU", "code": "salaya", "name": "วิทยาเขตศาลายา", "is_main": True, "official_url": "https://www.mahidol.ac.th/campus/"},
    {"university_short_name": "SWU", "code": "prasan-mit", "name": "ประสานมิตร", "is_main": True, "official_url": "https://admission.swu.ac.th/admissions2/"},
    {"university_short_name": "SWU", "code": "ongkharak", "name": "องครักษ์", "is_main": False, "official_url": "https://admission.swu.ac.th/admissions2/"},
    {"university_short_name": "TU", "code": "rangsit", "name": "ศูนย์รังสิต", "is_main": True, "official_url": "https://engr.tu.ac.th/contact-us"},
]


def campus_code_for(program):
    university = program["university_short_name"]
    code = program["code"]
    if university == "KMITL":
        return "chumphon" if code.startswith("kmitl-chumphon-") else "ladkrabang"
    if university == "KMUTNB":
        return "prachinburi" if code.startswith("kmutnb-fitm-") else "bangkok"
    if university == "KMUTT":
        if code == "kmutt-ai-systems":
            return "ratchaburi"
        if code in {"kmutt-game-design", "kmutt-media-technology"}:
            return "bangkhuntien"
        return "bangmod"
    if university == "KU":
        if code.startswith("ku-bangkhen-"):
            return "bangkhen"
        if code.startswith("ku-kps-"):
            return "kamphaeng-saen"
        if code.startswith("ku-sriracha-"):
            return "sriracha"
        return "sakon-nakhon"
    if university == "SWU":
        return "ongkharak" if code.startswith(("swu-ece-", "swu-engineering-")) else "prasan-mit"
    return {
        "CMU": "main",
        "CU": "pathum-wan",
        "MU": "salaya",
        "TU": "rangsit",
    }[university]


def main():
    data = json.loads(DATASET_PATH.read_text(encoding="utf-8"))
    data["schema_version"] = 5
    data["campuses"] = CAMPUSES
    for program in data["programs"]:
        program["campus_code"] = campus_code_for(program)
    DATASET_PATH.write_text(
        json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
    )

    audit = json.loads(AUDIT_PATH.read_text(encoding="utf-8"))
    sources = {item["url"]: item for item in audit["sources"]}
    for campus in CAMPUSES:
        sources.setdefault(
            campus["official_url"],
            {
                "url": campus["official_url"],
                "publisher": campus["university_short_name"],
                "classification": "imported_primary_supporting",
                "academic_year": 2570,
                "decision": "ใช้ยืนยันชื่อวิทยาเขต/พื้นที่การศึกษาสำหรับเมนูนำทาง ไม่ใช้เป็นเกณฑ์รับสมัคร",
            },
        )
    audit["sources"] = list(sources.values())
    AUDIT_PATH.write_text(
        json.dumps(audit, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
    )
    print(json.dumps({"campuses": len(CAMPUSES), "programs": len(data["programs"])}, ensure_ascii=False))


if __name__ == "__main__":
    main()
