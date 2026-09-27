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
    "https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS",
    "https://admission.reg.cmu.ac.th/tcas/findfacultybyid.php?fid=703",
    "https://admission.reg.cmu.ac.th/tcas/findfacultybyid.php?fid=704",
    "https://admission.reg.cmu.ac.th/tcas/findfacultybyid.php?fid=706",
    "https://www.ict.mahidol.ac.th/th/ict-round-1-ict-portfolio-academic-year-2027/",
    "https://www.ict.mahidol.ac.th/th/ict-round-2-mu-portfolio-academic-year-2027/",
    "https://admission.reg.cmu.ac.th/tcas/app.php",
    "https://join.kmutt.ac.th/projects/59adc3a3-b38c-4527-85e0-690a4cf14b91",
    "https://join.kmutt.ac.th/projects/b44debb2-6551-4eca-9e65-8ed7a7a3a179",
    "https://join.kmutt.ac.th/projects/b82694a9-f0a6-4a3a-b18f-0de4f1e8bbfc",
    "https://join.kmutt.ac.th/projects/c02bf829-5c3c-408d-8bd9-515baebb80dd",
    "https://join.kmutt.ac.th/projects/d3746263-568f-4250-bd7d-0ff9dc0d8210",
    "https://join.kmutt.ac.th/projects/fe4b52a7-d942-4807-9b59-1527675dad89",
    "https://admission.swu.ac.th/file_staff_upload/file_news/1720260925041014.pdf",
    "https://www1.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4629_2026_09_01-14-49-21_3fb32.pdf",
    "https://www1.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4630_2026_09_01-14-51-12_745e8.pdf",
    "https://www1.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4632_2026_09_01-14-59-49_60a0e.pdf",
    "https://www1.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4633_2026_09_01-15-05-04_62a8a.pdf",
    "https://www1.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4647_2026_09_01-16-08-48_acc4a.pdf",
    "https://www1.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4648_2026_09_08-14-30-32_47f3b.pdf",
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
    parser.add_argument(
        "--source-report",
        type=Path,
        help="Refresh URLs that the latest live report opened successfully without a change",
    )
    return parser.parse_args()


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def write(path: Path, payload: dict) -> None:
    path.write_text(
        json.dumps(payload, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )


def update_dataset(dataset: dict, checked_at: str, verified_urls: set[str]) -> int:
    dataset["checked_at"] = checked_at
    updated = 0
    for rows in dataset.values():
        if not isinstance(rows, list):
            continue
        for row in rows:
            if not isinstance(row, dict):
                continue
            if row.get("source_url") in verified_urls:
                row["source_checked_at"] = checked_at
                updated += 1
    return updated


def update_audit(
    audit: dict, checked_at: str, checked_date: str, verified_urls: set[str]
) -> tuple[int, int]:
    audit["checked_at"] = checked_at
    updated = 0
    for source in audit.get("sources", []):
        if source.get("url") in verified_urls:
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
    verified_urls = set(VERIFIED_URLS)
    if args.source_report:
        report = load(args.source_report)
        verified_urls.update(
            item["url"]
            for item in (report.get("source_monitor") or {}).get("results", [])
            if item.get("status") == "ok"
            and not item.get("changed")
            and not item.get("baseline_missing")
            and item.get("url")
        )
    dataset_rows = update_dataset(dataset, checked_at, verified_urls)
    audit_rows, audit_added = update_audit(audit, checked_at, checked_date, verified_urls)
    write(DATASET_PATH, dataset)
    write(AUDIT_PATH, audit)
    print(
        f"checked_at={checked_at} dataset_rows={dataset_rows} "
        f"audit_rows={audit_rows} audit_sources_added={audit_added}"
    )


if __name__ == "__main__":
    main()
