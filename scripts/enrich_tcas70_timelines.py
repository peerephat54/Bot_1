"""Add only officially shared TCAS70 timeline events that are missing locally."""

from __future__ import annotations

import json
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
DATASET_PATH = ROOT / "datasets" / "tcas70_admissions.json"


CMU_SHARED_EVENTS = [
    {
        "event_name": "ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์",
        "start_on": "2026-12-11",
        "end_on": "2026-12-11",
        "date_display": "11 ธ.ค. 2569",
        "date_status": "confirmed",
    },
    {
        "event_name": "สอบสัมภาษณ์",
        "start_on": "2026-12-19",
        "end_on": "2026-12-19",
        "date_display": "19 ธ.ค. 2569",
        "date_status": "confirmed",
    },
    {
        "event_name": "ประกาศผลคัดเลือกรอบ 1 ครั้งที่ 1 (แบบ 1.1)",
        "start_on": "2027-01-08",
        "end_on": "2027-01-08",
        "date_display": "8 ม.ค. 2570",
        "date_status": "confirmed",
    },
    {
        "event_name": "ยืนยันสิทธิ์/สละสิทธิ์ในระบบรับสมัคร มช. รอบ 1 ครั้งที่ 1",
        "start_on": "2027-01-08",
        "end_on": "2027-01-12",
        "date_display": "8–12 ม.ค. 2570",
        "date_status": "confirmed",
    },
    {
        "event_name": "ประกาศผลคัดเลือกรอบ 1 ครั้งที่ 3 (แบบ 1.2)",
        "start_on": "2027-03-04",
        "end_on": "2027-03-04",
        "date_display": "4 มี.ค. 2570",
        "date_status": "confirmed",
    },
    {
        "event_name": "ยืนยันสิทธิ์/สละสิทธิ์ในระบบรับสมัคร มช. รอบ 1 ครั้งที่ 3",
        "start_on": "2027-03-04",
        "end_on": "2027-03-06",
        "date_display": "4–6 มี.ค. 2570",
        "date_status": "confirmed",
    },
    {
        "event_name": "สละสิทธิ์รอบ 1 หลังยืนยันสิทธิ์",
        "start_on": "2027-03-04",
        "end_on": "2027-03-06",
        "date_display": "4–6 มี.ค. 2570",
        "date_status": "confirmed",
    },
    {
        "event_name": "ประกาศผลคัดเลือก TCAS รอบ 1 โดย ทปอ.",
        "start_on": "2027-03-10",
        "end_on": "2027-03-10",
        "date_display": "10 มี.ค. 2570",
        "date_status": "confirmed",
    },
    {
        "event_name": "ยืนยันสิทธิ์เข้าศึกษาในระบบ myTCAS",
        "start_on": "2027-03-10",
        "end_on": "2027-03-11",
        "date_display": "10–11 มี.ค. 2570",
        "date_status": "confirmed",
    },
    {
        "event_name": "สละสิทธิ์ในระบบ myTCAS",
        "start_on": "2027-03-12",
        "end_on": "2027-03-12",
        "date_display": "12 มี.ค. 2570",
        "date_status": "confirmed",
    },
]


def enrich(data: dict) -> int:
    existing = {(item["project_code"], item["event_name"]) for item in data["timeline"]}
    added = 0
    for project in data["projects"]:
        if project["university_short_name"] != "CMU":
            continue
        for event in CMU_SHARED_EVENTS:
            key = (project["code"], event["event_name"])
            if key in existing:
                continue
            data["timeline"].append({"project_code": project["code"], **event})
            existing.add(key)
            added += 1
    return added


def main() -> None:
    data = json.loads(DATASET_PATH.read_text(encoding="utf-8"))
    added = enrich(data)
    DATASET_PATH.write_text(
        json.dumps(data, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
        newline="\n",
    )
    print(f"Added {added} missing CMU shared timeline events")


if __name__ == "__main__":
    main()
