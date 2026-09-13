import unittest

from scripts.generate_seed_sql import generate


class CalendarSeedSqlTests(unittest.TestCase):
    def test_calendar_records_are_upserted_with_source_and_round_details(self):
        data = {
            "universities": [{"name": "มหาวิทยาลัยทดสอบ", "short_name": "T", "logo_url": None}],
            "campuses": [],
            "university_admission_calendars": [{
                "code": "t-portfolio-2570",
                "university_short_name": "T",
                "title": "ปฏิทินทดสอบ",
                "academic_year": 2570,
                "campus_codes": ["main"],
                "source_url": "https://admission.example.ac.th/",
                "evidence_url": None,
                "source_checked_at": "2026-09-13T18:33:06+07:00",
                "scope_note": "ปฏิทินกลาง ไม่แทนเกณฑ์รายโครงการ",
                "rounds": [{
                    "label": "Portfolio 1.1",
                    "application_start_on": "2026-09-18",
                    "application_end_on": "2026-10-14",
                    "date_status": "confirmed",
                }],
                "interview_eligible_on": None,
                "interview_on": None,
                "interview_passed_on": None,
                "confirmation_start_on": None,
                "confirmation_end_on": None,
            }],
            "programs": [],
            "projects": [],
            "project_programs": [],
            "criteria": [],
            "timeline": [],
        }

        sql = generate(data)

        self.assertIn("insert into public.university_admission_calendars", sql)
        self.assertIn("on conflict (code) do update set", sql)
        self.assertIn('["main"]', sql)
        self.assertIn("'[]'::jsonb", sql)
        self.assertIn('"application_end_on":"2026-10-14"', sql)
        self.assertIn("2026-09-13T18:33:06+07:00", sql)

    def test_insert_missing_mode_never_updates_and_checks_university_short_name(self):
        data = {
            "universities": [{"name": "มหาวิทยาลัยทดสอบ", "short_name": "T", "logo_url": None}],
            "campuses": [],
            "university_admission_calendars": [],
            "programs": [],
            "projects": [],
            "project_programs": [],
            "criteria": [],
            "timeline": [],
        }

        sql = generate(data, update_existing=False).lower()

        self.assertIn("where not exists", sql)
        self.assertIn("existing.short_name = 't'", sql)
        self.assertIn("on conflict (name) do nothing", sql)
        self.assertNotIn("do update set", sql)


if __name__ == "__main__":
    unittest.main()
