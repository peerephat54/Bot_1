import tempfile
import unittest
from pathlib import Path

from feedback_store import FeedbackStore


class FeedbackStoreTests(unittest.TestCase):
    def test_feedback_is_trimmed_and_capped(self):
        with tempfile.TemporaryDirectory() as directory:
            store = FeedbackStore(Path(directory) / "feedback.json", max_entries=2)
            store.submit(1, "idea", "  เพิ่มข้อมูล\nมศว  ")
            store.submit(2, "bug", "ระบบช้า")
            store.submit(3, "data", "ข้อมูลเก่า")
            rows = store.path.read_text(encoding="utf-8")
            self.assertNotIn("เพิ่มข้อมูล", rows)
            self.assertIn("ข้อมูลเก่า", rows)


if __name__ == "__main__":
    unittest.main()
