"""Build a provenance and freshness gate before publishing admissions data."""

from __future__ import annotations

import argparse
import hashlib
import json
import sys
from collections import Counter
from concurrent.futures import ThreadPoolExecutor, as_completed
from datetime import date, datetime, timezone
from pathlib import Path
from urllib.parse import urlsplit, urlunsplit

try:
    from scripts.check_official_sources import check_source, fetch_source
    from scripts.validate_dataset import OFFICIAL_HOSTS, validate, validate_source_audit
except ImportError:  # Running this file directly from the scripts directory.
    from check_official_sources import check_source, fetch_source
    from validate_dataset import OFFICIAL_HOSTS, validate, validate_source_audit


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_DATASET = ROOT / "datasets" / "tcas70_admissions.json"
DEFAULT_OUTPUT = ROOT / "tmp" / "import_truth_report.json"
MAX_REVIEW_AGE_DAYS = 7
APPROVED_FACT_CLASSIFICATIONS = {
    "imported_primary",
    "imported_primary_supporting",
    "verified_existing_primary",
    "used_primary_index",
}


def canonical_url(url: str | None) -> str:
    """Ignore PDF page fragments, but retain query strings that may identify a document."""
    parts = urlsplit(str(url or "").strip())
    return urlunsplit((parts.scheme.lower(), parts.netloc.lower(), parts.path, parts.query, ""))


def file_sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def _age_days(value: str | None, today: date) -> int | None:
    if not value:
        return None
    try:
        parsed = datetime.fromisoformat(str(value).replace("Z", "+00:00")).date()
    except ValueError:
        try:
            parsed = date.fromisoformat(str(value)[:10])
        except ValueError:
            return None
    return (today - parsed).days


def _host_is_official(url: str | None, university: str) -> bool:
    host = (urlsplit(str(url or "")).hostname or "").lower()
    return host in OFFICIAL_HOSTS.get(university, set())


def _record_check(
    *,
    record_type: str,
    code: str,
    university: str,
    url: str | None,
    checked_at: str | None,
    audit_by_url: dict,
    today: date,
) -> dict:
    reasons = []
    key = canonical_url(url)
    audit_entry = audit_by_url.get(key)

    if not url:
        reasons.append("ไม่มี URL หลักฐาน")
    elif not _host_is_official(url, university):
        reasons.append("URL ไม่อยู่ในรายชื่อโดเมนทางการของมหาวิทยาลัย")

    if url and not audit_entry:
        reasons.append("ไม่มีรายการ URL นี้ใน source audit จึงยังผูกหลักฐานกับข้อมูลไม่ได้")
    elif audit_entry:
        classification = audit_entry.get("classification")
        if not audit_entry.get("publisher"):
            reasons.append("source audit ไม่ระบุหน่วยงานเจ้าของแหล่งข้อมูล")
        if classification not in APPROVED_FACT_CLASSIFICATIONS:
            reasons.append(f"สถานะ source audit ยังไม่ยืนยันข้อมูลรับสมัคร ({classification})")
        if audit_entry.get("academic_year") != audit_entry.get("_expected_year"):
            reasons.append("ปีการศึกษาใน source audit ไม่ตรงกับ dataset")
        audit_age = _age_days(audit_entry.get("source_checked_at"), today)
        if audit_age is None:
            reasons.append("ไม่มีวันที่ตรวจ source audit ที่อ่านได้")
        elif audit_age < 0:
            reasons.append("วันที่ตรวจ source audit อยู่ในอนาคต")
        elif audit_age > MAX_REVIEW_AGE_DAYS:
            reasons.append(f"ยังไม่ได้ยืนยันเนื้อหาจากแหล่งนี้ใน {MAX_REVIEW_AGE_DAYS} วันล่าสุด")

    record_age = _age_days(checked_at, today)
    if record_age is None:
        reasons.append("รายการไม่มีวันที่ตรวจหลักฐาน")
    elif record_age < 0:
        reasons.append("วันที่ตรวจรายการอยู่ในอนาคต")
    elif record_age > MAX_REVIEW_AGE_DAYS:
        reasons.append(f"ข้อมูลรายการไม่ได้รับการตรวจซ้ำใน {MAX_REVIEW_AGE_DAYS} วันล่าสุด")

    return {
        "record_type": record_type,
        "code": code,
        "university": university,
        "source_url": url,
        "canonical_url": key,
        "status": "needs_review" if reasons else "pending_live_check",
        "reasons": reasons,
        "audit_entry": audit_entry,
    }


def assess_static_evidence(data: dict, audit: dict, *, today: date | None = None) -> dict:
    """Check provenance mapping, official domains, classifications, and review age."""
    today = today or date.today()
    audit_by_url = {
        canonical_url(item.get("url")): {**item, "_expected_year": data.get("academic_year")}
        for item in audit.get("sources", [])
        if item.get("url")
    }
    records = []

    for project in data.get("projects", []):
        records.append(_record_check(
            record_type="project",
            code=project.get("code", "(ไม่มีรหัส)"),
            university=project.get("university_short_name", ""),
            url=project.get("source_url"),
            checked_at=project.get("source_checked_at"),
            audit_by_url=audit_by_url,
            today=today,
        ))

    for calendar in data.get("university_admission_calendars", []):
        records.append(_record_check(
            record_type="university_calendar",
            code=calendar.get("code", "(ไม่มีรหัส)"),
            university=calendar.get("university_short_name", ""),
            url=calendar.get("source_url"),
            checked_at=calendar.get("source_checked_at"),
            audit_by_url=audit_by_url,
            today=today,
        ))

    programs = {item.get("code"): item for item in data.get("programs", [])}
    projects = {item.get("code"): item for item in data.get("projects", [])}
    for criterion in data.get("criteria", []):
        program = programs.get(criterion.get("program_code"), {})
        project = projects.get(criterion.get("project_code"), {})
        university = program.get("university_short_name") or project.get("university_short_name", "")
        source_url = criterion.get("official_announcement_url")
        audit_entry = audit_by_url.get(canonical_url(source_url), {})
        records.append(_record_check(
            record_type="criterion",
            code=f"{criterion.get('project_code', '?')} / {criterion.get('program_code', '?')}",
            university=university,
            url=source_url,
            checked_at=audit_entry.get("source_checked_at"),
            audit_by_url=audit_by_url,
            today=today,
        ))

    by_url = {}
    for item in audit.get("sources", []):
        if item.get("url"):
            by_url[canonical_url(item["url"])] = item
    for record in records:
        if record["status"] == "needs_review":
            continue
        source = by_url.get(record["canonical_url"])
        if source:
            record["status"] = "pending_live_check"
        else:
            record["status"] = "needs_review"

    errors, _ = validate(data)
    audit_errors, _ = validate_source_audit(audit)
    return {
        "records": records,
        "dataset_errors": errors,
        "audit_errors": audit_errors,
        "status_counts": dict(Counter(item["status"] for item in records)),
    }


def _load_previous_report() -> dict | None:
    # Never treat the output of a previous verification run as an approval.
    # Compare only against separate, pre-existing source-monitor snapshots.
    candidates = list((ROOT / "tmp").glob("source_monitor_report*.json"))
    candidates.extend((ROOT / "tmp").glob("source-monitor-report*.json"))
    candidates.extend((ROOT / "tmp").glob("source-monitor-*.json"))

    reports = []
    for path in candidates:
        if not path.is_file():
            continue
        try:
            payload = json.loads(path.read_text(encoding="utf-8"))
        except (OSError, json.JSONDecodeError):
            continue
        monitor = payload.get("source_monitor") or payload
        if monitor.get("results"):
            reports.append((str(monitor.get("checked_at", "")), monitor))
    return max(reports, key=lambda item: item[0])[1] if reports else None


def _reviewed_after_baseline(source_checked_at: str | None, baseline_checked_at: str | None) -> bool:
    """A fresh source-audit timestamp can clear a hash delta only when newer than its baseline."""
    if not source_checked_at or not baseline_checked_at:
        return False
    try:
        source_time = datetime.fromisoformat(str(source_checked_at).replace("Z", "+00:00"))
        baseline_time = datetime.fromisoformat(str(baseline_checked_at).replace("Z", "+00:00"))
    except ValueError:
        return False
    if source_time.tzinfo is None:
        # A date-only audit entry has no time-of-day approval evidence.
        if len(str(source_checked_at).strip()) <= 10:
            source_time = datetime.combine(source_time.date(), datetime.min.time(), tzinfo=timezone.utc)
        else:
            source_time = source_time.replace(tzinfo=timezone.utc)
    if baseline_time.tzinfo is None:
        baseline_time = baseline_time.replace(tzinfo=timezone.utc)
    return source_time.astimezone(timezone.utc) > baseline_time.astimezone(timezone.utc)


def _used_fact_sources(data: dict, audit: dict) -> list[dict]:
    used = {
        canonical_url(item.get("source_url"))
        for item in data.get("projects", [])
        if item.get("source_url")
    }
    used.update(
        canonical_url(item.get("source_url"))
        for item in data.get("university_admission_calendars", [])
        if item.get("source_url")
    )
    used.update(
        canonical_url(item.get("official_announcement_url"))
        for item in data.get("criteria", [])
        if item.get("official_announcement_url")
    )
    audit_by_url = {canonical_url(item.get("url")): item for item in audit.get("sources", [])}
    return [audit_by_url[key] for key in sorted(used) if key in audit_by_url]


def _live_source_report(
    sources: list[dict],
    *,
    previous_report: dict | None,
    timeout: int,
    workers: int,
) -> dict:
    try:
        import truststore

        truststore.inject_into_ssl()
    except ImportError:
        pass

    results: list[dict | None] = [None] * len(sources)
    fetcher = lambda url: fetch_source(url, timeout=timeout)
    with ThreadPoolExecutor(max_workers=workers) as pool:
        future_to_index = {
            pool.submit(check_source, source, fetcher=fetcher, stale_after_days=MAX_REVIEW_AGE_DAYS): index
            for index, source in enumerate(sources)
        }
        for future in as_completed(future_to_index):
            index = future_to_index[future]
            try:
                results[index] = future.result()
            except Exception as error:
                results[index] = {
                    "url": sources[index].get("url"),
                    "status": "checker_error",
                    "error_type": type(error).__name__,
                }

    previous_by_url = {
        canonical_url(item.get("url")): item
        for item in (previous_report or {}).get("results", [])
        if item.get("url")
    }
    baseline_checked_at = (previous_report or {}).get("checked_at")
    finalized = []
    for result in results:
        result = result or {"status": "checker_error"}
        previous = previous_by_url.get(canonical_url(result.get("url")), {})
        old_hash = previous.get("sha256")
        new_hash = result.get("sha256")
        reviewed_after_baseline = _reviewed_after_baseline(
            result.get("source_checked_at"), baseline_checked_at
        )
        result["previous_sha256"] = old_hash
        result["reviewed_after_baseline"] = reviewed_after_baseline
        result["changed"] = bool(old_hash and new_hash and old_hash != new_hash and not reviewed_after_baseline)
        result["baseline_missing"] = not bool(old_hash) and not reviewed_after_baseline
        finalized.append(result)

    return {
        "checked_at": datetime.now(timezone.utc).astimezone().isoformat(timespec="seconds"),
        "source_count": len(finalized),
        "ok_count": sum(item.get("status") == "ok" for item in finalized),
        "error_count": sum(item.get("status") != "ok" for item in finalized),
        "stale_count": sum(bool(item.get("stale")) for item in finalized),
        "changed_count": sum(bool(item.get("changed")) for item in finalized),
        "baseline_missing_count": sum(bool(item.get("baseline_missing")) for item in finalized),
        "results": finalized,
        "policy": "A changed or newly observed source must be reviewed before import.",
    }


def build_truth_report(
    dataset_path: Path = DEFAULT_DATASET,
    *,
    output_path: Path = DEFAULT_OUTPUT,
    timeout: int = 8,
    workers: int = 8,
    static_only: bool = False,
) -> dict:
    dataset_path = dataset_path.resolve()
    audit_path = dataset_path.with_name("tcas70_source_audit.json")
    data = json.loads(dataset_path.read_text(encoding="utf-8"))
    audit = json.loads(audit_path.read_text(encoding="utf-8"))
    static = assess_static_evidence(data, audit)
    previous = _load_previous_report()
    sources = _used_fact_sources(data, audit)
    live = None if static_only else _live_source_report(
        sources,
        previous_report=previous,
        timeout=timeout,
        workers=workers,
    )

    live_by_url = {
        canonical_url(item.get("url")): item
        for item in (live or {}).get("results", [])
    }
    now = datetime.now(timezone.utc).astimezone()
    unresolved_records = []
    for record in static["records"]:
        reasons = list(record["reasons"])
        result = live_by_url.get(record["canonical_url"])
        if static_only:
            record["status"] = "needs_review" if reasons else "pending_live_check"
        elif not result:
            reasons.append("URL นี้ไม่มีผลตรวจสด")
        else:
            if result.get("status") != "ok":
                reasons.append(f"เปิด URL ไม่สำเร็จ ({result.get('http_status') or result.get('status')})")
            if result.get("stale"):
                reasons.append("วันที่ยืนยันแหล่งข้อมูลเกินกำหนดตรวจซ้ำ")
            if result.get("changed"):
                reasons.append("เนื้อหาแหล่งข้อมูลเปลี่ยนจากรายงานก่อนหน้า ต้องตรวจด้วยคน")
            if result.get("baseline_missing"):
                reasons.append("ยังไม่มี hash ก่อนหน้าไว้เทียบ ต้องตรวจและตั้งต้นหลักฐานก่อน")
            final_url = result.get("final_url")
            if final_url and not _host_is_official(final_url, record["university"]):
                reasons.append("URL เปลี่ยนทางออกนอกโดเมนทางการที่อนุมัติ")
        if not static_only:
            record["status"] = "automated_checks_passed" if not reasons else "needs_review"
        record["reasons"] = reasons
        if record["status"] != "automated_checks_passed":
            unresolved_records.append(record)

    ready = bool(live is not None) and not static["dataset_errors"] and not static["audit_errors"] and not unresolved_records
    report = {
        "schema_version": 1,
        "generated_at": now.isoformat(timespec="seconds"),
        "status": "ready" if ready else "needs_review",
        "academic_year": data.get("academic_year"),
        "dataset_path": str(dataset_path),
        "dataset_sha256": file_sha256(dataset_path),
        "audit_sha256": file_sha256(audit_path),
        "max_review_age_days": MAX_REVIEW_AGE_DAYS,
        "static_validation_errors": static["dataset_errors"],
        "source_audit_errors": static["audit_errors"],
        "source_monitor": live,
        "record_status_counts": dict(Counter(item["status"] for item in static["records"])),
        "unresolved_records": unresolved_records,
        "limitations": (
            "Automated checks verify provenance, official domains, freshness, link health, and source changes. "
            "They cannot prove that each value semantically matches the announcement; a person must review "
            "new/changed sources and confirm admission facts before approval."
        ),
    }
    output_path.parent.mkdir(parents=True, exist_ok=True)
    output_path.write_text(json.dumps(report, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    return report


def require_ready_report(
    report_path: Path,
    dataset_path: Path,
    audit_path: Path,
    *,
    max_age_hours: int = 24,
) -> dict:
    if not report_path.is_file():
        raise ValueError(f"evidence report is missing: {report_path}")
    report = json.loads(report_path.read_text(encoding="utf-8"))
    if report.get("status") != "ready":
        raise ValueError("evidence report is not ready; resolve the review list before importing")
    if report.get("dataset_sha256") != file_sha256(dataset_path):
        raise ValueError("dataset changed after evidence verification; verify again")
    if report.get("audit_sha256") != file_sha256(audit_path):
        raise ValueError("source audit changed after evidence verification; verify again")
    generated = datetime.fromisoformat(str(report.get("generated_at", "")).replace("Z", "+00:00"))
    if generated.tzinfo is None:
        raise ValueError("evidence report timestamp has no timezone")
    age_seconds = (datetime.now(timezone.utc) - generated.astimezone(timezone.utc)).total_seconds()
    if age_seconds < 0 or age_seconds > max_age_hours * 3600:
        raise ValueError("evidence report is expired or has a future timestamp; verify again")
    if report.get("static_validation_errors") or report.get("source_audit_errors"):
        raise ValueError("dataset or source audit has validation errors")
    monitor = report.get("source_monitor") or {}
    if (
        not monitor
        or monitor.get("source_count", 0) == 0
        or monitor.get("ok_count") != monitor.get("source_count")
        or monitor.get("error_count", 0)
        or monitor.get("stale_count", 0)
        or monitor.get("changed_count", 0)
        or monitor.get("baseline_missing_count", 0)
    ):
        raise ValueError("live source checks are incomplete, stale, changed, or unreachable")
    data = json.loads(dataset_path.read_text(encoding="utf-8"))
    audit = json.loads(audit_path.read_text(encoding="utf-8"))
    static = assess_static_evidence(data, audit)
    if static["dataset_errors"] or static["audit_errors"]:
        raise ValueError("dataset or source audit no longer passes validation")
    if any(item["status"] != "pending_live_check" for item in static["records"]):
        raise ValueError("static provenance/freshness checks now require review; verify again")
    expected_urls = {canonical_url(source.get("url")) for source in _used_fact_sources(data, audit)}
    monitored_urls = {canonical_url(item.get("url")) for item in monitor.get("results", [])}
    if not expected_urls or monitored_urls != expected_urls:
        raise ValueError("the evidence report does not cover every current fact source")
    if any(
        not item.get("sha256")
        or item.get("status") != "ok"
        or item.get("stale")
        or item.get("changed")
        or item.get("baseline_missing")
        for item in monitor.get("results", [])
    ):
        raise ValueError("one or more sources have no stable, current verification")
    status_counts = report.get("record_status_counts", {})
    if (
        status_counts.get("needs_review", 0)
        or status_counts.get("pending_live_check", 0)
        or status_counts.get("automated_checks_passed", 0) != len(static["records"])
        or report.get("unresolved_records")
    ):
        raise ValueError("some admissions records still need evidence review")
    return report


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--dataset", type=Path, default=DEFAULT_DATASET)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    parser.add_argument("--timeout", type=int, default=8)
    parser.add_argument("--workers", type=int, default=8)
    parser.add_argument("--static-only", action="store_true", help="Skip live URL checks; report cannot authorize import")
    args = parser.parse_args(argv)

    for stream in (sys.stdout, sys.stderr):
        if hasattr(stream, "reconfigure"):
            stream.reconfigure(encoding="utf-8", errors="replace")

    try:
        report = build_truth_report(
            args.dataset,
            output_path=args.output,
            timeout=args.timeout,
            workers=args.workers,
            static_only=args.static_only,
        )
    except (OSError, json.JSONDecodeError, ValueError) as error:
        print(f"Verification could not finish: {error}", file=sys.stderr)
        return 1

    print(f"Evidence gate: {report['status']} | TCAS{report['academic_year']}")
    print(f"Record checks: {report['record_status_counts']}")
    if report["source_monitor"]:
        monitor = report["source_monitor"]
        print(
            "Live sources: "
            f"{monitor['source_count']} checked, {monitor['ok_count']} reachable, "
            f"{monitor['error_count']} errors, {monitor['stale_count']} stale, "
            f"{monitor['changed_count']} changed, {monitor['baseline_missing_count']} without baseline"
        )
    if report["unresolved_records"]:
        print(f"Needs human review: {len(report['unresolved_records'])} records")
        for item in report["unresolved_records"][:8]:
            reason_text = "; ".join(item["reasons"]) or "รอตรวจ URL สด"
            print(f"- {item['record_type']} {item['code']}: {reason_text}")
        if len(report["unresolved_records"]) > 8:
            print(f"- See full list in {args.output}")
    print(f"Report saved: {args.output}")
    if report["status"] != "ready":
        print("Import must wait until the report is ready and changed facts have been checked by a person.")
        return 2
    print("Evidence gate passed. The report is bound to these exact dataset and audit files.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
