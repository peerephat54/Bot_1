"""Tiny local feedback store for the first deployment."""

from __future__ import annotations

import json
import threading
from datetime import datetime, timezone
from pathlib import Path


class FeedbackStore:
    def __init__(self, path, max_entries=1000):
        self.path = Path(path)
        self.max_entries = max(1, int(max_entries))
        self._lock = threading.RLock()

    def submit(self, user_id, category, message):
        text = " ".join(str(message or "").split())[:500]
        if not text:
            raise ValueError("feedback message is empty")
        row = {
            "user_id": str(user_id),
            "category": str(category or "other")[:40],
            "message": text,
            "created_at": datetime.now(timezone.utc).isoformat(),
        }
        with self._lock:
            try:
                rows = json.loads(self.path.read_text(encoding="utf-8"))
            except (FileNotFoundError, OSError, json.JSONDecodeError):
                rows = []
            if not isinstance(rows, list):
                rows = []
            rows.append(row)
            rows = rows[-self.max_entries:]
            self.path.parent.mkdir(parents=True, exist_ok=True)
            temp = self.path.with_suffix(".tmp")
            temp.write_text(json.dumps(rows, ensure_ascii=False, indent=2), encoding="utf-8")
            temp.replace(self.path)
        return row
