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
            "projects": [{"code": "p1", "publication_status": "official", "source_url": "https://example.com", "source_checked_at": "2026-08-30"}, {"code": "p2"}],
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

    def test_projects_have_confirmed_pending_and_recheck_source_states(self):
        report = build_quality_report({
            "projects": [
                {
                    "code": "fresh",
                    "publication_status": "official",
                    "source_url": "https://admissions.example.edu/project",
                    "source_checked_at": "2026-09-13",
                },
                {
                    "code": "stale",
                    "publication_status": "official",
                    "source_url": "https://admissions.example.edu/old-project",
                    "source_checked_at": "2026-09-05",
                },
                {
                    "code": "missing-date",
                    "publication_status": "official",
                    "source_url": "https://admissions.example.edu/new-project",
                },
                {
                    "code": "not-announced",
                    "publication_status": "draft_waiting_official",
                    "source_url": "https://admissions.example.edu/notice",
                    "source_checked_at": "2026-09-13",
                },
            ],
        }, today=date(2026, 9, 13))

        self.assertEqual(report["project_status_counts"]["confirmed"], 1)
        self.assertEqual(report["project_status_counts"]["needs_recheck"], 1)
        self.assertEqual(report["project_status_counts"]["pending"], 2)
        self.assertEqual(report["projects_without_checked_date"], 1)

    def test_source_audit_date_can_supply_missing_project_check_date(self):
        report = build_quality_report({
            "projects": [{
                "code": "audit-date",
                "publication_status": "official",
                "source_url": "https://admissions.example.edu/project",
            }],
            "source_audit": {"sources": [{
                "url": "https://admissions.example.edu/project",
                "source_checked_at": "2026-09-12",
            }]},
        }, today=date(2026, 9, 13))

        self.assertEqual(report["project_status_counts"]["confirmed"], 1)
        self.assertEqual(report["projects_with_source_and_checked_date"], 1)


if __name__ == "__main__":
    unittest.main()
