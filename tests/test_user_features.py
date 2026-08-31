import tempfile
import unittest
from datetime import date
from pathlib import Path

from user_features import UserFeatureStore, application_close_event, checklist_items_for_project, due_reminders


PROJECT = {
    "code": "p1",
    "name": "โครงการตัวอย่าง",
    "source_url": "https://example.com/admission",
    "admission_timeline": [{"event_name": "รับสมัคร", "start_on": "2026-09-01", "end_on": "2026-09-10"}],
    "selected_criteria": {
        "required_documents": ["ปพ.1"],
        "portfolio_requirements": "PDF ไม่เกิน 10 หน้า",
    },
}


class UserFeatureTests(unittest.TestCase):
    def test_favorite_and_checklist_persist(self):
        with tempfile.TemporaryDirectory() as directory:
            store = UserFeatureStore(Path(directory) / "features.json")
            self.assertTrue(store.toggle_favorite(10, PROJECT, {"code": "m1", "major_name": "IT", "university_short_name": "KMITL"}))
            self.assertTrue(store.is_favorite(10, "p1"))
            items = checklist_items_for_project(PROJECT)
            states = store.checklist(10, "p1", items)
            self.assertTrue(any("ปพ.1" in item["label"] for item in states))
            store.toggle_checklist(10, "p1", states[0]["key"], states[0]["done"])
            self.assertTrue(store.checklist(10, "p1", items)[0]["done"])

    def test_reminder_due_window_and_toggle(self):
        with tempfile.TemporaryDirectory() as directory:
            store = UserFeatureStore(Path(directory) / "features.json")
            event = application_close_event(PROJECT)
            self.assertEqual(event["end_on"], "2026-09-10")
            self.assertTrue(store.toggle_reminder(10, PROJECT, event))
            rows = due_reminders(store.reminders(), date(2026, 9, 7))
            self.assertEqual(len(rows), 1)
            self.assertFalse(store.toggle_reminder(10, PROJECT, event))


if __name__ == "__main__":
    unittest.main()
