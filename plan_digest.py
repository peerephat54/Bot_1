"""Build a small personal application plan from existing favorites/checklists."""

from __future__ import annotations

from datetime import date, datetime


def build_plan_rows(favorites, navigation_programs, checklist_loader, today=None):
    """Join saved favorites with current audited data and checklist progress."""
    today = today or date.today()
    by_code = {
        (item.get("project") or {}).get("code"): item
        for item in navigation_programs or []
        if (item.get("project") or {}).get("code")
    }
    rows = []
    for favorite in favorites or []:
        project_code = favorite.get("project_code")
        item = by_code.get(project_code)
        if not item:
            rows.append({**favorite, "available": False, "done": 0, "total": 0, "days_left": None})
            continue
        program = item.get("program") or {}
        project = item.get("project") or {}
        checklist = list(checklist_loader(project) or [])
        close_days = []
        for event in project.get("admission_timeline") or []:
            if "รับสมัคร" not in str(event.get("event_name") or ""):
                continue
            value = event.get("end_on") or event.get("start_on")
            try:
                close_days.append(datetime.fromisoformat(str(value)[:10]).date())
            except (TypeError, ValueError):
                continue
        close_day = min((day for day in close_days if day >= today), default=None)
        rows.append({
            "project_code": project_code,
            "project_name": project.get("name") or favorite.get("project_name") or "ไม่ระบุชื่อโครงการ",
            "university": program.get("university_short_name") or favorite.get("university") or "ไม่ระบุมหาวิทยาลัย",
            "major": program.get("major_name") or favorite.get("program_name") or "ไม่ระบุสาขา",
            "available": True,
            "done": sum(1 for entry in checklist if entry.get("done")),
            "total": len(checklist),
            "days_left": (close_day - today).days if close_day else None,
            "source_url": project.get("source_url") or favorite.get("source_url"),
        })
    return rows
