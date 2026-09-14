"""Validate and safely import the current TCAS dataset into Supabase Postgres."""

from __future__ import annotations

import argparse
import getpass
import json
import re
import sys
from pathlib import Path
from urllib.parse import unquote, urlsplit

# `python scripts/import_supabase_dataset.py` sets sys.path to scripts/ only.
# Put the project root first so both package and direct-script execution work.
PROJECT_ROOT = Path(__file__).resolve().parents[1]
if str(PROJECT_ROOT) not in sys.path:
    sys.path.insert(0, str(PROJECT_ROOT))

try:
    from dataset_sync import (
        SYNC_MODE_INSERT_MISSING,
        SYNC_MODE_REVIEWED_UPSERT,
        file_sha256,
    )
    from scripts.generate_seed_sql import generate
    from scripts.validate_dataset import validate, validate_source_audit
    from scripts.verify_import_truth import require_ready_report
except ImportError:  # Running this file directly from the scripts directory.
    from dataset_sync import (
        SYNC_MODE_INSERT_MISSING,
        SYNC_MODE_REVIEWED_UPSERT,
        file_sha256,
    )
    from generate_seed_sql import generate
    from validate_dataset import validate, validate_source_audit
    from verify_import_truth import require_ready_report


ROOT = Path(__file__).resolve().parents[1]
DEFAULT_DATASET = ROOT / "datasets" / "tcas70_admissions.json"
MIGRATION_PATH = ROOT / "supabase_admission_calendar_migration.sql"
SYNC_MANIFEST_MIGRATION_PATH = ROOT / "migrate_dataset_sync_manifest.sql"
GENERATED_SEED_PATH = ROOT / "seed_tcas70.sql"
APPLICATION_NAME = "tcas70_dataset_import"

CORE_REQUIRED_COLUMNS = {
    "universities": {"id", "name", "short_name", "logo_url"},
    "university_campuses": {
        "id", "university_id", "code", "name", "is_main", "official_url", "updated_at"
    },
    "faculties_and_majors": {
        "id", "university_id", "campus_id", "code", "faculty_name", "major_name",
        "tcas_round", "academic_year", "program_type", "language", "curriculum_credits",
        "curriculum_year", "duration_years", "official_program_url", "admission_previews",
        "data_status", "updated_at",
    },
    "admission_projects": {
        "id", "university_id", "code", "group_code", "name", "academic_year", "tcas_round",
        "round_label", "round_variant", "application_type", "publication_status", "is_visible",
        "selection_order_limit", "application_fee", "tuition_fee_per_semester", "source_url",
        "source_title", "source_published_at", "source_checked_at", "data_notes", "updated_at",
    },
    "admission_project_programs": {
        "project_id", "program_id", "slots_available", "program_notes"
    },
    "admission_criteria": {
        "project_id", "faculty_id", "min_gpax", "gpax_requirements", "subject_gpax",
        "min_english_score", "standardized_scores", "applicant_qualifications",
        "portfolio_requirements", "portfolio_details", "accepted_achievements",
        "required_documents", "selection_methods", "additional_requirements", "criteria_summary",
        "official_announcement_url", "updated_at",
    },
    "admission_timeline": {
        "project_id", "event_name", "start_on", "end_on", "date_display", "date_status", "updated_at"
    },
}

IMPORT_COUNT_KEYS = (
    "universities",
    "campuses",
    "programs",
    "projects",
    "project_program_links",
    "criteria",
    "timeline_events",
    "university_calendars",
)


class ImportCheckError(Exception):
    """Raised when a local or remote preflight check fails."""


def load_import_bundle(dataset_path: Path = DEFAULT_DATASET) -> dict:
    """Validate the dataset and audit, and generate the SQL that will be applied."""
    dataset_path = dataset_path.resolve()
    data = json.loads(dataset_path.read_text(encoding="utf-8"))
    errors, counts = validate(data)

    audit_path = dataset_path.with_name("tcas70_source_audit.json")
    if not audit_path.exists():
        errors.append(f"source audit file is missing: {audit_path.name}")
    else:
        audit = json.loads(audit_path.read_text(encoding="utf-8"))
        audit_errors, _ = validate_source_audit(audit)
        errors.extend(audit_errors)
        if audit.get("academic_year") != data.get("academic_year"):
            errors.append("source audit academic year does not match the dataset")

    if not MIGRATION_PATH.is_file():
        errors.append(f"calendar migration is missing: {MIGRATION_PATH.name}")
    if not SYNC_MANIFEST_MIGRATION_PATH.is_file():
        errors.append(f"sync manifest migration is missing: {SYNC_MANIFEST_MIGRATION_PATH.name}")

    sql = generate(data)
    if GENERATED_SEED_PATH.is_file():
        checked_in_sql = GENERATED_SEED_PATH.read_text(encoding="utf-8")
        if checked_in_sql != sql:
            errors.append("seed_tcas70.sql is out of date; regenerate it before importing")
    else:
        errors.append(f"generated seed is missing: {GENERATED_SEED_PATH.name}")

    if errors:
        raise ImportCheckError("\n- " + "\n- ".join(errors))

    return {
        "data": data,
        "counts": counts,
        "academic_year": data["academic_year"],
        "university_codes": [item["short_name"] for item in data["universities"]],
        "sql": sql,
        "insert_missing_sql": generate(data, update_existing=False),
        "migration_sql": MIGRATION_PATH.read_text(encoding="utf-8"),
        "sync_manifest_migration_sql": SYNC_MANIFEST_MIGRATION_PATH.read_text(encoding="utf-8"),
        "dataset_sha256": file_sha256(dataset_path),
        "audit_sha256": file_sha256(audit_path),
        "dataset_path": dataset_path,
        "audit_path": audit_path,
    }


def expected_database_counts(counts: dict) -> dict:
    key_map = {
        "project_program_links": "project_program_links",
        "criteria": "criteria",
        "timeline_events": "timeline_events",
        "university_calendars": "university_calendars",
    }
    return {
        "universities": counts["universities"],
        "campuses": counts["campuses"],
        "programs": counts["programs"],
        "projects": counts["projects"],
        **{key: counts[source] for key, source in key_map.items()},
    }


def validate_project_ref(project_ref: str) -> None:
    if not re.fullmatch(r"[a-z0-9]{20}", project_ref or ""):
        raise ImportCheckError("project ref must be the 20-character ID shown in Supabase project settings")


def validate_connection_target(connection_string: str, project_ref: str) -> None:
    """Require a Supabase direct or session-pooler URL matching the chosen project."""
    validate_project_ref(project_ref)
    parsed = urlsplit(connection_string.strip())
    if parsed.scheme not in {"postgres", "postgresql"} or not parsed.hostname:
        raise ImportCheckError("the hidden input must be a PostgreSQL connection string from Supabase Connect")

    host = parsed.hostname.lower()
    username = unquote(parsed.username or "")
    direct_match = host == f"db.{project_ref}.supabase.co"
    pooler_match = host.endswith(".pooler.supabase.com") and username == f"postgres.{project_ref}"
    if not (direct_match or pooler_match):
        raise ImportCheckError(
            "connection details do not match the supplied project ref; nothing was written"
        )


def strip_seed_transaction_wrappers(sql: str) -> str:
    sql, begin_count = re.subn(r"(?im)^\s*begin;\s*", "", sql, count=1)
    sql, commit_count = re.subn(r"(?im)^\s*commit;\s*$", "", sql, count=1)
    if begin_count != 1 or commit_count != 1:
        raise ImportCheckError("generated seed does not have the expected transaction wrapper")
    return sql


def _connect(connection_string: str):
    try:
        import psycopg
        from psycopg.conninfo import conninfo_to_dict, make_conninfo
    except ImportError as error:
        raise ImportCheckError(
            "PostgreSQL driver is not installed; install requirements-supabase-import.txt first"
        ) from error

    options = conninfo_to_dict(connection_string)
    if options.get("sslmode") not in {"require", "verify-ca", "verify-full"}:
        options["sslmode"] = "require"
    options["connect_timeout"] = "12"
    options["application_name"] = APPLICATION_NAME
    conninfo = make_conninfo(**options)
    # Keep isolated checks outside a transaction; writes explicitly use one
    # transaction block so the migration and seed commit or roll back together.
    return psycopg.connect(conninfo, autocommit=True)


def _missing_schema_columns(connection) -> list[str]:
    tables = list(CORE_REQUIRED_COLUMNS)
    rows = connection.execute(
        """select table_name, column_name
           from information_schema.columns
           where table_schema = 'public' and table_name = any(%s)""",
        (tables,),
    ).fetchall()
    found = {}
    for table_name, column_name in rows:
        found.setdefault(table_name, set()).add(column_name)
    missing = []
    for table_name, columns in CORE_REQUIRED_COLUMNS.items():
        missing.extend(
            f"{table_name}.{column}" for column in sorted(columns - found.get(table_name, set()))
        )
    return missing


def _presence_counts(connection, bundle: dict) -> dict:
    """Count dataset natural keys already present, ignoring unrelated database rows."""
    data = bundle["data"]

    def count(sql: str, params: tuple) -> int:
        return int(connection.execute(sql, params).fetchone()[0])

    calendars_table_exists = connection.execute(
        "select to_regclass('public.university_admission_calendars') is not null"
    ).fetchone()[0]

    universities = data["universities"]
    campuses = data["campuses"]
    programs = data["programs"]
    projects = data["projects"]
    project_programs = data["project_programs"]
    criteria = data["criteria"]
    timeline = data["timeline"]
    calendars = data.get("university_admission_calendars", [])

    return {
        "universities": count(
            """select count(*) from unnest(%s::text[]) expected(short_name)
               where exists (select 1 from public.universities u
                             where u.short_name = expected.short_name)""",
            ([item["short_name"] for item in universities],),
        ),
        "campuses": count(
            """select count(*) from unnest(%s::text[], %s::text[]) expected(university_short_name, code)
               where exists (
                   select 1 from public.universities u
                   join public.university_campuses c on c.university_id = u.id
                   where u.short_name = expected.university_short_name and c.code = expected.code
               )""",
            (
                [item["university_short_name"] for item in campuses],
                [item["code"] for item in campuses],
            ),
        ),
        "programs": count(
            """select count(*) from unnest(%s::text[]) expected(code)
               where exists (select 1 from public.faculties_and_majors m
                             where m.code = expected.code)""",
            ([item["code"] for item in programs],),
        ),
        "projects": count(
            """select count(*) from unnest(%s::text[]) expected(code)
               where exists (select 1 from public.admission_projects p
                             where p.code = expected.code)""",
            ([item["code"] for item in projects],),
        ),
        "project_program_links": count(
            """select count(*) from unnest(%s::text[], %s::text[]) expected(project_code, program_code)
               where exists (
                   select 1 from public.admission_projects p
                   join public.faculties_and_majors m on m.code = expected.program_code
                   join public.admission_project_programs link
                     on link.project_id = p.id and link.program_id = m.id
                   where p.code = expected.project_code
               )""",
            (
                [item["project_code"] for item in project_programs],
                [item["program_code"] for item in project_programs],
            ),
        ),
        "criteria": count(
            """select count(*) from unnest(%s::text[], %s::text[]) expected(project_code, program_code)
               where exists (
                   select 1 from public.admission_projects p
                   join public.faculties_and_majors m on m.code = expected.program_code
                   join public.admission_criteria c
                     on c.project_id = p.id and c.faculty_id = m.id
                   where p.code = expected.project_code
               )""",
            (
                [item["project_code"] for item in criteria],
                [item["program_code"] for item in criteria],
            ),
        ),
        "timeline_events": count(
            """select count(*) from unnest(%s::text[], %s::text[]) expected(project_code, event_name)
               where exists (
                   select 1 from public.admission_projects p
                   join public.admission_timeline t on t.project_id = p.id
                   where p.code = expected.project_code and t.event_name = expected.event_name
               )""",
            (
                [item["project_code"] for item in timeline],
                [item["event_name"] for item in timeline],
            ),
        ),
        "university_calendars": count(
            """select count(*) from unnest(%s::text[]) expected(code)
               where exists (select 1 from public.university_admission_calendars c
                             where c.code = expected.code)""",
            ([item["code"] for item in calendars],),
        ) if calendars_table_exists else 0,
    }


def _import_report(before: dict, after: dict, expected: dict) -> dict:
    return {
        key: {
            "expected": expected[key],
            "already_present": before[key],
            "added": max(0, after[key] - before[key]),
            "present_after": after[key],
            "missing_after": max(0, expected[key] - after[key]),
        }
        for key in IMPORT_COUNT_KEYS
    }


def _verify_database_presence(connection, bundle: dict, before: dict) -> dict:
    after = _presence_counts(connection, bundle)
    expected = expected_database_counts(bundle["counts"])
    missing = [f"{key}: {after[key]} of {expected[key]} present" for key in IMPORT_COUNT_KEYS
               if after[key] < expected[key]]
    if missing:
        raise ImportCheckError(
            "post-import verification found missing dataset records; transaction will be rolled back:\n- "
            + "\n- ".join(missing)
        )
    return _import_report(before, after, expected)


def _record_sync_manifest(connection, bundle: dict, report: dict, sync_mode: str) -> None:
    """Store sync provenance in the same transaction as the dataset write."""
    connection.execute(
        """insert into public.dataset_sync_manifest (
               academic_year, dataset_sha256, audit_sha256, sync_mode, record_counts, synced_at
           ) values (%s, %s, %s, %s, %s::jsonb, now())
           on conflict (academic_year) do update set
               dataset_sha256 = excluded.dataset_sha256,
               audit_sha256 = excluded.audit_sha256,
               sync_mode = excluded.sync_mode,
               record_counts = excluded.record_counts,
               synced_at = excluded.synced_at""",
        (
            bundle["academic_year"],
            bundle["dataset_sha256"],
            bundle["audit_sha256"],
            sync_mode,
            json.dumps(report, ensure_ascii=False, separators=(",", ":")),
        ),
    )


def print_dataset_summary(bundle: dict) -> None:
    counts = bundle["counts"]
    print(f"Dataset structure/consistency validation: PASSED (TCAS{bundle['academic_year']})")
    print(f"Source audit format: PASSED | SQL matches {GENERATED_SEED_PATH.name}")
    print(
        "Dataset records to check: "
        f"{counts['universities']} universities, {counts['campuses']} campuses, "
        f"{counts['programs']} programs, {counts['projects']} projects, "
        f"{counts['project_program_links']} project-program links, {counts['criteria']} criteria, "
        f"{counts['timeline_events']} timeline events, "
        f"{counts['university_calendars']} admission calendars"
    )
    print("Default import mode: insert only missing records; existing records are left unchanged.")
    print("Reviewed sync mode: update matching rows only after every evidence check passes.")


def check_connection(project_ref: str) -> None:
    connection_string = getpass.getpass("Paste Supabase PostgreSQL URI (hidden): ").strip()
    validate_connection_target(connection_string, project_ref)
    try:
        with _connect(connection_string) as connection:
            with connection.transaction():
                connection.execute("SET TRANSACTION READ ONLY")
                missing = _missing_schema_columns(connection)
                if missing:
                    raise ImportCheckError(
                        "database schema is incomplete; missing: " + ", ".join(missing)
                    )
                connection.execute("select current_database(), current_user").fetchone()
        print(f"Connection and target check: PASSED ({project_ref}); database was not changed.")
        print(
            "Core tables and columns are ready. The importer will install the calendar and sync-manifest "
            "tables during apply."
        )
    except ImportCheckError:
        raise
    except Exception as error:  # Do not print the exception: drivers may include connection details.
        raise ImportCheckError(
            f"Supabase connection failed ({type(error).__name__}); connection details were not displayed"
        ) from None


def apply_import(project_ref: str, bundle: dict, *, update_reviewed: bool = False) -> dict:
    connection_string = getpass.getpass("Paste Supabase PostgreSQL URI (hidden): ").strip()
    validate_connection_target(connection_string, project_ref)
    try:
        with _connect(connection_string) as connection:
            missing = _missing_schema_columns(connection)
            if missing:
                raise ImportCheckError(
                    "database schema is incomplete; missing: " + ", ".join(missing)
                )

            before = _presence_counts(connection, bundle)
            expected = expected_database_counts(bundle["counts"])
            print(f"Target verified: Supabase project {project_ref}")
            print("The import runs in one transaction. Any SQL or count error rolls everything back.")
            print(
                "Reviewed sync will update matching rows; insert-only mode will leave them unchanged:"
                if update_reviewed
                else "Existing dataset keys found; only the remainder will be added:"
            )
            for key in IMPORT_COUNT_KEYS:
                print(f"  {key}: {before[key]} already present, {expected[key] - before[key]} to add")
            confirmation_phrase = (
                f"SYNC-VERIFIED {project_ref}" if update_reviewed else f"APPLY {project_ref}"
            )
            confirmation = input(f"Type {confirmation_phrase} to write these records: ").strip()
            if confirmation != confirmation_phrase:
                print("Cancelled; database was not changed.")
                return {}

            migration_sql = bundle["migration_sql"]
            seed_key = "sql" if update_reviewed else "insert_missing_sql"
            seed_sql = strip_seed_transaction_wrappers(bundle[seed_key])
            with connection.transaction():
                # Recheck under the write transaction so concurrent imports remain safe.
                transaction_before = _presence_counts(connection, bundle)
                connection.execute(
                    migration_sql + "\n" + bundle["sync_manifest_migration_sql"] + "\n" + seed_sql
                )
                actual = _verify_database_presence(connection, bundle, transaction_before)
                _record_sync_manifest(
                    connection,
                    bundle,
                    actual,
                    SYNC_MODE_REVIEWED_UPSERT if update_reviewed else SYNC_MODE_INSERT_MISSING,
                )
            return actual
    except ImportCheckError:
        raise
    except Exception as error:  # Do not print the exception: it could disclose connection details.
        raise ImportCheckError(
            f"Import failed ({type(error).__name__}); transaction rolled back and details were hidden"
        ) from None


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(
        description="Validate the TCAS dataset, then optionally check or update Supabase."
    )
    mode = parser.add_mutually_exclusive_group()
    mode.add_argument("--check-connection", action="store_true", help="Connect read-only and check the existing schema")
    mode.add_argument("--apply", action="store_true", help="Insert only missing validated records after typed confirmation")
    mode.add_argument(
        "--apply-reviewed",
        action="store_true",
        help="Upsert reviewed dataset records; requires a fresh, fully passing evidence report",
    )
    parser.add_argument("--project-ref", help="20-character Supabase project ref; never a password")
    parser.add_argument(
        "--evidence-report",
        type=Path,
        default=ROOT / "tmp" / "import_truth_report.json",
        help="Fresh passing report created by scripts/verify_import_truth.py",
    )
    parser.add_argument("--dataset", type=Path, default=DEFAULT_DATASET, help="Dataset JSON path")
    args = parser.parse_args(argv)

    try:
        bundle = load_import_bundle(args.dataset)
        print_dataset_summary(bundle)
        if not args.check_connection and not args.apply and not args.apply_reviewed:
            print("Dry run only: no Supabase connection was opened and no data was changed.")
            print("These checks do not prove admission facts; run scripts/verify_import_truth.py before importing.")
            print("Next: run with --check-connection --project-ref YOUR_PROJECT_REF.")
            return 0

        if not args.project_ref:
            raise ImportCheckError("--project-ref is required for a connection or import")
        validate_project_ref(args.project_ref)

        if args.check_connection:
            check_connection(args.project_ref)
            return 0

        try:
            report = require_ready_report(
                args.evidence_report,
                bundle["dataset_path"],
                bundle["dataset_path"].with_name("tcas70_source_audit.json"),
            )
        except (OSError, json.JSONDecodeError, ValueError) as error:
            raise ImportCheckError(f"evidence gate stopped the import: {error}") from None
        print(
            "Evidence gate: PASSED "
            f"({report['record_status_counts'].get('automated_checks_passed', 0)} records; "
            "exact dataset and audit fingerprints match)"
        )
        actual = apply_import(args.project_ref, bundle, update_reviewed=args.apply_reviewed)
        if actual:
            print("Import and database count verification: PASSED")
            print(
                "Import summary (reviewed existing rows were updated):"
                if args.apply_reviewed
                else "Import summary (existing rows were not modified):"
            )
            print(json.dumps(actual, ensure_ascii=False, indent=2))
        return 0
    except (ImportCheckError, OSError, json.JSONDecodeError) as error:
        print(f"Stopped safely: {error}", file=sys.stderr)
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
