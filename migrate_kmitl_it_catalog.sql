begin;

-- Keep the three official curricula requested for the KMITL IT catalog.
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
    p.code,
    p.faculty_name,
    p.major_name,
    1,
    2570,
    'ปริญญาตรี',
    'ไทยและอังกฤษ',
    p.curriculum_credits,
    p.curriculum_year,
    4,
    p.official_program_url,
    'official',
    now()
from public.universities u
cross join (
    values
        (
            'kmitl-it',
            'คณะเทคโนโลยีสารสนเทศ',
            'เทคโนโลยีสารสนเทศ',
            129,
            2565,
            'https://www.it.kmitl.ac.th/en/programs/it-program-2565'
        ),
        (
            'kmitl-dsba',
            'คณะเทคโนโลยีสารสนเทศ',
            'วิทยาการข้อมูลและการวิเคราะห์เชิงธุรกิจ',
            132,
            2565,
            'https://www.it.kmitl.ac.th/en/programs/datasci-program-2565'
        ),
        (
            'kmitl-ait',
            'คณะเทคโนโลยีสารสนเทศ',
            'เทคโนโลยีปัญญาประดิษฐ์',
            120,
            2566,
            'https://www.it.kmitl.ac.th/en/programs/ait-program'
        )
) as p(
    code,
    faculty_name,
    major_name,
    curriculum_credits,
    curriculum_year,
    official_program_url
)
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

-- The user explicitly removed this teacher-education curriculum from scope.
-- Deleting the project first cascades only its link, criterion and timeline.
delete from public.admission_projects
where code = 'kmitl-siet-computer-tech-teacher-portfolio';

delete from public.faculties_and_majors
where code = 'kmitl-siet-computer-technology';

commit;
