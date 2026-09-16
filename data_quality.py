"""Dataset quality metrics used by the read-only Discord dashboard."""

from __future__ import annotations

import json
from collections import Counter
from datetime import date, datetime, timedelta, timezone
from pathlib import Path
from urllib.parse import urlparse


SOURCE_FRESHNESS_DAYS = 7
TRUTH_REPORT_GLOB = "import_truth_report*.json"
THAILAND_TZ = timezone(timedelta(hours=7))


def load_latest_truth_report(project_root):
    """Load the newest local evidence-gate report without trusting its records."""
    root = Path(project_root)
    candidates = sorted(
        (root / "tmp").glob(TRUTH_REPORT_GLOB),
        key=lambda path: path.stat().st_mtime,
        reverse=True,
    )
    for path in candidates:
        try:
            payload = json.loads(path.read_text(encoding="utf-8"))
        except (OSError, TypeError, json.JSONDecodeError):
            continue
        if isinstance(payload, dict) and payload.get("generated_at"):
            return payload
    return None


def source_truth_summary(report):
    """Return bounded, display-ready evidence-gate metrics for the bot UI."""
    if not report:
        return {
            "label": "⚪ ยังไม่มีรายงานตรวจเว็บสด",
            "generated_at": None,
            "source_count": 0,
            "ok_count": 0,
            "error_count": 0,
            "stale_count": 0,
            "changed_count": 0,
            "baseline_missing_count": 0,
            "needs_review": 0,
            "automated_checks_passed": 0,
        }

    status_labels = {
        "passed": "✅ ผ่านด่านหลักฐาน",
        "needs_review": "🟡 ต้องตรวจโดยคน",
        "error": "❌ ตรวจหลักฐานไม่สำเร็จ",
    }
    monitor = report.get("source_monitor") or {}
    record_counts = report.get("record_status_counts") or {}
    return {
        "label": status_labels.get(report.get("status"), "🟡 สถานะหลักฐานไม่ทราบ"),
        "generated_at": report.get("generated_at"),
        "source_count": int(monitor.get("source_count") or 0),
        "ok_count": int(monitor.get("ok_count") or 0),
        "error_count": int(monitor.get("error_count") or 0),
        "stale_count": int(monitor.get("stale_count") or 0),
        "changed_count": int(monitor.get("changed_count") or 0),
        "baseline_missing_count": int(monitor.get("baseline_missing_count") or 0),
        "needs_review": int(record_counts.get("needs_review") or 0),
        "automated_checks_passed": int(record_counts.get("automated_checks_passed") or 0),
    }


def _date(value):
    try:
        return date.fromisoformat(str(value)[:10])
    except (TypeError, ValueError):
        return None


def classify_project_source_status(project, *, today=None, fallback_checked_at=None):
    """Classify source verification freshness, not whether applications are open."""
    project = project or {}
    if project.get("publication_status") not in {"official", "closed"}:
        return "pending"

    url = urlparse(str(project.get("source_url") or ""))
    if url.scheme != "https" or not url.hostname:
        return "pending"

    checked = _date(project.get("source_checked_at") or fallback_checked_at)
    if checked is None:
        return "pending"

    today = today or datetime.now(THAILAND_TZ).date()
    age_days = (today - checked).days
    if age_days < 0:
        return "pending"
    if age_days > SOURCE_FRESHNESS_DAYS:
        return "needs_recheck"
    return "confirmed"


def build_quality_report(payload, *, today=None):
    today = today or datetime.now(THAILAND_TZ).date()
    programs = payload.get("programs") or []
    projects = payload.get("projects") or []
    criteria = payload.get("criteria") or []
    timeline = payload.get("timeline") or []
    sources = payload.get("source_audit", {}).get("sources") or []
    official_projects = [item for item in projects if item.get("publication_status") == "official" or item.get("data_status") == "official"]
    today = today or date.today()
    audit_by_url = {
        item.get("url"): item
        for item in sources
        if item.get("url")
    }
    status_counts = Counter()
    review_projects = []
    for project in projects:
        source_audit = audit_by_url.get(project.get("source_url"), {})
        checked_at = project.get("source_checked_at") or source_audit.get("source_checked_at")
        status = classify_project_source_status(
            project,
            today=today,
            fallback_checked_at=checked_at,
        )
        status_counts[status] += 1
        if status == "pending":
            if project.get("reference_academic_year"):
                status_counts["reference"] += 1
            if project.get("publication_status") == "draft_waiting_official":
                status_counts["awaiting_announcement"] += 1
            else:
                status_counts["needs_review"] += 1
        if status in {"pending", "needs_recheck"}:
            review_projects.append({
                "code": project.get("code"),
                "name": project.get("name") or project.get("code") or "ไม่ระบุโครงการ",
                "university_short_name": project.get("university_short_name") or "มหาวิทยาลัย",
                "status": status,
                "source_url": project.get("source_url"),
                "source_title": project.get("source_title"),
                "source_checked_at": checked_at,
                "_checked_date": _date(checked_at),
            })
    review_projects.sort(
        key=lambda item: (
            0 if item["status"] == "pending" else 1,
            item["_checked_date"] or date.min,
            item["code"] or "",
        )
    )
    for item in review_projects:
        item.pop("_checked_date", None)
    source_dates = [_date(item.get("source_checked_at")) for item in sources]
    source_dates = [item for item in source_dates if item]
    missing_project_source = sum(not item.get("source_url") for item in projects)
    project_codes = {item.get("code") for item in projects if item.get("code")}
    criteria_project_codes = {item.get("project_code") or item.get("project_id") for item in criteria}
    timeline_project_codes = {item.get("project_code") or item.get("project_id") for item in timeline}
    return {
        "checked_at": payload.get("checked_at"),
        "universities": len(payload.get("universities") or []),
        "campuses": len(payload.get("campuses") or []),
        "programs": len(programs),
        "projects": len(projects),
        "official_projects": len(official_projects),
        "project_status_counts": dict(status_counts),
        "projects_requiring_review": review_projects,
        "criteria_rows": len(criteria),
        "timeline_rows": len(timeline),
        "projects_with_criteria": len(project_codes & criteria_project_codes),
        "projects_with_timeline": len(project_codes & timeline_project_codes),
        "projects_without_criteria": len(project_codes - criteria_project_codes),
        "projects_without_timeline": len(project_codes - timeline_project_codes),
        "projects_without_source": missing_project_source,
        "projects_without_checked_date": sum(
            not (
                item.get("source_checked_at")
                or audit_by_url.get(item.get("source_url"), {}).get("source_checked_at")
            )
            for item in projects
        ),
        "projects_with_source_and_checked_date": sum(
            bool(item.get("source_url"))
            and bool(
                item.get("source_checked_at")
                or audit_by_url.get(item.get("source_url"), {}).get("source_checked_at")
            )
            for item in projects
        ),
        "audited_sources": len(sources),
        "stale_sources": sum((today - item).days > 7 for item in source_dates),
        "latest_source_check": max(source_dates).isoformat() if source_dates else None,
    }


def load_quality_report(dataset_path):
    path = Path(dataset_path)
    payload = json.loads(path.read_text(encoding="utf-8"))
    audit_path = path.parent / "tcas70_source_audit.json"
    if audit_path.exists():
        payload["source_audit"] = json.loads(audit_path.read_text(encoding="utf-8"))
    return build_quality_report(payload)
