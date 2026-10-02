import unittest

from runtime_status import supervisor_status


class RuntimeStatusTests(unittest.TestCase):
    def test_reports_bot_and_watchdog_separately(self):
        result = supervisor_status({"watchdog_pid": 10, "bot_pid": 20}, lambda pid: pid == 10)
        self.assertFalse(result["bot_alive"])
        self.assertTrue(result["watchdog_alive"])
        self.assertIn("watchdog", result["label"])

    def test_reports_both_as_ready(self):
        result = supervisor_status({"watchdog_pid": 10, "bot_pid": 20}, lambda pid: True)
        self.assertEqual(result["label"], "✅ บอทและ watchdog ทำงานอยู่")

    def test_expected_process_check_rejects_reused_pid(self):
        result = supervisor_status(
            {"watchdog_pid": 10, "bot_pid": 20},
            lambda pid: True,
            lambda pid: pid == 20,
        )
        self.assertFalse(result["watchdog_alive"])
        self.assertTrue(result["bot_alive"])


if __name__ == "__main__":
    unittest.main()
