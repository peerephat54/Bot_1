"""Pure helpers for a compact, source-backed upcoming deadline view."""

from __future__ import annotations

from datetime import date, datetime

from admission_dates import is_application_event, is_interview_event, thai_date


def _event_day(event):
    """Choose an explicit actionable day without guessing missing dates."""
    if event.get("date_status") in {"disputed", "month_only"}:
        return None
    if is_application_event(event):
        value = event.get("end_on") or event.get("start_on")
    elif is_interview_event(event):
        value = event.get("start_on") or event.get("end_on")
    else:
        return None
    try:
        return datetime.fromisoformat(str(value)[:10]).date()
    except (TypeError, ValueError):
        return None


def upcoming_deadlines(rows, today=None, horizon_days=30, limit=15):
    """Return explicit application/interview dates within the requested window.

    The helper intentionally skips disputed or month-only dates. It never
    invents a deadline from a project with incomplete timeline data.
    """
    today = today or date.today()
    horizon_days = max(1, min(int(horizon_days), 180))
    result = []
    seen = set()
    for row in rows or []:
        program = row.get("program") or {}
        project = row.get("project") or {}
        university = program.get("university_short_name") or program.get("university_name") or "ไม่ระบุมหาวิทยาลัย"
        major = program.get("major_name") or program.get("faculty_name") or "ไม่ระบุสาขา"
        for event in project.get("admission_timeline") or []:
            day = _event_day(event)
            if day is None:
                continue
            days_left = (day - today).days
            if not 0 <= days_left <= horizon_days:
                continue
            event_name = str(event.get("event_name") or "กำหนดการ")
            key = (project.get("code"), event_name, day.isoformat())
            if key in seen:
                continue
            seen.add(key)
            result.append({
                "project_code": project.get("code"),
                "project_name": project.get("name") or "ไม่ระบุชื่อโครงการ",
                "university": university,
                "major": major,
                "event_name": event_name,
                "date": day.isoformat(),
                "date_display": thai_date(day.isoformat()),
                "days_left": days_left,
                "date_status": event.get("date_status") or "confirmed",
                "source_url": project.get("source_url") or project.get("application_url"),
            })
    return sorted(
        result,
        key=lambda item: (item["date"], item["university"].casefold(), item["project_name"].casefold()),
    )[: max(1, int(limit))]
