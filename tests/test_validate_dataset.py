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


if __name__ == "__main__":
    unittest.main()
