import json
from pathlib import Path

from generate_seed_sql import sql_value, upsert_assignments
from validate_dataset import validate


ROOT = Path(__file__).resolve().parents[1]
DATASET_PATH = ROOT / "datasets" / "tcas70_admissions.json"
OUTPUT_PATH = ROOT / "migrate_university_campuses.sql"


def generate(data):
    statements = [
        "-- Add normalized campuses and connect every technology program.",
        "begin;",
        """create table if not exists public.university_campuses (
    id uuid primary key default gen_random_uuid(),
    university_id uuid not null references public.universities(id) on delete cascade,
    code varchar(50) not null,
    name varchar(255) not null,
    is_main boolean not null default false,
    official_url text,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now(),
    unique (university_id, code)
);""",
        """alter table public.faculties_and_majors
    add column if not exists campus_id uuid
    references public.university_campuses(id) on delete restrict;""",
    ]
    campus_columns = ["name", "is_main", "official_url", "updated_at"]
    for campus in data["campuses"]:
        statements.append(
            """
insert into public.university_campuses (
    university_id, code, name, is_main, official_url, updated_at
)
select u.id, {code}, {name}, {is_main}, {official_url}, now()
from public.universities u
where u.short_name = {university_short_name}
on conflict (university_id, code) do update set
        {updates};""".format(
                code=sql_value(campus["code"]),
                name=sql_value(campus["name"]),
                is_main=sql_value(campus["is_main"]),
                official_url=sql_value(campus.get("official_url")),
                university_short_name=sql_value(
                    campus["university_short_name"]
                ),
                updates=upsert_assignments(campus_columns),
            )
        )
    for program in data["programs"]:
        statements.append(
            """
update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = {program_code}
  and university.short_name = {university_short_name}
  and campus.code = {campus_code};""".format(
                program_code=sql_value(program["code"]),
                university_short_name=sql_value(program["university_short_name"]),
                campus_code=sql_value(program["campus_code"]),
            )
        )
    statements.extend(
        [
            """create index if not exists idx_university_campuses_university
    on public.university_campuses(university_id);""",
            """create index if not exists idx_faculties_campus
    on public.faculties_and_majors(campus_id);""",
            "alter table public.university_campuses enable row level security;",
            'drop policy if exists "Public read university campuses" on public.university_campuses;',
            'create policy "Public read university campuses" on public.university_campuses for select to anon, authenticated using (true);',
            "commit;",
            "",
        ]
    )
    return "\n".join(statements)


def main():
    data = json.loads(DATASET_PATH.read_text(encoding="utf-8"))
    validate(data)
    OUTPUT_PATH.write_text(generate(data), encoding="utf-8")
    print(f"generated {OUTPUT_PATH.name}: {len(data['campuses'])} campuses")


if __name__ == "__main__":
    main()
