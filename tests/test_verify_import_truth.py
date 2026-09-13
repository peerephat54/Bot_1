import json
import tempfile
import unittest
from datetime import date
from pathlib import Path

from scripts.verify_import_truth import (
    DEFAULT_DATASET,
    _reviewed_after_baseline,
    assess_static_evidence,
    build_truth_report,
    canonical_url,
    require_ready_report,
)


class ImportTruthGateTests(unittest.TestCase):
    def test_canonical_url_ignores_pdf_page_fragment_but_keeps_query(self):
        self.assertEqual(
            canonical_url("https://example.edu/file.pdf#page=12"),
            canonical_url("https://example.edu/file.pdf#page=14"),
        )
        self.assertNotEqual(
            canonical_url("https://drive.google.com/file?id=one#page=1"),
            canonical_url("https://drive.google.com/file?id=two#page=1"),
        )

    def test_current_dataset_exposes_stale_and_unmapped_evidence(self):
        dataset_path = DEFAULT_DATASET
        data = json.loads(dataset_path.read_text(encoding="utf-8"))
        audit = json.loads(dataset_path.with_name("tcas70_source_audit.json").read_text(encoding="utf-8"))
        result = assess_static_evidence(data, audit, today=date(2026, 9, 13))
        self.assertTrue(result["status_counts"].get("needs_review", 0))
        self.assertTrue(any(
            "ไม่มีรายการ URL นี้ใน source audit" in reason
            for item in result["records"] for reason in item["reasons"]
        ))

    def test_static_only_report_never_authorizes_an_import(self):
        with tempfile.TemporaryDirectory() as temp_dir:
            report_path = Path(temp_dir) / "truth-report.json"
            report = build_truth_report(static_only=True, output_path=report_path)
            self.assertEqual(report["status"], "needs_review")
            self.assertIsNone(report["source_monitor"])
            with self.assertRaisesRegex(ValueError, "not ready"):
                require_ready_report(
                    report_path,
                    DEFAULT_DATASET,
                    DEFAULT_DATASET.with_name("tcas70_source_audit.json"),
                )

    def test_hash_delta_is_cleared_only_by_audit_review_after_the_baseline(self):
        baseline = "2026-09-13T18:23:51+07:00"
        self.assertTrue(_reviewed_after_baseline("2026-09-13T18:33:06+07:00", baseline))
        self.assertFalse(_reviewed_after_baseline("2026-09-13", baseline))
        self.assertFalse(_reviewed_after_baseline("2026-09-12T18:33:06+07:00", baseline))


if __name__ == "__main__":
    unittest.main()
