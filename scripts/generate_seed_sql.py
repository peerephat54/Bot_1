import json
import sys
from pathlib import Path

try:
    from .validate_dataset import validate
except ImportError:  # Running this module as a standalone script.
    from validate_dataset import validate


def sql_text(value):
    if value is None:
        return "null"
    return "'" + str(value).replace("'", "''") + "'"


def sql_value(value, jsonb=False):
    if jsonb:
        return sql_text(json.dumps(value, ensure_ascii=False, separators=(",", ":"))) + "::jsonb"
    if value is None:
        return "null"
    if isinstance(value, bool):
        return "true" if value else "false"
    if isinstance(value, (int, float)):
        return str(value)
    return sql_text(value)


def upsert_assignments(columns):
    return ",\n        ".join(f"{column} = excluded.{column}" for column in columns)


def conflict_clause(target, update_existing, assignments, indent=8):
    if not update_existing:
        return f"on conflict ({target}) do nothing"
    body = "\n".join(" " * indent + line.strip() for line in assignments.splitlines())
    return f"on conflict ({target}) do update set\n{body}"


def generate(data, *, update_existing=True):
    statements = [
        "-- Generated from datasets/tcas70_admissions.json",
        "-- Run supabase_schema.sql before this file.",
        "begin;",
    ]

    for item in data["universities"]:
        if update_existing:
            university_insert = "values ({name}, {short_name}, {logo_url})".format(
                name=sql_value(item["name"]),
                short_name=sql_value(item["short_name"]),
                logo_url=sql_value(item.get("logo_url")),
            )
        else:
            university_insert = (
                "select {name}, {short_name}, {logo_url}\n"
                "where not exists (\n"
                "    select 1 from public.universities existing\n"
                "    where existing.short_name = {short_name}\n"
                ")"
            ).format(
                name=sql_value(item["name"]),
                short_name=sql_value(item["short_name"]),
                logo_url=sql_value(item.get("logo_url")),
            )
        statements.append(
            """\ninsert into public.universities (name, short_name, logo_url)
{university_insert}
{conflict_clause};""".format(
                university_insert=university_insert,
                conflict_clause=(
                    "on conflict (name) do update set\n"
                    "    short_name = excluded.short_name,\n"
                    "    logo_url = excluded.logo_url"
                    if update_existing
                    else "on conflict (name) do nothing"
                ),
            )
        )

    campus_columns = ["name", "is_main", "official_url", "updated_at"]
    for item in data["campuses"]:
        statements.append(
            """
insert into public.university_campuses (
    university_id, code, name, is_main, official_url, updated_at
)
select u.id, {code}, {name}, {is_main}, {official_url}, now()
from public.universities u
where u.short_name = {university_short_name}
{conflict_clause};""".format(
                code=sql_value(item["code"]),
                name=sql_value(item["name"]),
                is_main=sql_value(item["is_main"]),
                official_url=sql_value(item.get("official_url")),
                university_short_name=sql_value(item["university_short_name"]),
                conflict_clause=conflict_clause(
                    "university_id, code", update_existing, upsert_assignments(campus_columns)
                ),
            )
        )

    calendar_columns = [
        "university_id",
        "title",
        "academic_year",
        "campus_codes",
        "program_codes",
        "source_url",
        "evidence_url",
        "source_checked_at",
        "scope_note",
        "rounds",
        "interview_eligible_on",
        "interview_on",
        "interview_passed_on",
        "confirmation_start_on",
        "confirmation_end_on",
        "updated_at",
    ]
    calendar_json_fields = {"campus_codes", "program_codes", "rounds"}
    for item in data.get("university_admission_calendars", []):
        values = {
            key: sql_value(
                (item.get(key) or []) if key in calendar_json_fields else item.get(key),
                jsonb=key in calendar_json_fields,
            )
            for key in calendar_columns
            if key not in {"university_id", "updated_at"}
        }
        statements.append(
            """\ninsert into public.university_admission_calendars (
    university_id, code, title, academic_year, campus_codes, program_codes,
    source_url, evidence_url, source_checked_at, scope_note, rounds,
    interview_eligible_on, interview_on, interview_passed_on,
    confirmation_start_on, confirmation_end_on, updated_at
)
select
    u.id, {code}, {title}, {academic_year}, {campus_codes}, {program_codes},
    {source_url}, {evidence_url}, {source_checked_at}, {scope_note}, {rounds},
    {interview_eligible_on}, {interview_on}, {interview_passed_on},
    {confirmation_start_on}, {confirmation_end_on}, now()
from public.universities u
where u.short_name = {university_short_name}
{conflict_clause};""".format(
                code=sql_value(item["code"]),
                university_short_name=sql_value(item["university_short_name"]),
                conflict_clause=conflict_clause(
                    "code", update_existing, upsert_assignments(calendar_columns)
                ),
                **values,
            )
        )

    program_columns = [
        "university_id",
        "campus_id",
        "faculty_name",
        "major_name",
        "tcas_round",
        "academic_year",
        "program_type",
        "language",
        "curriculum_credits",
        "curriculum_year",
        "duration_years",
        "official_program_url",
        "admission_previews",
        "data_status",
        "updated_at",
    ]
    for item in data["programs"]:
        statements.append(
            """\ninsert into public.faculties_and_majors (
    university_id, campus_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, campus.id, {code}, {faculty_name}, {major_name}, 1, {academic_year},
    {program_type}, {language}, {curriculum_credits}, {curriculum_year},
    {duration_years}, {official_program_url}, {admission_previews}, {data_status}, now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = {campus_code}
where u.short_name = {university_short_name}
{conflict_clause};""".format(
                code=sql_value(item["code"]),
                campus_code=sql_value(item["campus_code"]),
                faculty_name=sql_value(item["faculty_name"]),
                major_name=sql_value(item.get("major_name")),
                academic_year=data["academic_year"],
                program_type=sql_value(item.get("program_type")),
                language=sql_value(item.get("language")),
                curriculum_credits=sql_value(item.get("curriculum_credits")),
                curriculum_year=sql_value(item.get("curriculum_year")),
                duration_years=sql_value(item.get("duration_years")),
                official_program_url=sql_value(item.get("official_program_url")),
                admission_previews=sql_value(
                    item.get("admission_previews") or [], jsonb=True
                ),
                data_status=sql_value(item["data_status"]),
                university_short_name=sql_value(item["university_short_name"]),
                conflict_clause=conflict_clause(
                    "code", update_existing, upsert_assignments(program_columns)
                ),
            )
        )

    project_columns = [
        "university_id",
        "group_code",
        "name",
        "academic_year",
        "tcas_round",
        "round_label",
        "round_variant",
        "application_type",
        "publication_status",
        "is_visible",
        "selection_order_limit",
        "application_fee",
        "tuition_fee_per_semester",
        "source_url",
        "source_title",
        "source_published_at",
        "source_checked_at",
        "data_notes",
        "updated_at",
    ]
    for item in data["projects"]:
        statements.append(
            """\ninsert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, {code}, {group_code}, {name}, {academic_year}, {tcas_round},
    {round_label}, {round_variant}, {application_type}, {publication_status},
    {is_visible}, {selection_order_limit}, {application_fee},
    {tuition_fee_per_semester}, {source_url}, {source_title},
    {source_published_at}, {source_checked_at}, {data_notes}, now()
from public.universities u
where u.short_name = {university_short_name}
{conflict_clause};""".format(
                conflict_clause=conflict_clause(
                    "code", update_existing, upsert_assignments(project_columns)
                ),
                **{key: sql_value(value) for key, value in item.items()},
            )
        )

    for item in data["project_programs"]:
        statements.append(
            """\ninsert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, {slots_available}, {program_notes}
from public.admission_projects p
join public.faculties_and_majors m on m.code = {program_code}
where p.code = {project_code}
{conflict_clause};""".format(
                slots_available=sql_value(item.get("slots_available")),
                program_notes=sql_value(item.get("program_notes")),
                program_code=sql_value(item["program_code"]),
                project_code=sql_value(item["project_code"]),
                conflict_clause=(
                    conflict_clause(
                        "project_id, program_id", update_existing,
                        "slots_available = excluded.slots_available,\n"
                        "        program_notes = excluded.program_notes",
                        indent=4,
                    )
                ),
            )
        )

    criteria_columns = [
        "min_gpax",
        "gpax_requirements",
        "subject_gpax",
        "min_english_score",
        "standardized_scores",
        "applicant_qualifications",
        "portfolio_requirements",
        "portfolio_details",
        "accepted_achievements",
        "required_documents",
        "selection_methods",
        "additional_requirements",
        "criteria_summary",
        "official_announcement_url",
        "updated_at",
    ]
    json_fields = {
        "gpax_requirements",
        "subject_gpax",
        "min_english_score",
        "standardized_scores",
        "applicant_qualifications",
        "portfolio_details",
        "accepted_achievements",
        "required_documents",
        "selection_methods",
        "additional_requirements",
    }
    for item in data["criteria"]:
        values = {
            key: sql_value(item.get(key), jsonb=key in json_fields)
            for key in criteria_columns
            if key != "updated_at"
        }
        statements.append(
            """\ninsert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, {min_gpax}, {gpax_requirements}, {subject_gpax}, {min_english_score},
    {standardized_scores}, {applicant_qualifications}, {portfolio_requirements},
    {portfolio_details}, {accepted_achievements}, {required_documents},
    {selection_methods}, {additional_requirements}, {criteria_summary},
    {official_announcement_url}, now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = {program_code}
where p.code = {project_code}
{conflict_clause};""".format(
                project_code=sql_value(item["project_code"]),
                program_code=sql_value(item["program_code"]),
                conflict_clause=conflict_clause(
                    "project_id, faculty_id", update_existing,
                    upsert_assignments(criteria_columns),
                ),
                **values,
            )
        )

    for item in data["timeline"]:
        statements.append(
            """\ninsert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, {event_name}, {start_on}, {end_on}, {date_display}, {date_status}, now()
from public.admission_projects p
where p.code = {project_code}
{conflict_clause};""".format(
                **{key: sql_value(value) for key, value in item.items()},
                conflict_clause=conflict_clause(
                    "project_id, event_name", update_existing,
                    "start_on = excluded.start_on,\n"
                    "        end_on = excluded.end_on,\n"
                    "        date_display = excluded.date_display,\n"
                    "        date_status = excluded.date_status,\n"
                    "        updated_at = now()",
                    indent=4,
                )
            )
        )

    statements.append("\ncommit;\n")
    return "\n".join(statements)


def split_for_sql_editor(sql, max_chars=200_000):
    """Split the generated SQL at statement boundaries for Supabase SQL Editor."""
    try:
        body = sql.split("begin;\n", 1)[1].rsplit("\ncommit;", 1)[0].strip()
    except IndexError as error:
        raise ValueError("generated SQL is missing begin/commit markers") from error

    statements = body.split("\n\n") if body else []
    groups = []
    current = []
    current_size = 0
    for statement in statements:
        statement_size = len(statement) + 2
        if current and current_size + statement_size > max_chars:
            groups.append(current)
            current = []
            current_size = 0
        current.append(statement)
        current_size += statement_size
    if current:
        groups.append(current)

    chunks = []
    total = len(groups)
    for index, group in enumerate(groups, start=1):
        chunks.append(
            "\n".join(
                [
                    "-- Generated from datasets/tcas70_admissions.json",
                    f"-- Supabase SQL Editor part {index} of {total}; run parts in numeric order.",
                    "begin;",
                    "",
                    "\n\n".join(group),
                    "",
                    "commit;",
                    "",
                ]
            )
        )
    return chunks


def write_sql_editor_parts(sql, output_path):
    parts_directory = output_path.with_name(output_path.stem + "_parts")
    parts_directory.mkdir(parents=True, exist_ok=True)
    for stale in parts_directory.glob("part_*.sql"):
        stale.unlink()

    chunks = split_for_sql_editor(sql)
    for index, chunk in enumerate(chunks, start=1):
        (parts_directory / f"part_{index:02d}.sql").write_text(
            chunk, encoding="utf-8", newline="\n"
        )
    return parts_directory, chunks


def main():
    project_root = Path(__file__).resolve().parents[1]
    dataset_path = (
        Path(sys.argv[1]).resolve()
        if len(sys.argv) > 1
        else project_root / "datasets" / "tcas70_admissions.json"
    )
    output_path = (
        Path(sys.argv[2]).resolve()
        if len(sys.argv) > 2
        else project_root / "seed_tcas70.sql"
    )
    data = json.loads(dataset_path.read_text(encoding="utf-8"))
    errors, counts = validate(data)
    if errors:
        raise SystemExit("Dataset invalid:\n- " + "\n- ".join(errors))
    sql = generate(data)
    output_path.write_text(sql, encoding="utf-8", newline="\n")
    parts_directory, chunks = write_sql_editor_parts(sql, output_path)
    print(f"Generated {output_path}")
    print(
        f"Generated {len(chunks)} SQL Editor parts in {parts_directory} "
        f"(largest {max(map(len, chunks), default=0)} characters)"
    )
    print(json.dumps(counts, ensure_ascii=False))


if __name__ == "__main__":
    main()
