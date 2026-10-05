import tempfile
import unittest
from pathlib import Path

from scripts.generate_seed_sql import (
    _seed_statements, generate, split_for_sql_editor, write_sql_editor_parts,
)


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


class SqlEditorSplitTests(unittest.TestCase):
    def test_repository_seed_preserves_every_statement_under_editor_limit(self):
        sql = (Path(__file__).resolve().parents[1] / "seed_tcas70.sql").read_text(encoding="utf-8")
        def statements(text):
            return _seed_statements(text.split("begin;\n", 1)[1].rsplit("\ncommit;", 1)[0].strip())
        chunks = split_for_sql_editor(sql)
        self.assertEqual([s for chunk in chunks for s in statements(chunk)], statements(sql))
        self.assertTrue(all(len(chunk) <= 200_000 for chunk in chunks))

    def test_multiline_and_quoted_semicolons_stay_in_one_statement(self):
        statement = "insert into t values ('Portfolio; Bob''s\n\nเอกสาร;\nรายละเอียด');"
        sql = "begin;\n" + statement + "\n\ninsert into t values ('next');\ncommit;"
        chunks = split_for_sql_editor(sql, max_chars=210)
        self.assertEqual(len(chunks), 2)
        self.assertIn(statement, chunks[0])
        self.assertIn("insert into t values ('next');", chunks[1])
        self.assertTrue(all(len(chunk) <= 210 for chunk in chunks))

    def test_oversize_or_incomplete_statement_is_rejected(self):
        with self.assertRaisesRegex(ValueError, "single SQL statement"):
            split_for_sql_editor("begin;\ninsert into t values ('" + "x" * 300 + "');\ncommit;", 230)
        for body in ["insert into t values ('unfinished);", "insert into t values (1)"]:
            with self.subTest(body=body), self.assertRaisesRegex(ValueError, "incomplete"):
                split_for_sql_editor("begin;\n" + body + "\ncommit;")

    def test_split_failure_preserves_previously_generated_parts(self):
        with tempfile.TemporaryDirectory() as folder:
            output = Path(folder) / "seed.sql"
            parts = Path(folder) / "seed_parts"
            parts.mkdir()
            old = parts / "part_01.sql"
            old.write_text("previous verified SQL", encoding="utf-8")
            with self.assertRaises(ValueError):
                write_sql_editor_parts("invalid SQL", output)
            self.assertEqual(old.read_text(encoding="utf-8"), "previous verified SQL")


if __name__ == "__main__":
    unittest.main()
