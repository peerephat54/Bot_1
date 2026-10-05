"""Malformed admissions records must be rejected before generating SQL."""

import unittest

from scripts.validate_dataset import validate


def sample_dataset():
    return {
        "academic_year": 2570,
        "universities": [{"short_name": "KMITL"}, {"short_name": "KU"}],
        "campuses": [
            {"university_short_name": university, "code": "main", "name": "Main",
             "is_main": True, "official_url": url}
            for university, url in [("KMITL", "https://www.it.kmitl.ac.th/"),
                                    ("KU", "https://admission.ku.ac.th/")]
        ],
        "programs": [
            {"code": "it", "university_short_name": "KMITL", "campus_code": "main"},
            {"code": "ku-cs", "university_short_name": "KU", "campus_code": "main"},
        ],
        "projects": [{
            "code": "it-portfolio", "group_code": "it", "round_variant": "1.1",
            "university_short_name": "KMITL", "academic_year": 2570,
            "publication_status": "official", "is_visible": True,
            "source_url": "https://www.it.kmitl.ac.th/notice",
            "source_checked_at": "2026-10-03T10:00:00+07:00",
        }],
        "project_programs": [{"project_code": "it-portfolio", "program_code": "it",
                              "slots_available": 20}],
        "criteria": [{"project_code": "it-portfolio", "program_code": "it", "min_gpax": 3.0}],
        "timeline": [{"project_code": "it-portfolio", "event_name": "สมัคร",
                      "start_on": "2026-10-01", "end_on": "2026-10-31",
                      "date_status": "confirmed"}],
    }


class DatasetValidationTests(unittest.TestCase):
    def test_valid_dataset_passes(self):
        self.assertEqual(validate(sample_dataset())[0], [])

    def test_cross_university_link_is_rejected_even_with_matching_criteria(self):
        data = sample_dataset()
        data["project_programs"][0]["program_code"] = "ku-cs"
        data["criteria"][0]["program_code"] = "ku-cs"
        errors, _ = validate(data)
        self.assertIn("project/program university mismatch: it-portfolio/ku-cs", errors)

    def test_malformed_gpax_returns_errors_without_crashing(self):
        for value in ["3.0", True, [], {}, -0.1, 4.1, float("nan"), float("inf")]:
            with self.subTest(value=value):
                data = sample_dataset()
                data["criteria"][0]["min_gpax"] = value
                errors, _ = validate(data)
                self.assertTrue(any("invalid min_gpax" in error for error in errors))

    def test_unknown_and_boundary_gpax_remain_valid(self):
        for value in [None, 0, 4, 2.75]:
            with self.subTest(value=value):
                data = sample_dataset()
                data["criteria"][0]["min_gpax"] = value
                self.assertEqual(validate(data)[0], [])

    def test_boolean_and_fractional_slots_are_not_seat_counts(self):
        for value in [True, False, 1.5, "20", -1]:
            with self.subTest(value=value):
                data = sample_dataset()
                data["project_programs"][0]["slots_available"] = value
                self.assertTrue(any("invalid slots" in e for e in validate(data)[0]))

    def test_unknown_and_zero_seats_are_valid(self):
        for value in [None, 0]:
            data = sample_dataset()
            data["project_programs"][0]["slots_available"] = value
            self.assertEqual(validate(data)[0], [])

    def test_confirmed_dates_cannot_be_missing_or_malformed(self):
        for value in [None, "", 20261001, ["2026-10-01"], "2026-02-30"]:
            with self.subTest(value=value):
                data = sample_dataset()
                data["timeline"][0]["start_on"] = value
                self.assertTrue(validate(data)[0])

    def test_unknown_dates_and_single_day_events_remain_valid(self):
        data = sample_dataset()
        data["timeline"][0].update(start_on=None, end_on=None, date_status="unknown")
        self.assertEqual(validate(data)[0], [])
        data["timeline"][0].update(start_on="2026-10-01", date_status="confirmed")
        self.assertEqual(validate(data)[0], [])

    def test_timeline_requires_name_and_ordered_range(self):
        for overrides in [{"event_name": " "}, {"end_on": "2026-09-30"},
                          {"start_on": None, "date_status": "unknown"}]:
            with self.subTest(overrides=overrides):
                data = sample_dataset()
                data["timeline"][0].update(overrides)
                self.assertTrue(validate(data)[0])


if __name__ == "__main__":
    unittest.main()
