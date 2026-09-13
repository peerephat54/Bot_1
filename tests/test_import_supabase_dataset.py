import unittest

from scripts.import_supabase_dataset import (
    ImportCheckError,
    _import_report,
    load_import_bundle,
    strip_seed_transaction_wrappers,
    validate_connection_target,
    validate_project_ref,
)


class SupabaseDatasetImporterTests(unittest.TestCase):
    def test_local_dataset_and_source_audit_pass_before_connection(self):
        bundle = load_import_bundle()
        self.assertEqual(bundle["academic_year"], 2570)
        self.assertEqual(bundle["counts"]["projects"], 137)
        self.assertEqual(bundle["counts"]["university_calendars"], 8)
        self.assertEqual(len(bundle["university_codes"]), 9)
        self.assertIn("do nothing", bundle["insert_missing_sql"].lower())
        self.assertNotIn("do update set", bundle["insert_missing_sql"].lower())

    def test_import_report_separates_existing_rows_from_newly_added_rows(self):
        keys = (
            "universities", "campuses", "programs", "projects", "project_program_links",
            "criteria", "timeline_events", "university_calendars",
        )
        before = {key: 1 for key in keys}
        after = {key: 3 for key in keys}
        expected = {key: 3 for key in keys}

        report = _import_report(before, after, expected)

        self.assertEqual(report["projects"]["already_present"], 1)
        self.assertEqual(report["projects"]["added"], 2)
        self.assertEqual(report["projects"]["missing_after"], 0)

    def test_generated_seed_transaction_wrappers_are_removed_for_atomic_import(self):
        body = strip_seed_transaction_wrappers("-- header\nbegin;\nselect 1;\ncommit;\n")
        self.assertIn("select 1;", body)
        self.assertNotIn("begin;", body.lower())
        self.assertNotIn("commit;", body.lower())

    def test_rejects_incomplete_generated_seed(self):
        with self.assertRaises(ImportCheckError):
            strip_seed_transaction_wrappers("select 1;")

    def test_direct_connection_must_match_project_ref(self):
        ref = "a" * 20
        dsn = f"postgresql://postgres:NOT_A_REAL_PASSWORD@db.{ref}.supabase.co:5432/postgres"
        validate_connection_target(dsn, ref)
        with self.assertRaises(ImportCheckError):
            validate_connection_target(dsn, "b" * 20)

    def test_session_pooler_must_match_both_project_ref_and_username(self):
        ref = "c" * 20
        dsn = (
            f"postgresql://postgres.{ref}:NOT_A_REAL_PASSWORD@"
            "aws-0-ap-southeast-1.pooler.supabase.com:5432/postgres"
        )
        validate_connection_target(dsn, ref)
        with self.assertRaises(ImportCheckError):
            validate_connection_target(dsn.replace(ref, "d" * 20), ref)

    def test_rejects_invalid_project_ref_and_non_postgres_uri(self):
        with self.assertRaises(ImportCheckError):
            validate_project_ref("not-a-project")
        with self.assertRaises(ImportCheckError):
            validate_connection_target("https://example.com", "e" * 20)


if __name__ == "__main__":
    unittest.main()
