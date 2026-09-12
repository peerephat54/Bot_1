import os
import unittest

from scripts.process_utils import process_is_alive


class ProcessUtilsTests(unittest.TestCase):
    def test_detects_current_process_and_rejects_invalid_pid(self):
        self.assertTrue(process_is_alive(os.getpid()))
        self.assertFalse(process_is_alive(0))
        self.assertFalse(process_is_alive(99999999))


if __name__ == "__main__":
    unittest.main()
