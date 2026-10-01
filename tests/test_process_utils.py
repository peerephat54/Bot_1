import os
import unittest

from scripts.process_utils import process_is_alive


class ProcessUtilsTests(unittest.TestCase):
    def test_detects_current_process_and_rejects_invalid_pid(self):
        self.assertTrue(process_is_alive(os.getpid()))
        self.assertFalse(process_is_alive(0))
        self.assertFalse(process_is_alive(99999999))


import unittest
from unittest.mock import patch

from scripts import process_utils


class ProcessIdentityTests(unittest.TestCase):
    def test_python_process_accepts_python_executable(self):
        with patch.object(process_utils, "process_executable", return_value=r"C:\Python\python.exe"):
            self.assertTrue(process_utils.is_python_process(123))

    def test_python_process_rejects_unrelated_executable(self):
        with patch.object(process_utils, "process_executable", return_value=r"C:\Browser\browser.exe"):
            self.assertFalse(process_utils.is_python_process(123))

    def test_python_process_rejects_missing_process(self):
        with patch.object(process_utils, "process_executable", return_value=None):
            self.assertFalse(process_utils.is_python_process(123))


if __name__ == "__main__":
    unittest.main()
