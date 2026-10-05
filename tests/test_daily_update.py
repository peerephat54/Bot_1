import io
import json
import tempfile
import unittest
from contextlib import redirect_stdout
from pathlib import Path
from types import SimpleNamespace
from unittest.mock import patch

from scripts.daily_update import import_is_allowed, main


class DailyUpdateTests(unittest.TestCase):
    def test_blocks_review_and_missing_reports(self):
        self.assertFalse(import_is_allowed({"status": "needs_review"}))
        self.assertFalse(import_is_allowed({}))

    def test_allows_only_ready_report(self):
        self.assertTrue(import_is_allowed({"status": "ready"}))
        self.assertFalse(import_is_allowed({"status": "passed"}))

    def run_gate(self, new_report, verify_code=0, validation_code=0):
        with tempfile.TemporaryDirectory() as folder:
            root = Path(folder)
            output, snapshot = root / "report.json", root / "review.md"
            old_report = {"status": "ready", "generated_at": "old"}
            output.write_text(json.dumps(old_report), encoding="utf-8")
            snapshot.write_text("old review", encoding="utf-8")

            def fake_run(command, **kwargs):
                if "--output" in command:
                    fresh = Path(command[command.index("--output") + 1])
                    self.assertNotEqual(fresh, output)
                    if new_report is not None:
                        fresh.write_text(json.dumps(new_report), encoding="utf-8")
                    return SimpleNamespace(returncode=verify_code)
                return SimpleNamespace(returncode=validation_code)

            with patch("scripts.daily_update.ROOT", root), patch(
                "scripts.daily_update.subprocess.run", side_effect=fake_run
            ), redirect_stdout(io.StringIO()):
                result = main(["--output", str(output), "--review-output", str(snapshot)])
            return result, json.loads(output.read_text(encoding="utf-8")), snapshot.read_text(encoding="utf-8")

    def test_missing_fresh_report_does_not_republish_old_ready_report(self):
        result, report, snapshot = self.run_gate(None)
        self.assertEqual(result, 1)
        self.assertEqual(report["generated_at"], "old")
        self.assertEqual(snapshot, "old review")

    def test_failed_verifier_or_validator_preserves_previous_reports(self):
        for verify_code, validation_code in [(1, 0), (0, 1), (2, 0)]:
            with self.subTest(verify_code=verify_code, validation_code=validation_code):
                result, report, snapshot = self.run_gate({"status": "ready"}, verify_code, validation_code)
                self.assertEqual(result, 1)
                self.assertEqual(report["generated_at"], "old")
                self.assertEqual(snapshot, "old review")

    def test_review_queue_is_published_with_exit_code_two(self):
        result, report, snapshot = self.run_gate({"status": "needs_review"}, verify_code=2)
        self.assertEqual(result, 2)
        self.assertEqual(report["status"], "needs_review")
        self.assertIn("needs_review", snapshot)

    def test_only_new_successful_ready_report_passes(self):
        result, report, snapshot = self.run_gate({"status": "ready", "generated_at": "new"})
        self.assertEqual(result, 0)
        self.assertEqual(report["generated_at"], "new")
        self.assertIn("ready", snapshot)


if __name__ == "__main__":
    unittest.main()
