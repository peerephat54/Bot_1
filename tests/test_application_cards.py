import copy
import unittest

from application_cards import UNKNOWN, application_question_fields, readable
from test_grade_screening import CANDIDATES, app, card_text, results


class ApplicationCardTests(unittest.TestCase):
    def test_structured_criteria_are_written_as_readable_text(self):
        methods = app.format_selection_methods([
            {"name": "ประวัติผลงานและประกาศนียบัตร", "weight_percent": 50},
            {"name": "สัมภาษณ์", "weight_percent": 50},
        ])
        additional = app.format_bullets({
            "minimum_subject_credits": {
                "วิทยาศาสตร์": 22,
                "คณิตศาสตร์": 12,
                "ภาษาต่างประเทศ": 9,
            },
            "interview_required": True,
        })
        self.assertIn("ประวัติผลงานและประกาศนียบัตร — 50%", methods)
        self.assertIn("วิทยาศาสตร์ 22", additional)
        self.assertIn("มีสอบสัมภาษณ์: ใช่", additional)
        self.assertNotIn("{", methods + additional)

    def test_summary_answers_common_application_questions(self):
        candidate = next(c for c in CANDIDATES if c["project"]["code"] == "muict-ict-portfolio")
        card = app.build_project_embed(candidate["program"], candidate["project"])
        fields = {f.name: f.value for f in card.fields}
        for name in (
            "ใครสมัครได้?", "ใช้เกรดและคะแนนอะไร?", "พอร์ตต้องมีอะไรบ้าง?",
            "ต้องใช้เอกสารอะไร?", "คัดเลือกอย่างไร / สัมภาษณ์ไหม?",
            "รับกี่คน / ต้องจ่ายเท่าไร?", "สมัครที่ไหน / ทำอะไรต่อ?",
        ):
            self.assertIn(name, fields)
        text = card_text(card)
        for value in ("10 หน้า", "3 MB", "ภาษาอังกฤษ", "สัมภาษณ์ภาษาอังกฤษ", "2.50", "31 ส.ค. 2569"):
            self.assertIn(value, text)
        self.assertIn(candidate["project"]["source_url"], text)
        self.assertTrue(all(not f.inline for f in card.fields))

    def test_unknown_is_not_free_no_test_or_no_portfolio(self):
        fields = dict(application_question_fields({"selected_criteria": {}}))
        self.assertIn(UNKNOWN, fields["ต้องใช้เอกสารอะไร?"])
        self.assertIn("ไม่ได้แปลว่าไม่ต้องใช้", fields["ใช้เกรดและคะแนนอะไร?"])
        self.assertIn("ยังสรุปไม่ได้", fields["พอร์ตต้องมีอะไรบ้าง?"])
        self.assertIn("ยังไม่ระบุ", fields["รับกี่คน / ต้องจ่ายเท่าไร?"])
        self.assertNotIn("0 บาท", fields["รับกี่คน / ต้องจ่ายเท่าไร?"])

    def test_zero_fees_and_shared_quota_notes_are_preserved(self):
        fields = dict(application_question_fields({
            "application_fee": 0, "tuition_fee_per_semester": 0, "slots_available": None,
            "program_notes": "60 คนรวมหลายโครงการ ไม่แยกจำนวนเฉพาะสาขา",
        }))
        costs = fields["รับกี่คน / ต้องจ่ายเท่าไร?"]
        self.assertIn("ค่าสมัคร:** 0 บาท", costs)
        self.assertIn("60 คนรวมหลายโครงการ", costs)
        self.assertIn("ยังไม่ระบุจำนวนรับเฉพาะ", costs)
        self.assertEqual(readable(False), "ไม่")

    def test_partial_document_lists_are_explicit(self):
        project = {"selected_criteria": {"required_documents": [f"เอกสาร{i}" for i in range(7)]}}
        fields = dict(application_question_fields(project))
        self.assertIn("อีก 3 รายการ", fields["ต้องใช้เอกสารอะไร?"])
        self.assertIn("Portfolio", fields["ต้องใช้เอกสารอะไร?"])

    def test_conditional_gpax_and_formal_requirements_not_invented(self):
        fields = dict(application_question_fields({"selected_criteria": {
            "min_gpax": 3.5,
            "gpax_requirements": {"Grade 12 / Year 13 / GED": "ประกาศไม่กำหนดผลการเรียน"},
        }}))
        self.assertIn("ใช้ต่างกันตามวุฒิ", fields["ใช้เกรดและคะแนนอะไร?"])
        self.assertIn("ประกาศไม่กำหนดผลการเรียน", fields["ใช้เกรดและคะแนนอะไร?"])

    def test_old_reference_does_not_offer_current_application(self):
        preview = {"title": "Old", "application_fee": 0, "source_url": "https://example.org/old.pdf", "application_url": "https://example.org/apply", "portfolio_summary": "ไฟล์ PDF ไม่เกิน 10 หน้า"}
        fields = dict(application_question_fields(preview=preview, detail_hint="ปุ่มเกณฑ์ปีก่อน"))
        self.assertIn("(ปีก่อน)", next(name for name in fields if name.startswith("รับกี่คน")))
        self.assertIn("ต้องตรวจประกาศปีใหม่", fields["สมัครที่ไหน / ทำอะไรต่อ?"])
        self.assertNotIn(preview["application_url"], fields["สมัครที่ไหน / ทำอะไรต่อ?"])
        self.assertIn(preview["source_url"], fields["สมัครที่ไหน / ทำอะไรต่อ?"])

    def test_all_first_pages_preserve_sources_and_fit(self):
        original = copy.deepcopy(CANDIDATES)
        for field in app.SCREENING_FIELDS:
            entries, _, _ = results(field=field)
            for entry in entries:
                card = app.build_grade_result_embed(entry, {"gpax": 3.2, "field": field}, 0, len(entries))
                self.assertLessEqual(len(card), 6000)
                for part in card.fields:
                    self.assertLessEqual(len(part.value), 1024)
                if entry["kind"] != "pending":
                    text = card_text(card)
                    self.assertIn("พอร์ตต้องมีอะไรบ้าง?", text)
                    source = (entry.get("project") or entry.get("preview") or {}).get("source_url")
                    if source:
                        self.assertIn(source, text)
                if entry["kind"] == "reference":
                    self.assertIn("ปีก่อน", card_text(card))
        self.assertEqual(original, CANDIDATES)


if __name__ == "__main__":
    unittest.main()
