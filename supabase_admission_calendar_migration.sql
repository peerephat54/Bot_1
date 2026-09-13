-- Add the missing university-wide admission calendar table.
-- Safe to run more than once; does not delete or overwrite existing user data.
create table if not exists public.university_admission_calendars (
    id uuid primary key default gen_random_uuid(),
    university_id uuid not null references public.universities(id) on delete cascade,
    code varchar(120) not null unique,
    title varchar(255) not null,
    academic_year integer not null check (academic_year >= 2500),
    campus_codes jsonb not null default '[]'::jsonb,
    program_codes jsonb not null default '[]'::jsonb,
    source_url text not null,
    evidence_url text,
    source_checked_at timestamptz not null,
    scope_note text not null,
    rounds jsonb not null default '[]'::jsonb,
    interview_eligible_on date,
    interview_on date,
    interview_passed_on date,
    confirmation_start_on date,
    confirmation_end_on date,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now(),
    check (jsonb_typeof(campus_codes) = 'array'),
    check (jsonb_typeof(program_codes) = 'array'),
    check (jsonb_typeof(rounds) = 'array'),
    check (confirmation_end_on is null or confirmation_start_on is null
        or confirmation_end_on >= confirmation_start_on)
);

create index if not exists idx_university_calendars_university_year
    on public.university_admission_calendars(university_id, academic_year);

alter table public.university_admission_calendars enable row level security;
drop policy if exists "Public read university admission calendars"
    on public.university_admission_calendars;
create policy "Public read university admission calendars"
    on public.university_admission_calendars for select to anon, authenticated
    using (true);

grant select on public.university_admission_calendars to anon, authenticated;
