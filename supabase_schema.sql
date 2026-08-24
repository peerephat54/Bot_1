create extension if not exists pgcrypto;

-- Core reference data -------------------------------------------------------

create table if not exists public.universities (
    id uuid primary key default gen_random_uuid(),
    name varchar(255) not null unique,
    short_name varchar(50),
    logo_url text,
    created_at timestamptz not null default now()
);

create table if not exists public.university_campuses (
    id uuid primary key default gen_random_uuid(),
    university_id uuid not null references public.universities(id) on delete cascade,
    code varchar(50) not null,
    name varchar(255) not null,
    is_main boolean not null default false,
    official_url text,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now(),
    unique (university_id, code)
);

create table if not exists public.faculties_and_majors (
    id uuid primary key default gen_random_uuid(),
    university_id uuid not null references public.universities(id) on delete cascade,
    campus_id uuid references public.university_campuses(id) on delete restrict,
    code varchar(80) not null unique,
    faculty_name varchar(255) not null,
    major_name varchar(255),
    -- Kept for compatibility with the first schema. Admission cycle data now
    -- belongs in admission_projects, not in this program table.
    tcas_round integer not null default 1 check (tcas_round between 1 and 4),
    academic_year integer not null default 2570 check (academic_year >= 2500),
    program_type varchar(80),
    language varchar(120),
    curriculum_credits integer check (curriculum_credits is null or curriculum_credits > 0),
    curriculum_year integer check (curriculum_year is null or curriculum_year >= 2500),
    duration_years decimal(3,1) check (duration_years is null or duration_years > 0),
    official_program_url text,
    admission_previews jsonb not null default '[]'::jsonb,
    data_status varchar(30) not null default 'unverified'
        check (data_status in ('official', 'unverified', 'deprecated')),
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now()
);

-- Upgrade an existing installation without deleting user data.
alter table public.faculties_and_majors add column if not exists campus_id uuid
    references public.university_campuses(id) on delete restrict;
alter table public.faculties_and_majors add column if not exists program_type varchar(80);
alter table public.faculties_and_majors add column if not exists language varchar(120);
alter table public.faculties_and_majors add column if not exists curriculum_credits integer;
alter table public.faculties_and_majors add column if not exists curriculum_year integer;
alter table public.faculties_and_majors add column if not exists duration_years decimal(3,1);
alter table public.faculties_and_majors add column if not exists official_program_url text;
alter table public.faculties_and_majors add column if not exists admission_previews jsonb not null default '[]'::jsonb;
alter table public.faculties_and_majors add column if not exists data_status varchar(30) not null default 'unverified';
alter table public.faculties_and_majors add column if not exists updated_at timestamptz not null default now();

-- One row represents one project AND one admission variant (for example 1.1
-- or 1.2). group_code groups variants that share the same project name.
create table if not exists public.admission_projects (
    id uuid primary key default gen_random_uuid(),
    university_id uuid not null references public.universities(id) on delete cascade,
    code varchar(120) not null unique,
    group_code varchar(120) not null,
    name varchar(500) not null,
    academic_year integer not null check (academic_year >= 2500),
    tcas_round integer not null check (tcas_round between 1 and 4),
    round_label varchar(80) not null,
    round_variant varchar(40) not null,
    application_type varchar(80) not null default 'Portfolio',
    publication_status varchar(40) not null default 'draft_waiting_official'
        check (publication_status in (
            'draft_waiting_official', 'official', 'closed', 'superseded', 'cancelled'
        )),
    is_visible boolean not null default false,
    selection_order_limit integer check (selection_order_limit is null or selection_order_limit > 0),
    application_fee numeric(10,2) check (application_fee is null or application_fee >= 0),
    tuition_fee_per_semester numeric(12,2)
        check (tuition_fee_per_semester is null or tuition_fee_per_semester >= 0),
    source_url text not null,
    source_title text,
    source_published_at date,
    source_checked_at timestamptz not null,
    data_notes text,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now(),
    unique (university_id, group_code, round_variant, academic_year),
    check (not is_visible or publication_status in ('official', 'closed'))
);

-- A project can admit several programs, and a program can have many projects.
create table if not exists public.admission_project_programs (
    id uuid primary key default gen_random_uuid(),
    project_id uuid not null references public.admission_projects(id) on delete cascade,
    program_id uuid not null references public.faculties_and_majors(id) on delete cascade,
    slots_available integer check (slots_available is null or slots_available >= 0),
    program_notes text,
    created_at timestamptz not null default now(),
    unique (project_id, program_id)
);

-- Criteria are scoped to a project variant AND a program. One recruitment
-- project may open several programs with different GPAX and selection weights.
-- faculty_id is the legacy column name; it points to faculties_and_majors.id
-- and therefore represents the selected program in this schema.
create table if not exists public.admission_criteria (
    id uuid primary key default gen_random_uuid(),
    project_id uuid references public.admission_projects(id) on delete cascade,
    faculty_id uuid references public.faculties_and_majors(id) on delete cascade,
    min_gpax decimal(3,2) check (min_gpax is null or min_gpax between 0 and 4),
    gpax_requirements jsonb not null default '{}'::jsonb,
    subject_gpax jsonb not null default '{}'::jsonb,
    min_english_score jsonb not null default '{}'::jsonb,
    standardized_scores jsonb not null default '{}'::jsonb,
    applicant_qualifications jsonb not null default '[]'::jsonb,
    portfolio_requirements text,
    portfolio_details jsonb not null default '{}'::jsonb,
    accepted_achievements jsonb not null default '[]'::jsonb,
    required_documents jsonb not null default '[]'::jsonb,
    selection_methods jsonb not null default '[]'::jsonb,
    additional_requirements jsonb not null default '{}'::jsonb,
    criteria_summary text,
    slots_available integer check (slots_available is null or slots_available >= 0),
    official_announcement_url text,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now(),
    check (project_id is not null or faculty_id is not null)
);

-- Migration from v1: faculty_id used to be NOT NULL and UNIQUE, which allowed
-- only one criterion row per program. Preserve old rows but remove that limit.
alter table public.admission_criteria add column if not exists project_id uuid;
alter table public.admission_criteria add column if not exists gpax_requirements jsonb not null default '{}'::jsonb;
alter table public.admission_criteria add column if not exists subject_gpax jsonb not null default '{}'::jsonb;
alter table public.admission_criteria add column if not exists standardized_scores jsonb not null default '{}'::jsonb;
alter table public.admission_criteria add column if not exists applicant_qualifications jsonb not null default '[]'::jsonb;
alter table public.admission_criteria add column if not exists portfolio_details jsonb not null default '{}'::jsonb;
alter table public.admission_criteria add column if not exists accepted_achievements jsonb not null default '[]'::jsonb;
alter table public.admission_criteria add column if not exists required_documents jsonb not null default '[]'::jsonb;
alter table public.admission_criteria add column if not exists selection_methods jsonb not null default '[]'::jsonb;
alter table public.admission_criteria add column if not exists additional_requirements jsonb not null default '{}'::jsonb;
alter table public.admission_criteria add column if not exists criteria_summary text;
alter table public.admission_criteria add column if not exists updated_at timestamptz not null default now();
alter table public.admission_criteria alter column faculty_id drop not null;
alter table public.admission_criteria drop constraint if exists admission_criteria_faculty_id_key;

do $$
begin
    if not exists (
        select 1 from pg_constraint
        where conname = 'admission_criteria_project_id_fkey'
          and conrelid = 'public.admission_criteria'::regclass
    ) then
        alter table public.admission_criteria
            add constraint admission_criteria_project_id_fkey
            foreign key (project_id) references public.admission_projects(id) on delete cascade;
    end if;
end $$;

-- v2 allowed only one criteria row per project. Attach each legacy row to one
-- existing linked program, then replace that index with the project/program
-- key. The v3 seed expands multi-program projects into exact per-program rows.
update public.admission_criteria c
set faculty_id = candidate.program_id,
    updated_at = now()
from (
    select project_id, min(program_id::text)::uuid as program_id
    from public.admission_project_programs
    group by project_id
) candidate
where c.project_id = candidate.project_id
  and c.faculty_id is null;

drop index if exists public.idx_admission_criteria_project_unique;
create unique index if not exists idx_admission_criteria_project_program_unique
    on public.admission_criteria(project_id, faculty_id);

create table if not exists public.admission_timeline (
    id uuid primary key default gen_random_uuid(),
    project_id uuid references public.admission_projects(id) on delete cascade,
    faculty_id uuid references public.faculties_and_majors(id) on delete cascade,
    event_name varchar(255) not null,
    start_date timestamptz,
    end_date timestamptz,
    start_on date,
    end_on date,
    date_display varchar(255),
    date_status varchar(30) not null default 'confirmed'
        check (date_status in ('confirmed', 'month_only', 'tentative', 'disputed', 'unknown')),
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now(),
    check (project_id is not null or faculty_id is not null),
    check (end_date is null or start_date is null or end_date >= start_date),
    check (end_on is null or start_on is null or end_on >= start_on)
);

alter table public.admission_timeline add column if not exists project_id uuid;
alter table public.admission_timeline add column if not exists start_on date;
alter table public.admission_timeline add column if not exists end_on date;
alter table public.admission_timeline add column if not exists date_display varchar(255);
alter table public.admission_timeline add column if not exists date_status varchar(30) not null default 'confirmed';
alter table public.admission_timeline add column if not exists updated_at timestamptz not null default now();
alter table public.admission_timeline alter column faculty_id drop not null;

do $$
begin
    if not exists (
        select 1 from pg_constraint
        where conname = 'admission_timeline_project_id_fkey'
          and conrelid = 'public.admission_timeline'::regclass
    ) then
        alter table public.admission_timeline
            add constraint admission_timeline_project_id_fkey
            foreign key (project_id) references public.admission_projects(id) on delete cascade;
    end if;
end $$;

create unique index if not exists idx_admission_timeline_project_event_unique
    on public.admission_timeline(project_id, event_name);

create table if not exists public.deadline_subscriptions (
    id uuid primary key default gen_random_uuid(),
    discord_user_id text not null,
    project_id uuid references public.admission_projects(id) on delete cascade,
    faculty_id uuid references public.faculties_and_majors(id) on delete cascade,
    event_id uuid references public.admission_timeline(id) on delete cascade,
    notified boolean not null default false,
    created_at timestamptz not null default now(),
    check (project_id is not null or faculty_id is not null)
);

alter table public.deadline_subscriptions add column if not exists project_id uuid;
alter table public.deadline_subscriptions alter column faculty_id drop not null;

do $$
begin
    if not exists (
        select 1 from pg_constraint
        where conname = 'deadline_subscriptions_project_id_fkey'
          and conrelid = 'public.deadline_subscriptions'::regclass
    ) then
        alter table public.deadline_subscriptions
            add constraint deadline_subscriptions_project_id_fkey
            foreign key (project_id) references public.admission_projects(id) on delete cascade;
    end if;
end $$;

create index if not exists idx_faculties_university
    on public.faculties_and_majors(university_id);
create index if not exists idx_university_campuses_university
    on public.university_campuses(university_id);
create index if not exists idx_faculties_campus
    on public.faculties_and_majors(campus_id);
create index if not exists idx_projects_university_year
    on public.admission_projects(university_id, academic_year, tcas_round);
create index if not exists idx_projects_status
    on public.admission_projects(publication_status, is_visible);
create index if not exists idx_project_programs_program
    on public.admission_project_programs(program_id);
create index if not exists idx_timeline_project
    on public.admission_timeline(project_id);
create index if not exists idx_timeline_end_on
    on public.admission_timeline(end_on);

-- Public clients may read only verified, visible admission data. Draft rows can
-- be safely prepared by an administrator but cannot leak through the anon key.
alter table public.universities enable row level security;
alter table public.university_campuses enable row level security;
alter table public.faculties_and_majors enable row level security;
alter table public.admission_projects enable row level security;
alter table public.admission_project_programs enable row level security;
alter table public.admission_criteria enable row level security;
alter table public.admission_timeline enable row level security;
alter table public.deadline_subscriptions enable row level security;

drop policy if exists "Public read universities" on public.universities;
create policy "Public read universities"
    on public.universities for select to anon, authenticated using (true);

drop policy if exists "Public read university campuses" on public.university_campuses;
create policy "Public read university campuses"
    on public.university_campuses for select to anon, authenticated using (true);

drop policy if exists "Public read faculties" on public.faculties_and_majors;
create policy "Public read faculties"
    on public.faculties_and_majors for select to anon, authenticated
    using (data_status = 'official');

drop policy if exists "Public read admission projects" on public.admission_projects;
create policy "Public read admission projects"
    on public.admission_projects for select to anon, authenticated
    using (is_visible and publication_status in ('official', 'closed'));

drop policy if exists "Public read project programs" on public.admission_project_programs;
create policy "Public read project programs"
    on public.admission_project_programs for select to anon, authenticated
    using (exists (
        select 1 from public.admission_projects p
        where p.id = project_id
          and p.is_visible
          and p.publication_status in ('official', 'closed')
    ));

drop policy if exists "Public read criteria" on public.admission_criteria;
create policy "Public read criteria"
    on public.admission_criteria for select to anon, authenticated
    using (exists (
        select 1 from public.admission_projects p
        where p.id = project_id
          and p.is_visible
          and p.publication_status in ('official', 'closed')
    ));

drop policy if exists "Public read timeline" on public.admission_timeline;
create policy "Public read timeline"
    on public.admission_timeline for select to anon, authenticated
    using (exists (
        select 1 from public.admission_projects p
        where p.id = project_id
          and p.is_visible
          and p.publication_status in ('official', 'closed')
    ));

grant select on public.universities to anon, authenticated;
grant select on public.faculties_and_majors to anon, authenticated;
grant select on public.admission_projects to anon, authenticated;
grant select on public.admission_project_programs to anon, authenticated;
grant select on public.admission_criteria to anon, authenticated;
grant select on public.admission_timeline to anon, authenticated;
