"""Small persistent store for user-owned bot features.

The bot can run on a read-only Supabase key, so these features use a local
JSON store for the first deployment. The file is ignored by Git and can later
be replaced by the tables in ``migrate_user_features.sql`` without changing
the Discord workflow.
"""

from __future__ import annotations

import json
import threading
from datetime import datetime, timezone
from pathlib import Path


class UserFeatureStore:
    def __init__(self, path: str | Path):
        self.path = Path(path)
        self._lock = threading.RLock()

    def _read(self):
        try:
            payload = json.loads(self.path.read_text(encoding="utf-8"))
        except (FileNotFoundError, OSError, json.JSONDecodeError):
            payload = {}
        payload.setdefault("favorites", {})
        payload.setdefault("checklists", {})
        payload.setdefault("reminders", {})
        return payload

    def _write(self, payload):
        self.path.parent.mkdir(parents=True, exist_ok=True)
        temp = self.path.with_suffix(".tmp")
        temp.write_text(json.dumps(payload, ensure_ascii=False, indent=2), encoding="utf-8")
        temp.replace(self.path)

    def _now(self):
        return datetime.now(timezone.utc).isoformat()

    def toggle_favorite(self, user_id, project, program):
        with self._lock:
            payload = self._read()
            user_key = str(user_id)
            rows = payload["favorites"].setdefault(user_key, [])
            project_code = str(project.get("code") or "")
            existing = next((row for row in rows if row.get("project_code") == project_code), None)
            if existing:
                rows.remove(existing)
                self._write(payload)
                return False
            rows.append({
                "project_code": project_code,
                "project_name": project.get("name") or "ไม่ระบุชื่อโครงการ",
                "program_code": program.get("code"),
                "program_name": program.get("major_name") or program.get("faculty_name"),
                "university": program.get("university_short_name"),
                "source_url": project.get("source_url"),
                "saved_at": self._now(),
            })
            self._write(payload)
            return True

    def is_favorite(self, user_id, project_code):
        with self._lock:
            return any(
                row.get("project_code") == str(project_code)
                for row in self._read()["favorites"].get(str(user_id), [])
            )

    def favorites(self, user_id):
        with self._lock:
            return list(self._read()["favorites"].get(str(user_id), []))

    def checklist(self, user_id, project_code, items):
        with self._lock:
            saved = self._read()["checklists"].get(f"{user_id}:{project_code}", {})
            return [dict(item, done=bool(saved.get(item["key"], False))) for item in items]

    def set_checklist(self, user_id, project_code, item_key, done):
        with self._lock:
            payload = self._read()
            key = f"{user_id}:{project_code}"
            payload["checklists"].setdefault(key, {})[item_key] = bool(done)
            self._write(payload)
            return bool(done)

    def toggle_checklist(self, user_id, project_code, item_key, current):
        return self.set_checklist(user_id, project_code, item_key, not current)

    def toggle_reminder(self, user_id, project, event):
        with self._lock:
            payload = self._read()
            key = f"{user_id}:{project.get('code')}:{event.get('event_name')}"
            reminders = payload["reminders"]
            if key in reminders:
                del reminders[key]
                self._write(payload)
                return False
            reminders[key] = {
                "user_id": str(user_id),
                "project_code": project.get("code"),
                "project_name": project.get("name") or "โครงการรับสมัคร",
                "event_name": event.get("event_name") or "ปิดรับสมัคร",
                "end_on": event.get("end_on") or event.get("start_on"),
                "source_url": project.get("source_url"),
                "notified": False,
                "created_at": self._now(),
            }
            self._write(payload)
            return True

    def reminders(self):
        with self._lock:
            return list(self._read()["reminders"].values())

    def mark_reminder_notified(self, user_id, project_code, event_name):
        with self._lock:
            payload = self._read()
            key = f"{user_id}:{project_code}:{event_name}"
            if key in payload["reminders"]:
                payload["reminders"][key]["notified"] = True
                self._write(payload)


def checklist_items_for_project(project):
    """Return stable, readable checklist items derived only from stored facts."""
    criteria = project.get("selected_criteria") or {}
    items = [("source", "อ่านประกาศทางการฉบับเต็ม")]
    documents = criteria.get("required_documents") or []
    if isinstance(documents, list):
        for index, document in enumerate(documents):
            label = str(document).strip()
            if label:
                items.append((f"document-{index}", f"เตรียมเอกสาร: {label}"))
    elif documents:
        items.append(("documents", "เตรียมเอกสารตามประกาศ"))
    if criteria.get("portfolio_requirements") or criteria.get("portfolio_details") or criteria.get("accepted_achievements"):
        items.append(("portfolio", "จัด Portfolio ตามรูปแบบและจำนวนหน้าที่กำหนด"))
    if criteria.get("selection_methods"):
        items.append(("selection", "ตรวจวิธีคัดเลือกและเตรียมสอบ/สัมภาษณ์"))
    if project.get("application_url") or project.get("source_url"):
        items.append(("application", "เตรียมกรอกใบสมัครและตรวจวันปิดรับ"))
    return [{"key": key, "label": label} for key, label in items[:20]]


def application_close_event(project):
    events = project.get("admission_timeline") or []
    candidates = [
        event for event in events
        if "รับสมัคร" in str(event.get("event_name") or "")
        and (event.get("end_on") or event.get("start_on"))
    ]
    if not candidates:
        return None
    return sorted(candidates, key=lambda event: event.get("end_on") or event.get("start_on"))[0]


def due_reminders(rows, today):
    """Return reminders due within three days, without including past dates."""
    result = []
    for row in rows:
        if row.get("notified"):
            continue
        try:
            due = datetime.fromisoformat(str(row.get("end_on"))[:10]).date()
        except (TypeError, ValueError):
            continue
        days = (due - today).days
        if 0 <= days <= 3:
            result.append(row)
    return result
