import tempfile
import unittest
from pathlib import Path

from dataset_sync import (
    SYNC_MODE_INSERT_MISSING,
    SYNC_MODE_REVIEWED_UPSERT,
    classify_sync_status,
    local_sync_identity,
)


class DatasetSyncTests(unittest.TestCase):
    def test_local_identity_fingerprints_both_dataset_and_audit(self):
        with tempfile.TemporaryDirectory() as temp_dir:
            root = Path(temp_dir)
            dataset = root / "dataset.json"
            audit = root / "audit.json"
            dataset.write_text('{"academic_year": 2570}', encoding="utf-8")
            audit.write_text('{"sources": []}', encoding="utf-8")

            identity = local_sync_identity(dataset, audit)
            self.assertEqual(identity["academic_year"], 2570)
            self.assertEqual(len(identity["dataset_sha256"]), 64)
            self.assertEqual(len(identity["audit_sha256"]), 64)

    def test_unrecorded_database_is_not_mistaken_for_synced(self):
        result = classify_sync_status(
            {"academic_year": 2570, "dataset_sha256": "a" * 64, "audit_sha256": "b" * 64},
            None,
        )
        self.assertEqual(result["status"], "not_recorded")

    def test_insert_only_import_is_not_reported_as_full_sync(self):
        local = {"academic_year": 2570, "dataset_sha256": "a" * 64, "audit_sha256": "b" * 64}
        result = classify_sync_status(local, {**local, "sync_mode": SYNC_MODE_INSERT_MISSING})
        self.assertEqual(result["status"], "insert_only")

    def test_reviewed_upsert_requires_exact_dataset_and_audit_fingerprints(self):
        local = {"academic_year": 2570, "dataset_sha256": "a" * 64, "audit_sha256": "b" * 64}
        remote = {**local, "sync_mode": SYNC_MODE_REVIEWED_UPSERT}
        self.assertEqual(classify_sync_status(local, remote)["status"], "in_sync")
        remote["audit_sha256"] = "c" * 64
        self.assertEqual(classify_sync_status(local, remote)["status"], "out_of_sync")


if __name__ == "__main__":
    unittest.main()
