-- Incremental migration for an existing Bot_1 database.
-- This preserves admission records while upgrading criteria from one row per
-- project to one row per project/program before the TCAS70 v3 seed is applied.

begin;

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

-- Older seeds used a provisional label. Remove only those three obsolete rows;
-- the v3 seed inserts/upserts the exact official TCAS70 events immediately
-- afterwards. This prevents both labels from being displayed by the bot.
delete from public.admission_timeline t
where t.event_name = 'ยืนยันสิทธิ์ Clearing House'
  and exists (
      select 1
      from public.admission_projects p
      where p.id = t.project_id
        and p.code in (
            'muict-ict-portfolio',
            'muict-mu-portfolio-1-1',
            'muict-mu-portfolio-1-2'
        )
  );

commit;
