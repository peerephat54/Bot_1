"""Refresh current official calendar provenance without inventing project criteria."""

from __future__ import annotations

import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
DATASET_PATH = ROOT / "datasets" / "tcas70_admissions.json"
AUDIT_PATH = ROOT / "datasets" / "tcas70_source_audit.json"
CHECKED_AT = "2026-10-03T00:00:00+07:00"
CHULA_URL = "https://admission.chula.ac.th/tcas.php"
CHULA_EVIDENCE_URL = "https://www.chula.ac.th/academics/admissions/undergraduate-admission/"
CMU_PAGE = "https://admission.reg.cmu.ac.th/tcas/app.php"
CMU_CALENDAR = "https://admission.reg.cmu.ac.th/tcas/files_download/93a32864d014dc7b8410ea79b84cb42c.pdf"


def main() -> None:
    data = json.loads(DATASET_PATH.read_text(encoding="utf-8"))
    cu_programs = {
        "cu-engineering-computer-engineering",
        "cu-engineering-cedt",
        "cu-science-computer-science",
        "cu-cbs-management-information-systems",
        "cu-cbs-statistics-data-science",
        "cu-cbs-information-technology-business",
    }
    for calendar in data.get("university_admission_calendars", []):
        if calendar.get("code") == "cu-portfolio-2570":
            calendar["program_codes"] = [
                item["code"]
                for item in data["programs"]
                if item["code"] in cu_programs
            ]
            calendar["source_url"] = CHULA_URL
            calendar["evidence_url"] = CHULA_EVIDENCE_URL
            calendar["source_checked_at"] = CHECKED_AT
            calendar["scope_note"] = (
                "ยังไม่ระบุว่าสาขานี้อยู่กลุ่มใด; ข่าวมหาวิทยาลัยระบุจะอัปเดตประกาศรับสมัครใน ต.ค. 2569 ไม่ใช่เกณฑ์รายสาขา"
            )
        elif calendar.get("code") == "cmu-portfolio-2570":
            calendar["source_url"] = CMU_PAGE
            calendar["evidence_url"] = CMU_CALENDAR
            calendar["source_checked_at"] = CHECKED_AT

    DATASET_PATH.write_text(
        json.dumps(data, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
        newline="\n",
    )

    audit = json.loads(AUDIT_PATH.read_text(encoding="utf-8"))
    for source in audit["sources"]:
        if source.get("url") in {CHULA_URL, CHULA_EVIDENCE_URL}:
            source["url"] = CHULA_URL
            source["source_checked_at"] = CHECKED_AT
            source["decision"] = (
                "ตรวจซ้ำหน้า TCAS70 ทางการของจุฬาฯ เมื่อ 3 ต.ค. 2569: "
                "ยืนยันกำหนดการ Portfolio กลุ่ม 1 และ 2; ยังไม่เติมเกณฑ์เฉพาะคณะ "
                "จากปฏิทินกลาง"
            )
        elif source.get("url") == CMU_PAGE:
            source["source_checked_at"] = CHECKED_AT
            source["decision"] = (
                "ตรวจซ้ำหน้ารับสมัคร TCAS70 ของ มช. เมื่อ 3 ต.ค. 2569: "
                "ยืนยันรอบ 1 วันที่ 28 ต.ค.–5 พ.ย. 2569 และประกาศส่วนกลาง "
                "ที่เชื่อมไปยังรายละเอียดของทุกคณะ"
            )
        elif source.get("url") == CMU_CALENDAR:
            source["source_checked_at"] = CHECKED_AT
            source["decision"] = (
                "ตรวจซ้ำปฏิทินรอบ 1 Portfolio TCAS70 ของ มช. เมื่อ 3 ต.ค. 2569: "
                "ยืนยันวันสัมภาษณ์ 19 ธ.ค. 2569 ผลรอบ 1.1 วันที่ 8 ม.ค. 2570 "
                "และกำหนดการยืนยันสิทธิ์/สละสิทธิ์ตามประกาศกลาง"
            )
    AUDIT_PATH.write_text(
        json.dumps(audit, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    print("Refreshed CU and CMU official calendar provenance")


if __name__ == "__main__":
    main()
