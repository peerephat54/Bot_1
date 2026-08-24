import json
from pathlib import Path

from generate_seed_sql import sql_value, upsert_assignments
from validate_dataset import validate


ROOT = Path(__file__).resolve().parents[1]
DATASET_PATH = ROOT / "datasets" / "tcas70_admissions.json"
OUTPUT_PATH = ROOT / "migrate_admission_previews.sql"


def generate(data):
    columns = [
        "university_id",
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
    statements = [
        "-- Adds official technology curricula and clearly labelled unconfirmed references.",
        "begin;",
        "alter table public.faculties_and_majors",
        "    add column if not exists admission_previews jsonb not null default '[]'::jsonb;",
    ]
    for item in data["programs"]:
        statements.append(
            """
insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, {code}, {faculty_name}, {major_name}, 1, {academic_year},
    {program_type}, {language}, {curriculum_credits}, {curriculum_year},
    {duration_years}, {official_program_url}, {admission_previews}, {data_status}, now()
from public.universities u
where u.short_name = {university_short_name}
on conflict (code) do update set
        {updates};""".format(
                code=sql_value(item["code"]),
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
                updates=upsert_assignments(columns),
            )
        )
    statements.extend(["commit;", ""])
    return "\n".join(statements)


def main():
    data = json.loads(DATASET_PATH.read_text(encoding="utf-8"))
    validate(data)
    OUTPUT_PATH.write_text(generate(data), encoding="utf-8")
    print(f"generated {OUTPUT_PATH.name}: {len(data['programs'])} programs")


if __name__ == "__main__":
    main()
