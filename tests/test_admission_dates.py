import unittest

from admission_dates import MISSING, event_date, parse_reference_period, portfolio_dates, thai_date
from test_grade_screening import CANDIDATES, app, card_text, results


def event(name, start=None, end=None, status="confirmed", display=None):
    return {"event_name": name, "start_on": start, "end_on": end, "date_status": status, "date_display": display}


class AdmissionDateTests(unittest.TestCase):
    def test_thai_dates_and_reference_ranges(self):
        self.assertEqual(thai_date("2026-08-03"), "3 ส.ค. 2569")
        self.assertEqual(thai_date("2026-08-03T12:00:00+07:00"), "3 ส.ค. 2569")
        self.assertIsNone(thai_date("2026-02-31"))
        samples = {
            "3-17 พ.ย. 2568 (กำหนดการของ TCAS69)": ("2025-11-03", "2025-11-17"),
            "1 ต.ค. - 22 ธ.ค. 2568": ("2025-10-01", "2025-12-22"),
            "24 พ.ย. 2568 - 10 ม.ค. 2569": ("2025-11-24", "2026-01-10"),
            "ถึง 22 ธ.ค. 2568": (None, "2025-12-22"),
            "ธันวาคม": (None, None),
            "31 ธ.ค. - 10 ม.ค. 2569": (None, None),
            "": (None, None),
        }
        for value, expected in samples.items():
            self.assertEqual(parse_reference_period(value), expected, value)

    def test_open_close_and_result_are_separate(self):
        text = portfolio_dates([
            event("รับสมัคร", "2026-08-03", "2026-08-31"),
            event("ชำระเงินค่าสมัคร", "2026-08-03", "2026-09-01"),
            event("ประกาศผู้มีสิทธิ์สัมภาษณ์", "2026-09-08"),
            event("สอบสัมภาษณ์", "2026-09-15"),
            event("ประกาศผลข้อเขียน", "2026-09-10"),
            event("ประกาศผลสอบสัมภาษณ์", "2026-09-20"),
            event("ประกาศผู้ผ่านการคัดเลือก", "2026-09-22"),
            event("ประกาศผู้ยืนยันสิทธิ์เข้าศึกษา", "2026-09-25"),
            event("ประกาศรายชื่อผู้มีสิทธิ์เข้าศึกษา", "2027-02-10"),
        ])
        self.assertIn("**เปิดรับสมัคร:** 3 ส.ค. 2569", text)
        self.assertIn("**ปิดรับสมัคร:** 31 ส.ค. 2569", text)
        self.assertIn("**ประกาศผลคัดเลือก:** 22 ก.ย. 2569", text)
        self.assertIn("**ประกาศสิทธิ์สัมภาษณ์:** 8 ก.ย. 2569", text)
        self.assertIn("**วันสอบสัมภาษณ์:** 15 ก.ย. 2569", text)
        self.assertIn("**ประกาศผลสัมภาษณ์:** 20 ก.ย. 2569", text)
        self.assertIn("**ประกาศผู้มีสิทธิ์เข้าศึกษา:** 10 ก.พ. 2570", text)
        self.assertNotIn("10 ก.ย. 2569", text)
        self.assertNotIn("25 ก.ย. 2569", text)

    def test_interview_only_does_not_become_final_result(self):
        text = portfolio_dates([event("ประกาศผู้มีสิทธิ์สอบสัมภาษณ์", "2026-09-08")])
        self.assertIn(f"**ประกาศผลคัดเลือก:** {MISSING}", text)
        self.assertIn("**ประกาศสิทธิ์สัมภาษณ์:** 8 ก.ย. 2569", text)
        self.assertIn(f"**วันสอบสัมภาษณ์:** {MISSING}", text)

    def test_interview_date_is_separate_from_interview_announcement(self):
        text = portfolio_dates([
            event("ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์", "2026-11-03"),
            event("สอบสัมภาษณ์ออนไลน์", "2026-11-09", "2026-11-10"),
        ])
        self.assertIn("**ประกาศสิทธิ์สัมภาษณ์:** 3 พ.ย. 2569", text)
        self.assertIn("**วันสอบสัมภาษณ์:** 9 พ.ย. 2569 – 10 พ.ย. 2569", text)

    def test_interview_requirement_is_explained_when_date_is_missing(self):
        self.assertIn(
            "**วันสอบสัมภาษณ์:** ไม่ใช้สอบสัมภาษณ์ตามเกณฑ์โครงการ",
            portfolio_dates(interview_required=False),
        )
        self.assertIn(
            "**วันสอบสัมภาษณ์:** มีสอบสัมภาษณ์ แต่ยังไม่ระบุวัน",
            portfolio_dates(interview_required=True),
        )

    def test_full_timeline_uses_readable_thai_dates(self):
        text = app.format_timeline([
            event("ปิดรับสมัคร", "2026-10-14"),
            event("สอบสัมภาษณ์", "2026-11-09"),
        ])
        self.assertIn("ปิดรับสมัคร: 14 ต.ค. 2569", text)
        self.assertIn("สอบสัมภาษณ์: 9 พ.ย. 2569", text)

    def test_unknown_tentative_disputed_and_month_only(self):
        self.assertEqual(portfolio_dates().count(MISSING), 5)
        self.assertIn("เบื้องต้น", event_date(event("รับสมัคร", "2026-08-03", status="tentative")))
        self.assertIn("ต้องตรวจยืนยัน", event_date(event("รับสมัคร", "2026-08-03", status=None)))
        disputed = event_date(event("ประกาศผลการคัดเลือก", "2026-09-01", status="disputed"))
        self.assertIn("ขัดแย้ง", disputed)
        self.assertNotIn("1 ก.ย.", disputed)
        month = event_date(event("รับสมัคร", "2026-08-01", status="month_only", display="ส.ค. 2569"))
        self.assertNotIn("1 ส.ค.", month)
        self.assertIn("ระบุเพียงเดือน", month)

    def test_end_only_never_invents_opening_date(self):
        text = portfolio_dates(preview={"application_period": "ถึง 22 ธ.ค. 2568"})
        self.assertIn(f"**เปิดรับสมัคร:** {MISSING}", text)
        self.assertIn("**ปิดรับสมัคร:** 22 ธ.ค. 2568", text)
        text = portfolio_dates([event("ปิดรับสมัคร", "2026-09-01")])
        self.assertIn(f"**เปิดรับสมัคร:** {MISSING}", text)
        self.assertIn("**ปิดรับสมัคร:** 1 ก.ย. 2569", text)

    def test_multiple_windows_and_times_are_preserved(self):
        text = portfolio_dates([
            event("รับสมัคร 1.1", "2026-08-01", "2026-08-10", display="1–10 ส.ค. 2569 ปิด 16:30"),
            event("รับสมัคร 1.2", "2026-09-01", "2026-09-10"),
        ])
        self.assertIn("10 ส.ค. 2569 (รับสมัคร 1.1)", text)
        self.assertIn("10 ก.ย. 2569 (รับสมัคร 1.2)", text)
        self.assertIn("16:30", text)

    def test_reference_period_with_a_result_event(self):
        text = portfolio_dates(preview={
            "application_period": "3-17 พ.ย. 2568",
            "admission_timeline": [event("ประกาศผลการคัดเลือก", "2025-12-01")],
        })
        self.assertIn("**เปิดรับสมัคร:** 3 พ.ย. 2568", text)
        self.assertIn("**ประกาศผลคัดเลือก:** 1 ธ.ค. 2568", text)

    def test_current_and_reference_cards_have_dates_on_first_page(self):
        entries, _, _ = results(field="it")
        current = next(e for e in entries if e.get("project", {}).get("code") == "muict-ict-portfolio")
        card = app.build_grade_result_embed(current, {"gpax": 3.2, "field": "it"}, 0, len(entries))
        text = card_text(card)
        self.assertIn("3 ส.ค. 2569", text)
        self.assertIn("31 ส.ค. 2569", text)
        self.assertIn("22 ก.ย. 2569", text)
        entries, _, _ = results()
        prior = next(e for e in entries if e["program"]["code"] == "cu-engineering-cedt")
        card = app.build_grade_result_embed(prior, {"gpax": 3.2, "field": "engineering"}, 0, len(entries))
        self.assertTrue(any("กำหนดการ TCAS69" in f.name and "ปีก่อน" in f.name for f in card.fields))
        self.assertIn("**ปิดรับสมัคร:** 17 พ.ย. 2568", card_text(card))
        self.assertIn(f"**ประกาศผลคัดเลือก:** {MISSING}", card_text(card))

    def test_all_current_project_summaries_fit_discord(self):
        for candidate in CANDIDATES:
            card = app.build_project_embed(candidate["program"], candidate["project"])
            self.assertLessEqual(len(card), 6000)
            self.assertTrue(any("กำหนดการสมัคร สัมภาษณ์ และผล" in f.name for f in card.fields))
            for field in card.fields:
                self.assertLessEqual(len(field.value), 1024)


if __name__ == "__main__":
    unittest.main()
