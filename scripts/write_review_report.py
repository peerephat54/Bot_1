"""Render an evidence-gate JSON report as a reviewable Markdown snapshot."""

from __future__ import annotations

import argparse
import html
import json
from collections import Counter
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]


def _text(value, fallback="ไม่ระบุ"):
    value = str(value or "").strip()
    return value or fallback


def _table_text(value):
    """Keep source text on one Markdown row, including multiline reasons and pipes."""
    return html.escape(_text(value)).replace("\\", "\\\\").replace("|", "\\|").replace(
        "\r\n", "\n"
    ).replace("\r", "\n").replace("\n", "<br>")


def render_report(report: dict) -> str:
    """Return a bounded, human-readable report without importing any facts."""
    report = report or {}
    monitor = report.get("source_monitor") or {}
    counts = report.get("record_status_counts") or {}
    unresolved = report.get("unresolved_records") or []
    universities = Counter(item.get("university") or "ไม่ระบุ" for item in unresolved)
    reason_counts = Counter(
        _text(reason)
        for item in unresolved for reason in set(item.get("reasons") or ["ต้องตรวจหลักฐาน"])
    )
    year = report.get("academic_year")
    cycle = f"{year % 100:02d}" if type(year) is int and year >= 2500 else _text(year)

    lines = [
        f"# Source review — TCAS{cycle} · ปีการศึกษา {_text(year)}",
        "",
        f"- ตรวจรายงานเมื่อ: {_text(report.get('generated_at'))}",
        f"- สถานะด่านหลักฐาน: **{_text(report.get('status'))}**",
        f"- ตรวจแหล่งข้อมูล: {monitor.get('source_count', 0)} แห่ง "
        f"(เปิดได้ {monitor.get('ok_count', 0)}, ผิดพลาด {monitor.get('error_count', 0)})",
        f"- เนื้อหาเปลี่ยนจาก baseline: {monitor.get('changed_count', 0)} แห่ง",
        f"- แหล่งข้อมูลเกินรอบตรวจ: {monitor.get('stale_count', 0)} แห่ง",
        f"- แหล่งข้อมูลยังไม่มี baseline: {monitor.get('baseline_missing_count', 0)} แห่ง",
        f"- ตรวจอัตโนมัติผ่าน: {counts.get('automated_checks_passed', 0)} รายการ",
        f"- รอตรวจโดยคน: {counts.get('needs_review', 0)} รายการ",
        "",
        "## ขอบเขตการเปลี่ยนแปลง",
        "",
        "รอบนี้เป็นการตรวจแหล่งข้อมูลและความสดของหลักฐานเท่านั้น "
        "ยังไม่มีการแก้ข้อเท็จจริงหรือนำเข้ารายการที่ด่านหลักฐานไม่ผ่าน",
        "",
        "## คิวตรวจ",
        "",
    ]
    if universities:
        lines.extend(
            f"- {university}: {count} รายการ"
            for university, count in sorted(universities.items())
        )
    else:
        lines.append("- ไม่มีรายการค้างตรวจ")

    if reason_counts:
        lines.extend(["", "### สาเหตุที่ต้องตรวจ", "", "| สาเหตุ | จำนวนรายการ |", "|---|---|"])
        lines.extend(
            f"| {_table_text(reason)} | {count} |"
            for reason, count in sorted(reason_counts.items(), key=lambda pair: (-pair[1], pair[0]))
        )

    lines.extend(["", "| ประเภท | รหัส | เหตุผล | แหล่งข้อมูล |", "|---|---|---|---|"])
    for item in unresolved:
        reasons = "; ".join(item.get("reasons") or ["ต้องตรวจหลักฐาน"])
        url = item.get("source_url") or "ไม่มี URL"
        lines.append(
            f"| {_table_text(item.get('record_type'))} | {_table_text(item.get('code'))} | "
            f"{_table_text(reasons)} | {_table_text(url)} |"
        )
    lines.extend([
        "",
        "การนำเข้า dataset ต้องรอให้รายการในคิวตรวจได้รับการตรวจจากแหล่งทางการ "
        "และสร้างรายงานหลักฐานรอบใหม่ที่ผ่านเกณฑ์ก่อน",
        "",
    ])
    return "\n".join(lines)


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("report", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args(argv)
    report = json.loads(args.report.read_text(encoding="utf-8"))
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(render_report(report), encoding="utf-8")
    print(f"Review report written: {args.output}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
