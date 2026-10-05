import unittest

from scripts.write_review_report import render_report


class ReviewReportTests(unittest.TestCase):
    def test_render_report_keeps_review_boundary_and_counts(self):
        report = {
            "academic_year": 2570,
            "generated_at": "2026-10-01T16:18:20+07:00",
            "status": "needs_review",
            "source_monitor": {
                "source_count": 2,
                "ok_count": 1,
                "error_count": 1,
                "changed_count": 0,
                "stale_count": 1,
                "baseline_missing_count": 0,
            },
            "record_status_counts": {
                "automated_checks_passed": 3,
                "needs_review": 1,
            },
            "unresolved_records": [{
                "record_type": "project",
                "code": "example-1-1",
                "university": "KMITL",
                "reasons": ["เปิด URL ไม่สำเร็จ (404)"],
                "source_url": "https://example.ac.th/notice.pdf",
            }],
        }

        output = render_report(report)

        self.assertIn("TCAS70 · ปีการศึกษา 2570", output)
        self.assertIn("ตรวจแหล่งข้อมูล: 2 แห่ง", output)
        self.assertIn("รอตรวจโดยคน: 1 รายการ", output)
        self.assertIn("แหล่งข้อมูลเกินรอบตรวจ: 1 แห่ง", output)
        self.assertIn("ยังไม่มีการแก้ข้อเท็จจริง", output)
        self.assertIn("example-1-1", output)

    def test_multiline_and_pipe_text_cannot_break_review_table(self):
        report = {"unresolved_records": [{
            "record_type": "criteria", "code": "program|one\ntwo",
            "reasons": ["ตรวจเอกสาร | GPAX\r\n<script>"],
            "source_url": "https://example.ac.th/notice?a=1&b=2",
        }]}
        output = render_report(report)
        self.assertIn("program\\|one<br>two", output)
        self.assertIn("ตรวจเอกสาร \\| GPAX<br>&lt;script&gt;", output)
        self.assertNotIn("<script>", output)

    def test_reason_summary_counts_affected_records_once(self):
        output = render_report({"unresolved_records": [
            {"code": "one", "reasons": ["403", "403", "ต้องตรวจซ้ำ"]},
            {"code": "two", "reasons": ["403"]},
        ]})
        self.assertIn("| 403 | 2 |", output)
        self.assertIn("| ต้องตรวจซ้ำ | 1 |", output)
        self.assertIn("| project", render_report({"unresolved_records": [{"record_type": "project"}]}))


if __name__ == "__main__":
    unittest.main()
