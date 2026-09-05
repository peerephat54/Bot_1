"""Dataset quality metrics used by the read-only Discord dashboard."""

from __future__ import annotations

import json
from collections import Counter
from datetime import date, datetime
from pathlib import Path


def _date(value):
    try:
        return date.fromisoformat(str(value)[:10])
    except (TypeError, ValueError):
        return None


def build_quality_report(payload, *, today=None):
    today = today or date.today()
    programs = payload.get("programs") or []
    projects = payload.get("projects") or []
    criteria = payload.get("criteria") or []
    timeline = payload.get("timeline") or []
    sources = payload.get("source_audit", {}).get("sources") or []
    official_projects = [item for item in projects if item.get("publication_status") == "official" or item.get("data_status") == "official"]
    status_counts = Counter()
    for project in projects:
        if project.get("publication_status") == "official" or project.get("data_status") == "official":
            status_counts["confirmed"] += 1
        elif project.get("publication_status") == "draft_waiting_official":
            status_counts["pending"] += 1
        elif project.get("reference_academic_year"):
            status_counts["reference"] += 1
        else:
            status_counts["needs_review"] += 1
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
        "criteria_rows": len(criteria),
        "timeline_rows": len(timeline),
        "projects_with_criteria": len(project_codes & criteria_project_codes),
        "projects_with_timeline": len(project_codes & timeline_project_codes),
        "projects_without_criteria": len(project_codes - criteria_project_codes),
        "projects_without_timeline": len(project_codes - timeline_project_codes),
        "projects_without_source": missing_project_source,
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
