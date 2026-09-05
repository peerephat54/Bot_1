import unittest

from question_answering import (
    answer_question,
    classify_question,
    extract_round_filter,
    find_programs,
    _load_local_projects,
)


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

    def test_natural_question_filters_round_and_answers_application_status(self):
        program = {
            **PROGRAMS[0],
            "university_short_name": "KU",
            "major_name": "วิทยาการคอมพิวเตอร์",
        }
        project = {
            "name": "โครงการ Portfolio",
            "round_label": "1 Portfolio",
            "round_variant": "1.1",
            "publication_status": "official",
            "source_url": "https://example.com/ku",
            "admission_timeline": [{
                "event_name": "รับสมัคร",
                "start_on": "2099-09-01",
                "end_on": "2099-09-10",
                "date_status": "confirmed",
            }],
        }
        query = "สามารถยื่นพอร์ต รอบ 1-1 ของ KU ได้แล้วใช่มั้ย"
        answer, matches = answer_question(
            query,
            [program],
            lambda code: {**program, "projects": [project]} if code == "m1" else None,
        )
        self.assertEqual(classify_question(query), "application_status")
        self.assertEqual(extract_round_filter(query), "1.1")
        self.assertEqual(matches[0]["code"], "m1")
        self.assertIn("รอบ 1.1", answer)
        self.assertIn("ยังไม่เปิดรับสมัคร", answer)
        self.assertIn("10 ก.ย. 2642", answer)

    def test_local_catalog_is_used_before_project_loader(self):
        projects = _load_local_projects({"code": "mu-ict"})
        self.assertTrue(projects)
        self.assertTrue(any(item.get("code") == "muict-ict-portfolio" for item in projects))


if __name__ == "__main__":
    unittest.main()
