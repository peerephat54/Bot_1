-- Generated from datasets/tcas70_admissions.json
-- Run supabase_schema.sql before this file.
begin;

insert into public.universities (name, short_name, logo_url)
values ('จุฬาลงกรณ์มหาวิทยาลัย', 'CU', null)
on conflict (name) do update set
    short_name = excluded.short_name,
    logo_url = excluded.logo_url;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, data_status, updated_at
)
select
    u.id, 'cu-engineering-computer-engineering', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', 138, 2566,
    4, 'https://www.cp.eng.chula.ac.th/future/bachelor', 'official', now()
from public.universities u
where u.short_name = 'CU'
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
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, data_status, updated_at
)
select
    u.id, 'cu-engineering-cedt', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมคอมพิวเตอร์และเทคโนโลยีดิจิทัล (CEDT)', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', 124, 2566,
    3.5, 'https://www.cp.eng.chula.ac.th/cedt', 'official', now()
from public.universities u
where u.short_name = 'CU'
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
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, data_status, updated_at
)
select
    u.id, 'cu-engineering-ice', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมสารสนเทศและการสื่อสาร (ICE) (หลักสูตรนานาชาติ)', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'อังกฤษ', null, null,
    null, 'https://www.ise.eng.chula.ac.th/academics/ice/info', 'official', now()
from public.universities u
where u.short_name = 'CU'
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
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, data_status, updated_at
)
select
    u.id, 'cu-engineering-robotics-ai', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมหุ่นยนต์และปัญญาประดิษฐ์ (RAIE) (หลักสูตรนานาชาติ)', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'อังกฤษ', null, null,
    null, 'https://www.ise.eng.chula.ac.th/academics/robotics-ai/info', 'official', now()
from public.universities u
where u.short_name = 'CU'
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
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, data_status, updated_at
)
select
    u.id, 'cu-engineering-semiconductor', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมเซมิคอนดักเตอร์ (SEMI) (หลักสูตรนานาชาติ)', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'อังกฤษ', null, null,
    null, 'https://www.ise.eng.chula.ac.th/academics/semi/info', 'official', now()
from public.universities u
where u.short_name = 'CU'
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
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, data_status, updated_at
)
select
    u.id, 'cu-science-computer-science', 'คณะวิทยาศาสตร์', 'วิทยาการคอมพิวเตอร์', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', 136, 2566,
    4, 'https://www.math.sc.chula.ac.th/th/program/undergraduate/computer-science/', 'official', now()
from public.universities u
where u.short_name = 'CU'
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
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, data_status, updated_at
)
select
    u.id, 'cu-cbs-management-information-systems', 'คณะพาณิชยศาสตร์และการบัญชี', 'ระบบสารสนเทศทางการจัดการ', 1, 2570,
    'บริหารธุรกิจบัณฑิต', 'ไทย', 136, null,
    null, 'https://bba.acc.chula.ac.th/files/MIS_EN.pdf', 'official', now()
from public.universities u
where u.short_name = 'CU'
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
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, data_status, updated_at
)
select
    u.id, 'cu-cbs-statistics-data-science', 'คณะพาณิชยศาสตร์และการบัญชี', 'สถิติและวิทยาการข้อมูล', 1, 2570,
    'สถิติศาสตรบัณฑิต', 'ไทย', 133, 2564,
    null, 'https://stat.cbs.chula.ac.th/index.php/th/our-programs/bachelor/2564', 'official', now()
from public.universities u
where u.short_name = 'CU'
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
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, data_status, updated_at
)
select
    u.id, 'cu-cbs-information-technology-business', 'คณะพาณิชยศาสตร์และการบัญชี', 'เทคโนโลยีสารสนเทศเพื่อธุรกิจ', 1, 2570,
    'สถิติศาสตรบัณฑิต', 'ไทย', 133, 2564,
    null, 'https://stat.cbs.chula.ac.th/index.php/th/our-programs/bachelor/2564', 'official', now()
from public.universities u
where u.short_name = 'CU'
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
        updated_at = excluded.updated_at;

commit;
