import unittest
from datetime import date

from deadline_digest import upcoming_deadlines


class DeadlineDigestTests(unittest.TestCase):
    def test_returns_only_explicit_upcoming_application_and_interview_dates(self):
        rows = [{
            "program": {"university_short_name": "A", "major_name": "IT"},
            "project": {
                "code": "p1",
                "name": "Portfolio",
                "source_url": "https://example.com/p1",
                "admission_timeline": [
                    {"event_name": "รับสมัคร 1.1", "end_on": "2026-09-25", "date_status": "confirmed"},
                    {"event_name": "สอบสัมภาษณ์", "start_on": "2026-10-01", "date_status": "confirmed"},
                    {"event_name": "รับสมัคร 1.2", "date_display": "ตุลาคม 2569", "date_status": "month_only"},
                ],
            },
        }]
        result = upcoming_deadlines(rows, date(2026, 9, 21), horizon_days=10)
        self.assertEqual([item["event_name"] for item in result], ["รับสมัคร 1.1", "สอบสัมภาษณ์"])
        self.assertEqual(result[0]["days_left"], 4)


if __name__ == "__main__":
    unittest.main()
