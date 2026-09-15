import unittest
from datetime import date

from question_answering import (
    answer_question,
    answer_question_from_candidates,
    answer_question_with_candidate_loader,
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
            "source_checked_at": date.today().isoformat(),
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
        self.assertIn("สถานะข้อมูล: ✅ ยืนยันแล้ว", answer)
        self.assertIn("ต่อไป: ตรวจคุณสมบัติและเอกสาร", answer)

    def test_mixed_question_answers_primary_and_secondary_topics(self):
        project = {
            "name": "โครงการ Portfolio",
            "round_label": "1 Portfolio",
            "round_variant": "1.1",
            "publication_status": "official",
            "source_url": "https://example.com/ku",
            "source_checked_at": "2099-08-31",
            "selected_criteria": {"required_documents": ["ใบแสดงผลการเรียน"]},
            "admission_timeline": [{
                "event_name": "รับสมัคร",
                "start_on": "2099-09-01",
                "end_on": "2099-09-10",
                "date_status": "confirmed",
            }],
        }
        answer, _ = answer_question(
            "KU วิทยาการคอมพิวเตอร์ สมัครได้ไหม หมดเขตวันไหน ต้องใช้เอกสารอะไร",
            [{**PROGRAMS[0], "university_short_name": "KU", "major_name": "วิทยาการคอมพิวเตอร์"}],
            lambda code: {"projects": [project]},
        )
        self.assertIn("สถานะการสมัคร:", answer)
        self.assertIn("กำหนดการ:", answer)
        self.assertIn("เอกสาร:", answer)

    def test_official_project_without_checked_date_is_not_marked_confirmed(self):
        answer, _ = answer_question(
            "KMITL เทคโนโลยีสารสนเทศ ต้องใช้เอกสารอะไร",
            PROGRAMS,
            lambda code: {"projects": [{
                "name": "Portfolio",
                "publication_status": "official",
                "source_url": "https://example.com",
                "selected_criteria": {},
            }]},
        )
        self.assertIn("🟡 รอตรวจ (ยังไม่มีวันที่ตรวจล่าสุด)", answer)
        self.assertIn("เปิดประกาศทางการและตรวจข้อมูลล่าสุด", answer)

    def test_local_catalog_is_used_before_project_loader(self):
        projects = _load_local_projects({"code": "mu-ict"})
        self.assertTrue(projects)
        self.assertTrue(any(item.get("code") == "muict-ict-portfolio" for item in projects))

    def test_preloaded_candidates_answer_without_per_program_loader_calls(self):
        candidate = {
            "program": {"code": "m1"},
            "project": {
                "code": "p1",
                "name": "โครงการ Portfolio",
                "publication_status": "official",
                "source_url": "https://example.com/official",
                "selected_criteria": {"required_documents": ["ใบแสดงผลการเรียน"]},
            },
        }
        answer, matches = answer_question_from_candidates(
            "KMITL เทคโนโลยีสารสนเทศ ต้องใช้เอกสารอะไร",
            PROGRAMS,
            [candidate, candidate],
        )

        self.assertEqual([item["code"] for item in matches], ["m1"])
        self.assertIn("ใบแสดงผลการเรียน", answer)
        self.assertIn("https://example.com/official", answer)
        self.assertEqual(answer.count("[เปิดประกาศทางการ]"), 1)

    def test_candidate_loader_is_skipped_when_local_catalog_has_the_answer(self):
        program = {
            "code": "mu-ict",
            "university_short_name": "MU",
            "university_name": "มหาวิทยาลัยมหิดล",
            "major_name": "เทคโนโลยีสารสนเทศ",
        }

        def unexpected_remote_load():
            raise AssertionError("remote candidates should not load for local facts")

        answer, matches = answer_question_with_candidate_loader(
            "MU เทคโนโลยีสารสนเทศ portfolio",
            [program],
            unexpected_remote_load,
        )

        self.assertTrue(matches)
        self.assertIn("สถานะข้อมูล", answer)

    def test_candidate_loader_fetches_one_snapshot_for_all_uncovered_programs(self):
        programs = [
            {"code": "x1", "major_name": "วิศวกรรมคอมพิวเตอร์", "university_short_name": "A"},
            {"code": "x2", "major_name": "วิศวกรรมคอมพิวเตอร์", "university_short_name": "B"},
        ]
        calls = []

        def load_candidates():
            calls.append(True)
            return [
                {
                    "program": {"code": code},
                    "project": {
                        "code": f"{code}-p",
                        "name": "รอบ Portfolio",
                        "publication_status": "official",
                        "source_url": "https://example.com/official",
                        "selected_criteria": {"min_gpax": 2.5},
                    },
                }
                for code in ("x1", "x2")
            ]

        answer, matches = answer_question_with_candidate_loader(
            "วิศวกรรมคอมพิวเตอร์ GPAX เท่าไร",
            programs,
            load_candidates,
        )

        self.assertEqual(len(calls), 1)
        self.assertEqual([item["code"] for item in matches], ["x1", "x2"])
        self.assertIn("GPAX ขั้นต่ำ 2.50", answer)


if __name__ == "__main__":
    unittest.main()
