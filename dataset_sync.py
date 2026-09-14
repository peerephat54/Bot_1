"""Dataset sync fingerprints and truthful local/remote sync status."""

from __future__ import annotations

import hashlib
import json
from pathlib import Path


SYNC_MODE_INSERT_MISSING = "insert_missing"
SYNC_MODE_REVIEWED_UPSERT = "reviewed_upsert"


def file_sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with Path(path).open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def local_sync_identity(dataset_path: Path, audit_path: Path | None = None) -> dict:
    dataset_path = Path(dataset_path)
    audit_path = Path(audit_path) if audit_path else dataset_path.with_name("tcas70_source_audit.json")
    payload = json.loads(dataset_path.read_text(encoding="utf-8"))
    return {
        "academic_year": int(payload["academic_year"]),
        "dataset_sha256": file_sha256(dataset_path),
        "audit_sha256": file_sha256(audit_path),
    }


def classify_sync_status(local: dict, remote: dict | None) -> dict:
    """Describe sync evidence without equating row presence with data parity."""
    local_version = str(local.get("dataset_sha256") or "")[:10] or "ไม่ทราบ"
    if not remote:
        return {
            "status": "not_recorded",
            "local_version": local_version,
            "remote_version": None,
            "message": "ยังไม่มีบันทึกการซิงก์จากตัวนำเข้าที่ตรวจสอบได้",
        }

    remote_version = str(remote.get("dataset_sha256") or "")[:10] or "ไม่ทราบ"
    if remote.get("sync_mode") != SYNC_MODE_REVIEWED_UPSERT:
        return {
            "status": "insert_only",
            "local_version": local_version,
            "remote_version": remote_version,
            "message": "เคยเติมเฉพาะรายการที่ขาด แต่ยังไม่ยืนยันการอัปเดตรายการเดิม",
        }

    same_dataset = remote.get("dataset_sha256") == local.get("dataset_sha256")
    same_audit = remote.get("audit_sha256") == local.get("audit_sha256")
    same_year = remote.get("academic_year") == local.get("academic_year")
    if same_dataset and same_audit and same_year:
        return {
            "status": "in_sync",
            "local_version": local_version,
            "remote_version": remote_version,
            "message": "ตรงกับ dataset และ source audit ล่าสุดที่ซิงก์แบบผ่านการทบทวน",
        }
    return {
        "status": "out_of_sync",
        "local_version": local_version,
        "remote_version": remote_version,
        "message": "ไฟล์ในเครื่องเปลี่ยนหลังซิงก์ หรือฐานข้อมูลยังเป็นคนละชุด",
    }
