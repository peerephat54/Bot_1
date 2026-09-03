import copy
import copy
import unittest

from application_cards import UNKNOWN, application_question_fields, readable
from test_grade_screening import CANDIDATES, app, card_text, results


class ApplicationCardTests(unittest.TestCase):
    def test_project_name_and_menu_show_round_and_deadline(self):
        base = {
            "name": "MU – Portfolio (TCAS 1)",
            "round_label": "1 Portfolio",
            "selected_criteria": {"min_gpax": 2.50},
            "admission_timeline": [{
                "event_name": "รับสมัคร",
                "end_on": "2026-09-10",
                "date_status": "confirmed",
            }],
        }
        round_11 = dict(base, round_variant="1.1")
        round_12 = dict(base, round_variant="1.2")
        self.assertIn("รอบ 1.1", app.project_display_name(round_11))
        self.assertIn("รอบ 1.2", app.project_display_name(round_12))
        self.assertIn("ปิดรับถึง 10 ก.ย. 2569", app.project_choice_description(round_11))

    def test_program_comparison_explains_study_and_curriculum(self):
        candidate = next(c for c in CANDIDATES if c["project"]["code"] == "muict-ict-portfolio")
        program = copy.deepcopy(candidate["program"])
        program["projects"] = [copy.deepcopy(candidate["project"])]
        text = card_text(app.build_program_comparison_embed([program]))
        self.assertIn("เรียนเกี่ยวกับ:", text)
        self.assertIn("จุดเน้น:", text)
        self.assertIn("หลักสูตร:", text)
        self.assertIn("การพัฒนาระบบสารสนเทศ", text)
        self.assertIn("ซอฟต์แวร์", text)
        self.assertIn("หน่วยกิต", text)

    def test_quick_summary_answers_three_first_questions(self):
        candidate = next(c for c in CANDIDATES if c["project"]["code"] == "muict-ict-portfolio")
        text = card_text(app.build_project_embed(candidate["program"], candidate["project"]))
        self.assertIn("สรุปเร็ว 3 อย่าง", text)
        self.assertIn("สมัครได้ไหม:", text)
        self.assertIn("ปิดรับสมัคร:", text)
        self.assertIn("ต้องทำอะไรต่อ:", text)

    def test_status_badges_are_short_and_distinguishable(self):
        self.assertEqual(app.source_status_badge({"publication_status": "official"}), "✅ ยืนยันแล้ว")
        self.assertEqual(app.source_status_badge({"publication_status": "draft_waiting_official"}), "🟡 รอประกาศ")
        self.assertIn("ข้อมูลปีก่อน", app.source_status_badge({"reference_academic_year": 2569}))
        self.assertEqual(app.source_status_badge({}), "🔎 ต้องตรวจเพิ่ม")

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

    def test_status_and_source_are_explicit(self):
        candidate = next(c for c in CANDIDATES if c["project"]["code"] == "muict-ict-portfolio")
        card_text_value = card_text(
            app.build_project_embed(candidate["program"], candidate["project"])
        )
        self.assertIn("สถานะข้อมูลและแหล่งที่มา", card_text_value)
        self.assertIn("ยืนยันแล้ว — มีประกาศโครงการ TCAS70 ทางการ", card_text_value)
        self.assertIn("แหล่งข้อมูล:", card_text_value)
        self.assertIn("ตรวจล่าสุด: 3 ก.ย. 2569", card_text_value)

        self.assertIn(
            "ยังไม่ยืนยัน — รอประกาศรับสมัครฉบับสมบูรณ์",
            app.source_status_text({"publication_status": "draft_waiting_official"}),
        )
        self.assertIn(
            "ข้อมูลอ้างอิง TCAS69",
            app.source_status_text({"reference_academic_year": 2569}),
        )

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

    def test_gpax_role_is_explicit_when_not_part_of_selection_weight(self):
        fields = dict(application_question_fields({"selected_criteria": {
            "min_gpax": 2.5,
            "gpax_role": "ใช้เป็นคุณสมบัติขั้นต่ำ ไม่คิดเป็นน้ำหนักคะแนนคัดเลือก",
        }}))
        self.assertIn("ไม่คิดเป็นน้ำหนักคะแนนคัดเลือก", fields["ใช้เกรดและคะแนนอะไร?"])

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
