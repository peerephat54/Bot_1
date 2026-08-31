import unittest
from datetime import date

from scripts.check_official_sources import (
    build_report,
    monitored_sources,
    source_age_days,
)


class SourceMonitorTests(unittest.TestCase):
    def test_monitor_ignores_excluded_and_duplicate_sources(self):
        audit = {
            "sources": [
                {"url": "https://example.com/a", "classification": "verified_existing_primary"},
                {"url": "https://example.com/a", "classification": "used_primary_index"},
                {"url": "https://example.com/b", "classification": "excluded_secondary"},
            ]
        }
        self.assertEqual([item["url"] for item in monitored_sources(audit)], ["https://example.com/a"])

    def test_source_age_accepts_iso_date_and_datetime(self):
        today = date(2026, 8, 31)
        self.assertEqual(source_age_days("2026-08-28", today=today), 3)
        self.assertEqual(source_age_days("2026-08-28T12:00:00+07:00", today=today), 3)
        self.assertIsNone(source_age_days("not-a-date", today=today))

    def test_report_separates_errors_and_stale_sources(self):
        audit = {
            "academic_year": 2570,
            "sources": [
                {
                    "url": "https://example.com/fresh",
                    "publisher": "มหาวิทยาลัยตัวอย่าง",
                    "classification": "imported_primary",
                    "source_checked_at": "2026-08-29",
                },
                {
                    "url": "https://example.com/old",
                    "publisher": "มหาวิทยาลัยตัวอย่าง",
                    "classification": "used_primary_index",
                    "source_checked_at": "2026-08-01",
                },
            ],
        }

        def fake_fetch(url):
            return {"status": "ok"} if url.endswith("fresh") else {"status": "network_error", "error": "offline"}

        report = build_report(audit, fetcher=fake_fetch, today=date(2026, 8, 31))
        self.assertEqual(report["source_count"], 2)
        self.assertEqual(report["ok_count"], 1)
        self.assertEqual(report["error_count"], 1)
        self.assertEqual(report["stale_count"], 1)
        self.assertEqual(report["policy"], "changed sources require human review before data import")

    def test_report_detects_a_changed_source_against_previous_baseline(self):
        audit = {
            "sources": [{"url": "https://example.com/source", "source_checked_at": "2026-08-31"}]
        }
        previous = {
            "results": [{"url": "https://example.com/source", "sha256": "old"}]
        }
        report = build_report(
            audit,
            fetcher=lambda url: {"status": "ok", "sha256": "new"},
            today=date(2026, 8, 31),
            previous_report=previous,
        )
        self.assertEqual(report["changed_count"], 1)
        self.assertTrue(report["results"][0]["changed"])


if __name__ == "__main__":
    unittest.main()
