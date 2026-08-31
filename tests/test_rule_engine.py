import unittest

from rule_engine import (
    STATUS_FAIL,
    STATUS_NO_DATA,
    STATUS_PASS,
    STATUS_REVIEW,
    evaluate_application_rules,
    render_rule_checks,
)


PROGRAM = {
    "faculty_name": "คณะวิศวกรรมศาสตร์",
    "major_name": "วิศวกรรมคอมพิวเตอร์",
    "language": "ไทยและอังกฤษ",
    "universities": {"short_name": "CU"},
    "university_campuses": {"code": "main"},
}


class RuleEngineTests(unittest.TestCase):
    def project(self, criteria):
        return {"selected_criteria": criteria, "tuition_fee_per_semester": 30000}

    def test_gpax_and_language_can_pass_but_unresolved_rules_stay_visible(self):
        assessment = evaluate_application_rules(
            {
                "gpax": 3.20,
                "language": "thai",
                "budget": 40000,
                "location_budget": "กรุงเทพ",
            },
            PROGRAM,
            self.project({"min_gpax": 3.00}),
        )
        statuses = {item["key"]: item["status"] for item in assessment["checks"]}
        self.assertEqual(statuses["gpax"], STATUS_PASS)
        self.assertEqual(statuses["language"], STATUS_PASS)
        self.assertEqual(statuses["budget"], STATUS_PASS)
        self.assertEqual(statuses["location"], STATUS_PASS)
        self.assertIn(statuses["portfolio"], (STATUS_NO_DATA, STATUS_REVIEW))
        self.assertIn("[ผ่าน] GPAX", render_rule_checks(assessment))

    def test_failed_rule_is_explicit(self):
        assessment = evaluate_application_rules(
            {"gpax": 2.50, "language": "english"},
            PROGRAM,
            self.project({"min_gpax": 3.00}),
        )
        self.assertEqual(assessment["status"], "ไม่ผ่าน")
        self.assertIn("GPAX", assessment["blockers"][0])
        self.assertIn("[ไม่ผ่าน] GPAX", render_rule_checks(assessment))

    def test_subject_requirement_needs_manual_input(self):
        assessment = evaluate_application_rules(
            {"gpax": 3.20},
            PROGRAM,
            self.project({"min_gpax": 3.00, "subject_gpax": {"คณิตศาสตร์": 3.00}}),
        )
        subjects = next(item for item in assessment["checks"] if item["key"] == "subjects")
        self.assertEqual(subjects["status"], STATUS_REVIEW)
        self.assertIn("รายวิชา", subjects["reason"])

    def test_empty_criteria_is_no_data(self):
        assessment = evaluate_application_rules({}, PROGRAM, self.project({}))
        self.assertEqual(assessment["status"], "ไม่มีข้อมูล")
        self.assertTrue(all(item["status"] == STATUS_NO_DATA for item in assessment["checks"]))


if __name__ == "__main__":
    unittest.main()
