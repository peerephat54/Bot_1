import unittest

from scripts.daily_update import import_is_allowed


class DailyUpdateTests(unittest.TestCase):
    def test_blocks_review_and_missing_reports(self):
        self.assertFalse(import_is_allowed({"status": "needs_review"}))
        self.assertFalse(import_is_allowed({}))

    def test_allows_only_passed_report(self):
        self.assertTrue(import_is_allowed({"status": "passed"}))


if __name__ == "__main__":
    unittest.main()
