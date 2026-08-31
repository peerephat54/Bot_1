import unittest

from question_answering import answer_question, classify_question, find_programs


PROGRAMS = [{
    "code": "m1",
    "university_short_name": "KMITL",
    "university_name": "สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง",
    "faculty_name": "คณะเทคโนโลยีสารสนเทศ",
    "major_name": "เทคโนโลยีสารสนเทศ",
}]


class QuestionAnsweringTests(unittest.TestCase):
    def test_classification_and_matching_are_deterministic(self):
        self.assertEqual(classify_question("KMITL หมดเขตวันไหน"), "deadline")
        self.assertEqual(find_programs("KMITL เทคโนโลยีสารสนเทศ", PROGRAMS)[0]["code"], "m1")

    def test_answer_includes_source_and_does_not_invent_missing_data(self):
        answer, matches = answer_question(
            "KMITL เทคโนโลยีสารสนเทศ ต้องใช้เอกสารอะไร",
            PROGRAMS,
            lambda code: {"major_name": "เทคโนโลยีสารสนเทศ", "university_short_name": "KMITL", "projects": [{"name": "Portfolio", "selected_criteria": {}, "source_url": "https://example.com"}]} if code == "m1" else None,
        )
        self.assertEqual(matches[0]["code"], "m1")
        self.assertIn("ยังไม่ระบุรายการเอกสาร", answer)
        self.assertIn("https://example.com", answer)


if __name__ == "__main__":
    unittest.main()
