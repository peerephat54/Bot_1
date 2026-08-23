begin;

insert into public.faculties_and_majors (
    university_id,
    code,
    faculty_name,
    major_name,
    tcas_round,
    academic_year,
    program_type,
    language,
    curriculum_credits,
    curriculum_year,
    duration_years,
    official_program_url,
    data_status,
    updated_at
)
select
    u.id,
    'kmitl-science-computer-science',
    'คณะวิทยาศาสตร์',
    'วิทยาการคอมพิวเตอร์',
    1,
    2570,
    'ปริญญาตรี',
    null,
    130,
    2569,
    null,
    'https://www.science.kmitl.ac.th/curriculums/bachelor/computer-science-2569',
    'official',
    now()
from public.universities u
where u.short_name = 'KMITL'
on conflict (code) do update set
    university_id = excluded.university_id,
    faculty_name = excluded.faculty_name,
    major_name = excluded.major_name,
    tcas_round = excluded.tcas_round,
    academic_year = excluded.academic_year,
    program_type = excluded.program_type,
    language = excluded.language,
    curriculum_credits = excluded.curriculum_credits,
    curriculum_year = excluded.curriculum_year,
    duration_years = excluded.duration_years,
    official_program_url = excluded.official_program_url,
    data_status = excluded.data_status,
    updated_at = now();

commit;
