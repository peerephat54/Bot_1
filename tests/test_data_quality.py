import unittest
from datetime import date

from data_quality import build_quality_report


class DataQualityTests(unittest.TestCase):
    def test_report_exposes_coverage_and_missing_records(self):
        report = build_quality_report({
            "checked_at": "2026-08-30T00:00:00+00:00",
            "universities": [{"short_name": "A"}],
            "campuses": [{"code": "main"}],
            "programs": [{"code": "m1"}],
            "projects": [{"code": "p1", "publication_status": "official", "source_url": "https://example.com"}, {"code": "p2"}],
            "criteria": [{"project_code": "p1"}],
            "timeline": [{"project_code": "p1"}],
            "source_audit": {"sources": [{"url": "https://example.com", "source_checked_at": "2026-08-01"}]},
        }, today=date(2026, 8, 31))
        self.assertEqual(report["official_projects"], 1)
        self.assertEqual(report["project_status_counts"]["confirmed"], 1)
        self.assertEqual(report["project_status_counts"]["needs_review"], 1)
        self.assertEqual(report["projects_without_criteria"], 1)
        self.assertEqual(report["projects_without_timeline"], 1)
        self.assertEqual(report["stale_sources"], 1)


if __name__ == "__main__":
    unittest.main()
