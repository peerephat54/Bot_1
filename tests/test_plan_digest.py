import unittest
from datetime import date

from plan_digest import build_plan_rows


class PlanDigestTests(unittest.TestCase):
    def test_joins_favorites_and_checklist_progress(self):
        favorites = [{"project_code": "p1", "project_name": "เก่า"}]
        navigation = [{
            "program": {"university_short_name": "A", "major_name": "IT"},
            "project": {
                "code": "p1", "name": "ใหม่",
                "admission_timeline": [{"event_name": "รับสมัคร", "end_on": "2026-09-25"}],
            },
        }]
        rows = build_plan_rows(
            favorites, navigation,
            lambda project: [{"key": "source", "done": True}, {"key": "portfolio", "done": False}],
            date(2026, 9, 21),
        )
        self.assertEqual(rows[0]["project_name"], "ใหม่")
        self.assertEqual((rows[0]["done"], rows[0]["total"], rows[0]["days_left"]), (1, 2, 4))

    def test_nearest_deadline_is_first(self):
        favorites = [{"project_code": "late"}, {"project_code": "soon"}]
        navigation = [
            {"program": {}, "project": {"code": "late", "name": "ช้า", "admission_timeline": [{"event_name": "รับสมัคร", "end_on": "2026-10-10"}]}},
            {"program": {}, "project": {"code": "soon", "name": "ใกล้", "admission_timeline": [{"event_name": "รับสมัคร", "end_on": "2026-09-22"}]}},
        ]
        rows = build_plan_rows(favorites, navigation, lambda project: [], date(2026, 9, 21))
        self.assertEqual([row["project_code"] for row in rows], ["soon", "late"])


if __name__ == "__main__":
    unittest.main()
