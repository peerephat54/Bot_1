"""Mark a scoped official-source review without changing admissions facts.

This script updates review timestamps only for pages that were actually checked
and leaves all criteria, projects, and dates unchanged unless a separate import
has evidence for a factual change.
"""

from __future__ import annotations

import argparse
import json
from datetime import datetime, timezone, timedelta
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
DATASET_PATH = ROOT / "datasets" / "tcas70_admissions.json"
AUDIT_PATH = ROOT / "datasets" / "tcas70_source_audit.json"

VERIFIED_URLS = {
    "https://admission.chula.ac.th/tcas.php",
    "https://www.admission.kmutnb.ac.th/news/1394",
    "https://www.kmitl.ac.th/article/tcas70",
    "https://admission.ku.ac.th/",
    "https://www.ict.mahidol.ac.th/th/ict-round-1-ict-portfolio-academic-year-2027/",
    "https://admission.reg.cmu.ac.th/tcas/app.php",
}

NEW_AUDIT_SOURCES = {
    "https://www.ict.mahidol.ac.th/th/ict-round-1-ict-portfolio-academic-year-2027/": {
        "publisher": "คณะเทคโนโลยีสารสนเทศและการสื่อสาร มหาวิทยาลัยมหิดล",
        "decision": (
            "ตรวจซ้ำประกาศ ICT รอบ 1 ปีการศึกษา 2570; พบวันสมัคร 3–31 สิงหาคม 2569 "
            "และรายละเอียดเอกสาร/สัมภาษณ์ตามข้อมูลเดิม จึงไม่เพิ่มแถวซ้ำ"
        ),
    },
    "https://admission.reg.cmu.ac.th/tcas/app.php": {
        "publisher": "สำนักทะเบียนและประมวลผล มหาวิทยาลัยเชียงใหม่",
        "decision": (
            "ตรวจซ้ำระบบรับสมัคร TCAS70; รอบ 1 ยังระบุให้ติดตามภายหลัง "
            "จึงไม่เติมวันหรือเกณฑ์ที่ยังไม่ประกาศ"
        ),
    },
}


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--checked-at",
        help="ISO-8601 timestamp with timezone; defaults to current Asia/Bangkok time",
    )
    return parser.parse_args()


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def write(path: Path, payload: dict) -> None:
    path.write_text(
        json.dumps(payload, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )


def update_dataset(dataset: dict, checked_at: str) -> int:
    dataset["checked_at"] = checked_at
    updated = 0
    for rows in dataset.values():
        if not isinstance(rows, list):
            continue
        for row in rows:
            if not isinstance(row, dict):
                continue
            if row.get("source_url") in VERIFIED_URLS:
                row["source_checked_at"] = checked_at
                updated += 1
    return updated


def update_audit(audit: dict, checked_at: str, checked_date: str) -> tuple[int, int]:
    audit["checked_at"] = checked_at
    updated = 0
    for source in audit.get("sources", []):
        if source.get("url") in VERIFIED_URLS:
            source["source_checked_at"] = checked_date
            updated += 1

    existing_urls = {source.get("url") for source in audit.get("sources", [])}
    added = 0
    for url, details in NEW_AUDIT_SOURCES.items():
        if url in existing_urls:
            continue
        audit["sources"].append(
            {
                "url": url,
                "publisher": details["publisher"],
                "classification": "verified_existing_primary",
                "academic_year": audit["academic_year"],
                "source_checked_at": checked_date,
                "decision": details["decision"],
            }
        )
        added += 1
    return updated, added


def main() -> None:
    args = parse_args()
    bangkok = timezone(timedelta(hours=7))
    checked_at = args.checked_at or datetime.now(bangkok).isoformat(timespec="minutes")
    checked_date = checked_at[:10]

    dataset = load(DATASET_PATH)
    audit = load(AUDIT_PATH)
    dataset_rows = update_dataset(dataset, checked_at)
    audit_rows, audit_added = update_audit(audit, checked_at, checked_date)
    write(DATASET_PATH, dataset)
    write(AUDIT_PATH, audit)
    print(
        f"checked_at={checked_at} dataset_rows={dataset_rows} "
        f"audit_rows={audit_rows} audit_sources_added={audit_added}"
    )


if __name__ == "__main__":
    main()
