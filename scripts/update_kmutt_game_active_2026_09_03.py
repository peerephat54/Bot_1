"""Clarify KMUTT Game Design Active Recruitment scoring without removing GPAX."""

from __future__ import annotations

import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
DATASET_PATH = ROOT / "datasets" / "tcas70_admissions.json"
AUDIT_PATH = ROOT / "datasets" / "tcas70_source_audit.json"
CHECKED_AT = "2026-09-03T00:00+07:00"
PROJECT_CODE = "kmutt-active-recruitment-general"
PROGRAM_CODE = "kmutt-game-design"
SOURCE_URL = "https://join.kmutt.ac.th/projects/b82694a9-f0a6-4a3a-b18f-0de4f1e8bbfc"


def main() -> None:
    dataset = json.loads(DATASET_PATH.read_text(encoding="utf-8"))
    matches = [
        row for row in dataset.get("criteria", [])
        if row.get("project_code") == PROJECT_CODE
        and row.get("program_code") == PROGRAM_CODE
    ]
    if len(matches) != 1:
        raise SystemExit(f"expected one KMUTT game criterion, found {len(matches)}")
    criterion = matches[0]
    criterion["gpax_role"] = "ใช้เป็นคุณสมบัติขั้นต่ำ ไม่คิดเป็นน้ำหนักคะแนนคัดเลือก"
    criterion["criteria_summary"] = (
        "GPAX ≥ 2.50 เป็นคุณสมบัติขั้นต่ำ ไม่คิดเป็นน้ำหนักคะแนนคัดเลือก; "
        "ต้องมี Game Analysis Essay 500–1,000 คำ และสอบสัมภาษณ์ 100%"
    )
    criterion["portfolio_requirements"] = (
        "Portfolio จาก TCASfolio หรือจัดทำเองเป็น PDF ไม่เกิน 12 หน้า "
        "(รวมปกหน้า-หลัง) พร้อม Game Analysis Essay 500–1,000 คำ วิเคราะห์ภาพรวม "
        "กลไก และรูปแบบการเล่นของเกมที่เลือก"
    )
    criterion.setdefault("additional_requirements", {})["gpax_not_in_selection_weight"] = True

    for project in dataset.get("projects", []):
        if project.get("code") == PROJECT_CODE:
            project["source_checked_at"] = CHECKED_AT
            project["data_notes"] = (
                "GPAX 2.50 เป็นคุณสมบัติขั้นต่ำ ไม่ใช่น้ำหนักคัดเลือก; "
                "พิจารณา Game Analysis Essay และการสัมภาษณ์ตามประกาศ"
            )
    dataset["checked_at"] = CHECKED_AT
    DATASET_PATH.write_text(json.dumps(dataset, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    audit = json.loads(AUDIT_PATH.read_text(encoding="utf-8"))
    for source in audit.get("sources", []):
        if source.get("url") == SOURCE_URL:
            source["source_checked_at"] = CHECKED_AT[:10]
            source["decision"] = (
                "ตรวจซ้ำ Active Recruitment เกม: GPAX 2.50 เป็นคุณสมบัติขั้นต่ำ "
                "แต่ไม่คิดเป็นน้ำหนักคะแนนคัดเลือก; ใช้ Game Analysis Essay และสัมภาษณ์"
            )
            break
    else:
        raise SystemExit("KMUTT Active Recruitment source is missing from audit")
    AUDIT_PATH.write_text(json.dumps(audit, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(f"updated={PROGRAM_CODE} checked_at={CHECKED_AT}")


if __name__ == "__main__":
    main()
