-- Generated from datasets/tcas70_admissions.json
-- Supabase SQL Editor part 1 of 4; run parts in numeric order.
begin;

insert into public.universities (name, short_name, logo_url)
values ('สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง', 'KMITL', null)
on conflict (name) do update set
    short_name = excluded.short_name,
    logo_url = excluded.logo_url;

insert into public.universities (name, short_name, logo_url)
values ('มหาวิทยาลัยมหิดล', 'MU', null)
on conflict (name) do update set
    short_name = excluded.short_name,
    logo_url = excluded.logo_url;

insert into public.universities (name, short_name, logo_url)
values ('มหาวิทยาลัยเชียงใหม่', 'CMU', null)
on conflict (name) do update set
    short_name = excluded.short_name,
    logo_url = excluded.logo_url;

insert into public.universities (name, short_name, logo_url)
values ('มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี', 'KMUTT', null)
on conflict (name) do update set
    short_name = excluded.short_name,
    logo_url = excluded.logo_url;

insert into public.universities (name, short_name, logo_url)
values ('มหาวิทยาลัยเกษตรศาสตร์', 'KU', null)
on conflict (name) do update set
    short_name = excluded.short_name,
    logo_url = excluded.logo_url;

insert into public.universities (name, short_name, logo_url)
values ('มหาวิทยาลัยธรรมศาสตร์', 'TU', null)
on conflict (name) do update set
    short_name = excluded.short_name,
    logo_url = excluded.logo_url;

insert into public.universities (name, short_name, logo_url)
values ('จุฬาลงกรณ์มหาวิทยาลัย', 'CU', null)
on conflict (name) do update set
    short_name = excluded.short_name,
    logo_url = excluded.logo_url;

insert into public.universities (name, short_name, logo_url)
values ('มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ', 'KMUTNB', null)
on conflict (name) do update set
    short_name = excluded.short_name,
    logo_url = excluded.logo_url;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, data_status, updated_at
)
select
    u.id, 'kmitl-it', 'คณะเทคโนโลยีสารสนเทศ', 'เทคโนโลยีสารสนเทศ', 1, 2570,
    'ปริญญาตรี', 'ไทยและอังกฤษ', 129, 2565,
    4, 'https://www.it.kmitl.ac.th/en/programs/it-program-2565', 'official', now()
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
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, data_status, updated_at
)
select
    u.id, 'kmitl-dsba', 'คณะเทคโนโลยีสารสนเทศ', 'วิทยาการข้อมูลและการวิเคราะห์เชิงธุรกิจ', 1, 2570,
    'ปริญญาตรี', 'ไทยและอังกฤษ', 132, 2565,
    4, 'https://www.it.kmitl.ac.th/en/programs/datasci-program-2565', 'official', now()
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
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, data_status, updated_at
)
select
    u.id, 'kmitl-ait', 'คณะเทคโนโลยีสารสนเทศ', 'เทคโนโลยีปัญญาประดิษฐ์', 1, 2570,
    'ปริญญาตรี', 'ไทยและอังกฤษ', 120, 2566,
    4, 'https://www.it.kmitl.ac.th/en/programs/ait-program', 'official', now()
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
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, data_status, updated_at
)
select
    u.id, 'kmitl-bit', 'คณะเทคโนโลยีสารสนเทศ', 'เทคโนโลยีสารสนเทศทางธุรกิจ (หลักสูตรนานาชาติ)', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', 126, 2565,
    4, 'https://www.it.kmitl.ac.th/en/programs/bit-program-2565', 'official', now()
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
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, data_status, updated_at
)
select
    u.id, 'mu-ict', 'คณะเทคโนโลยีสารสนเทศและการสื่อสาร', 'เทคโนโลยีสารสนเทศและการสื่อสาร (ICT)', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', null, null,
    4, 'https://www.ict.mahidol.ac.th/th/programs/', 'official', now()
from public.universities u
where u.short_name = 'MU'
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
    u.id, 'cmu-cpe', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี ภาคปกติ', 'ไทย', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfacultybyid.php?fid=703', 'official', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'kmutt-sit-cs', 'คณะเทคโนโลยีสารสนเทศ', 'วิทยาการคอมพิวเตอร์ (หลักสูตรภาษาอังกฤษ)', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', 134, 2566,
    4, 'https://www.sit.kmutt.ac.th/bsc/bsc-cs-2/', 'official', now()
from public.universities u
where u.short_name = 'KMUTT'
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
    u.id, 'kmutt-sit-dsi', 'คณะเทคโนโลยีสารสนเทศ', 'นวัตกรรมบริการดิจิทัล', 1, 2570,
    'ปริญญาตรี', 'ไทย', 121, null,
    4, 'https://www.sit.kmutt.ac.th/en/bsc/bsc-dsi-2/', 'official', now()
from public.universities u
where u.short_name = 'KMUTT'
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
    u.id, 'kmutt-sit-it', 'คณะเทคโนโลยีสารสนเทศ', 'เทคโนโลยีสารสนเทศ', 1, 2570,
    'ปริญญาตรี', 'ไทยและอังกฤษ', null, 2567,
    4, 'https://www.sit.kmutt.ac.th/bsc/bsc-it-2/', 'official', now()
from public.universities u
where u.short_name = 'KMUTT'
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
    u.id, 'mu-computer-engineering', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://www.eg.mahidol.ac.th/egmu/admission/tcas-admission.html', 'official', now()
from public.universities u
where u.short_name = 'MU'
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
    u.id, 'ku-csc-computer-science', 'คณะวิทยาศาสตร์และวิศวกรรมศาสตร์ วิทยาเขตเฉลิมพระเกียรติ จังหวัดสกลนคร', 'วิทยาการคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://misreg.csc.ku.ac.th/admission/?page_id=63', 'official', now()
from public.universities u
where u.short_name = 'KU'
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
    u.id, 'ku-csc-computer-engineering', 'คณะวิทยาศาสตร์และวิศวกรรมศาสตร์ วิทยาเขตเฉลิมพระเกียรติ จังหวัดสกลนคร', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://misreg.csc.ku.ac.th/admission/?page_id=63', 'official', now()
from public.universities u
where u.short_name = 'KU'
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
    u.id, 'tu-siit-computer-engineering', 'สถาบันเทคโนโลยีนานาชาติสิรินธร', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', null, null,
    4, 'https://admissions.siit.tu.ac.th/undergraduate/', 'official', now()
from public.universities u
where u.short_name = 'TU'
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
    u.id, 'tu-siit-digital-engineering', 'สถาบันเทคโนโลยีนานาชาติสิรินธร', 'วิศวกรรมดิจิทัล', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', null, null,
    4, 'https://admissions.siit.tu.ac.th/undergraduate/', 'official', now()
from public.universities u
where u.short_name = 'TU'
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
    u.id, 'kmutt-cpe', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://join.kmutt.ac.th/projects', 'official', now()
from public.universities u
where u.short_name = 'KMUTT'
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
    u.id, 'kmutt-cpe-international', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมคอมพิวเตอร์ (หลักสูตรนานาชาติ)', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', null, null,
    4, 'https://join.kmutt.ac.th/projects', 'official', now()
from public.universities u
where u.short_name = 'KMUTT'
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
    u.id, 'kmutt-media-technology', 'คณะสถาปัตยกรรมศาสตร์และการออกแบบ', 'เทคโนโลยีมีเดีย', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://join.kmutt.ac.th/projects', 'official', now()
from public.universities u
where u.short_name = 'KMUTT'
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
    u.id, 'kmutt-game-design', 'คณะสถาปัตยกรรมศาสตร์และการออกแบบ', 'การออกแบบเกมและการพัฒนา (หลักสูตรนานาชาติ)', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', null, null,
    4, 'https://join.kmutt.ac.th/projects', 'official', now()
from public.universities u
where u.short_name = 'KMUTT'
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
    u.id, 'kmutt-ai-systems', 'คณะวิศวกรรมศาสตร์ (พื้นที่การศึกษาราชบุรี)', 'วิศวกรรมระบบอัจฉริยะ', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://join.kmutt.ac.th/projects', 'official', now()
from public.universities u
where u.short_name = 'KMUTT'
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
    u.id, 'cmu-cs', 'คณะวิทยาศาสตร์', 'วิทยาการคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'official', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-data-science', 'คณะวิทยาศาสตร์', 'วิทยาการข้อมูล', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'official', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-cyber', 'คณะวิศวกรรมศาสตร์', 'ระบบสารสนเทศและความมั่นคงปลอดภัยไซเบอร์ (นานาชาติ)', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'official', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-software-engineering', 'วิทยาลัยศิลปะ สื่อ และเทคโนโลยี', 'วิศวกรรมซอฟต์แวร์ (นานาชาติ)', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'official', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-digital-game', 'วิทยาลัยศิลปะ สื่อ และเทคโนโลยี', 'ดิจิทัลเกม', 1, 2570,
    'ปริญญาตรี', 'สองภาษา', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'official', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-digital-industry', 'วิทยาลัยศิลปะ สื่อ และเทคโนโลยี', 'บูรณาการอุตสาหกรรมดิจิทัล', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'official', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-modern-it', 'วิทยาลัยศิลปะ สื่อ และเทคโนโลยี', 'การจัดการสมัยใหม่และเทคโนโลยีสารสนเทศ', 1, 2570,
    'ปริญญาตรี', 'สองภาษา', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'official', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-digital-innovation', 'วิทยาลัยนานาชาตินวัตกรรมดิจิทัล', 'นวัตกรรมดิจิทัล (นานาชาติ)', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'official', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'kmitl-chumphon-computer-engineering', 'วิทยาเขตชุมพรเขตรอุดมศักดิ์', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://admission.reg.kmitl.ac.th/', 'official', now()
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
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, data_status, updated_at
)
select
    u.id, 'kmitl-science-computer-science', 'คณะวิทยาศาสตร์', 'วิทยาการคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี', null, 130, 2569,
    null, 'https://www.science.kmitl.ac.th/curriculums/bachelor/computer-science-2569', 'official', now()
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
        updated_at = excluded.updated_at;

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

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, data_status, updated_at
)
select
    u.id, 'kmutnb-engineering-computer-engineering', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', 134, null,
    4, 'https://www.kmutnb.ac.th/faculty-and-agencies/bangkok/faculty-of-engineering/department-of-electrical-and-computer-engineering.aspx?lang=th', 'official', now()
from public.universities u
where u.short_name = 'KMUTNB'
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
    u.id, 'kmutnb-science-computer-science', 'คณะวิทยาศาสตร์ประยุกต์', 'วิทยาการคอมพิวเตอร์', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', null, null,
    null, 'https://www.kmutnb.ac.th/faculty-and-agencies/bangkok/faculty-of-applied-science/department-of-computer-and-information-science.aspx', 'official', now()
from public.universities u
where u.short_name = 'KMUTNB'
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
    u.id, 'kmutnb-itd-informatics-digital-economy', 'คณะเทคโนโลยีสารสนเทศและนวัตกรรมดิจิทัล', 'วิทยาการสารสนเทศเพื่อเศรษฐกิจดิจิทัล (หลักสูตรนานาชาติ)', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'อังกฤษ', 129, null,
    4, 'https://www.itd.kmutnb.ac.th/bachelor.php', 'official', now()
from public.universities u
where u.short_name = 'KMUTNB'
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
    u.id, 'kmutnb-fitm-information-technology', 'คณะเทคโนโลยีและการจัดการอุตสาหกรรม (วิทยาเขตปราจีนบุรี)', 'เทคโนโลยีสารสนเทศ', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', null, 2567,
    4, 'https://www.fitm.kmutnb.ac.th/IT.html', 'official', now()
from public.universities u
where u.short_name = 'KMUTNB'
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
    u.id, 'kmutnb-fitm-information-network-engineering', 'คณะเทคโนโลยีและการจัดการอุตสาหกรรม (วิทยาเขตปราจีนบุรี)', 'วิศวกรรมสารสนเทศและเครือข่าย (เสริมทักษะภาษาอังกฤษ)', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย (เสริมทักษะภาษาอังกฤษ)', null, 2567,
    4, 'https://www.fitm.kmutnb.ac.th/IT.html', 'official', now()
from public.universities u
where u.short_name = 'KMUTNB'
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

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'muict-ict-portfolio', 'muict-ict-portfolio', 'รอบ 1 ICT – Portfolio', 2570, 1,
    '1 Portfolio', 'ICT', 'Portfolio', 'official',
    true, null, null,
    null, 'https://www.ict.mahidol.ac.th/th/ict-round-1-ict-portfolio-academic-year-2027/', 'ประกาศ! รอบ 1 ICT – Portfolio ปีการศึกษา 2570',
    '2026-07-02', '2026-08-23T00:00:00+07:00', 'ประกาศเฉพาะคณะ ICT; กิจกรรมหลังประกาศผลใช้ปฏิทินกลาง MU-TCAS รอบ 1/1 ที่ประกาศ 10 ส.ค. 2569', now()
from public.universities u
where u.short_name = 'MU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'muict-mu-portfolio-1-1', 'muict-mu-portfolio', 'MU – Portfolio (TCAS 1)', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://www.ict.mahidol.ac.th/th/ict-round-2-mu-portfolio-academic-year-2027/', 'ประกาศ! รอบ 2 MU – PORTFOLIO (TCAS 1) ปีการศึกษา 2570',
    '2026-07-02', '2026-08-23T00:00:00+07:00', 'เกณฑ์เฉพาะคณะ ICT และปฏิทินกลาง MU-TCAS รอบ 1/1 ตรวจล่าสุด 23 ส.ค. 2569', now()
from public.universities u
where u.short_name = 'MU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'muict-mu-portfolio-1-2', 'muict-mu-portfolio', 'MU – Portfolio (TCAS 1)', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, null,
    null, 'https://www.ict.mahidol.ac.th/th/ict-round-2-mu-portfolio-academic-year-2027/', 'ประกาศ! รอบ 2 MU – PORTFOLIO (TCAS 1) ปีการศึกษา 2570',
    '2026-07-02', '2026-08-23T00:00:00+07:00', 'หน้า ICT ปิดรับ 10 ม.ค. 2570 เร็วกว่าปฏิทินกลางที่ปิด 15 ม.ค. 2570 จึงใช้เส้นตายเฉพาะคณะซึ่งปลอดภัยกว่า; รอบ 1/2 เปิดเฉพาะที่นั่งคงเหลือจาก 1/1', now()
from public.universities u
where u.short_name = 'MU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-cpe-gifted-computer-1-1', 'cmu-cpe-gifted-computer', 'โครงการรับนักเรียนที่มีอัจฉริยภาพทางคอมพิวเตอร์', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfacultybyid.php?fid=703', 'รหัสโครงการ 00410608108010 วิศวกรรมคอมพิวเตอร์',
    null, '2026-08-23T00:00:00+07:00', 'ค่าธรรมเนียมภาคการศึกษาแรก 23,000 บาท', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-cpe-gifted-computer-1-2', 'cmu-cpe-gifted-computer', 'โครงการรับนักเรียนที่มีอัจฉริยภาพทางคอมพิวเตอร์', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfacultybyid.php?fid=703', 'รหัสโครงการ 00410608108010 วิศวกรรมคอมพิวเตอร์',
    null, '2026-08-23T00:00:00+07:00', 'แบบ 1.2 เพิ่มเกณฑ์ TGAT/TPAT; ค่าธรรมเนียมภาคการศึกษาแรก 23,000 บาท', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-cpe-good-grade-1-1', 'cmu-cpe-good-grade', 'โครงการรับนักเรียนผู้มีผลการเรียนดีเด่น', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfacultybyid.php?fid=704', 'รหัสโครงการ 00410608108020 วิศวกรรมคอมพิวเตอร์',
    null, '2026-08-23T00:00:00+07:00', 'ค่าธรรมเนียมภาคการศึกษาแรก 23,000 บาท', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-cpe-good-grade-1-2', 'cmu-cpe-good-grade', 'โครงการรับนักเรียนผู้มีผลการเรียนดีเด่น', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfacultybyid.php?fid=704', 'รหัสโครงการ 00410608108020 วิศวกรรมคอมพิวเตอร์',
    null, '2026-08-23T00:00:00+07:00', 'แบบ 1.2 เพิ่มเกณฑ์ TGAT/TPAT; ค่าธรรมเนียมภาคการศึกษาแรก 23,000 บาท', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-cpe-engineering-ability-1-1', 'cmu-cpe-engineering-ability', 'โครงการรับนักเรียนผู้มีความรู้ ความสามารถทางวิศวกรรม', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfacultybyid.php?fid=706', 'รหัสโครงการ 00410608108031 วิศวกรรมคอมพิวเตอร์',
    null, '2026-08-23T00:00:00+07:00', 'เปิดแบบ 1.1 จำนวน 5 คน; หน้าเว็บระบุแบบ 1.2 จำนวน 0 คน', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'kmitl-it-ability-1-1', 'kmitl-it-ability', 'โครงการนักเรียนมีความสามารถด้านเทคโนโลยีสารสนเทศ', 2570, 1,
    '1-1 Portfolio', '1.1', 'Portfolio', 'draft_waiting_official',
    false, 3, 300,
    32000, 'https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1', 'รอบที่ 1-1 Portfolio TCAS 2570 (รอประกาศอย่างเป็นทางการ)',
    null, '2026-08-23T00:00:00+07:00', 'ห้ามแสดงต่อผู้ใช้จนกว่าสถานะหน้าเว็บจะเป็นประกาศอย่างเป็นทางการ', now()
from public.universities u
where u.short_name = 'KMITL'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'kmitl-academic-it-1-1', 'kmitl-academic-it', 'โครงการนักเรียนที่มีศักยภาพทางวิชาการและเทคโนโลยีสารสนเทศ', 2570, 1,
    '1-1 Portfolio', '1.1', 'Portfolio', 'draft_waiting_official',
    false, 3, 300,
    32000, 'https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1', 'รอบที่ 1-1 Portfolio TCAS 2570 (รอประกาศอย่างเป็นทางการ)',
    null, '2026-08-23T00:00:00+07:00', 'ห้ามแสดงต่อผู้ใช้จนกว่าสถานะหน้าเว็บจะเป็นประกาศอย่างเป็นทางการ', now()
from public.universities u
where u.short_name = 'KMITL'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'kmitl-english-it-1-1', 'kmitl-english-it', 'โครงการนักเรียนที่มีความสามารถด้านภาษาอังกฤษและเทคโนโลยีสารสนเทศ', 2570, 1,
    '1-1 Portfolio', '1.1', 'Portfolio', 'draft_waiting_official',
    false, 2, 300,
    32000, 'https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1', 'รอบที่ 1-1 Portfolio TCAS 2570 (รอประกาศอย่างเป็นทางการ)',
    null, '2026-08-23T00:00:00+07:00', 'ห้ามแสดงต่อผู้ใช้จนกว่าสถานะหน้าเว็บจะเป็นประกาศอย่างเป็นทางการ', now()
from public.universities u
where u.short_name = 'KMITL'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'kmutt-sit-active-recruitment-1', 'kmutt-sit-active-recruitment', 'โครงการ Active Recruitment คณะเทคโนโลยีสารสนเทศ', 2570, 1,
    '1 Portfolio', 'ครั้งที่ 1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://join.kmutt.ac.th/projects/d3746263-568f-4250-bd7d-0ff9dc0d8210', 'รอบที่ 1 โครงการ Active Recruitment คณะเทคโนโลยีสารสนเทศ (ครั้งที่ 1) ปีการศึกษา 2570',
    '2026-08-05', '2026-08-23T00:00:00+07:00', 'ประกาศมหาวิทยาลัยและเกณฑ์รายหลักสูตรลงวันที่ 5 ส.ค. 2569; 350 บาทเป็นค่าสมัคร/ค่าสอบคัดเลือกที่ชำระภายหลังเฉพาะผู้ผ่านการคัดเลือก ไม่ใช่ค่าธรรมเนียมตอนยื่นใบสมัคร', now()
from public.universities u
where u.short_name = 'KMUTT'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'kmutt-sit-active-recruitment-3', 'kmutt-sit-active-recruitment', 'โครงการ Active Recruitment คณะเทคโนโลยีสารสนเทศ', 2570, 1,
    '1 Portfolio', 'ครั้งที่ 3', 'Portfolio', 'official',
    true, null, null,
    null, 'https://join.kmutt.ac.th/projects/59adc3a3-b38c-4527-85e0-690a4cf14b91', 'รอบที่ 1 โครงการ Active Recruitment คณะเทคโนโลยีสารสนเทศ (ครั้งที่ 3) ปีการศึกษา 2570',
    '2026-08-17', '2026-08-23T00:00:00+07:00', 'หน้าโครงการและไฟล์เกณฑ์เฉพาะครั้งที่ 3 ประกาศแล้ว แต่สถานะระบบสมัครยังเป็นกำลังจะเปิด; 350 บาทชำระภายหลังเฉพาะผู้ผ่านการคัดเลือก', now()
from public.universities u
where u.short_name = 'KMUTT'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'mu-computer-engineering-portfolio-1-1', 'mu-computer-engineering-portfolio', 'TCAS 1/1 วิศวกรรมคอมพิวเตอร์', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    30000, 'https://www.eg.mahidol.ac.th/egmu/admission/tcas-admission.html', 'เกณฑ์คุณสมบัติขั้นต่ำ TCAS70/1 วิศวกรรมคอมพิวเตอร์ มหาวิทยาลัยมหิดล',
    '2026-08-10', '2026-08-23T00:00:00+07:00', 'รับ 10 คนในรอบ 1/1; ไม่เปิดรอบ 1/2; ค่าเล่าเรียนรวมตลอดหลักสูตร 240,000 บาท', now()
from public.universities u
where u.short_name = 'MU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'ku-csc-education-opportunity-1-1', 'ku-csc-education-opportunity', 'โครงการขยายโอกาสทางการศึกษา วิทยาเขตเฉลิมพระเกียรติ จังหวัดสกลนคร', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://misreg.csc.ku.ac.th/admission/?page_id=63', 'ประกาศรับสมัคร TCAS70 รอบที่ 1 โครงการขยายโอกาสทางการศึกษา',
    '2026-08-21', '2026-08-23T00:00:00+07:00', 'นำเข้าเฉพาะสาขาสายคอมที่ประกาศจำนวนรับและเกณฑ์แล้ว; วิทยาการคอมพิวเตอร์ไม่มีสัมภาษณ์ และวิศวกรรมคอมพิวเตอร์ต้องผ่าน GPAX ขั้นต่ำตามประกาศ', now()
from public.universities u
where u.short_name = 'KU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'tu-siit-osp-2027', 'tu-siit-osp', 'Outstanding Student Program (OSP)', 2570, 1,
    '1 Portfolio', 'OSP / Inter Portfolio 1', 'Scholarship exam + Inter Portfolio', 'official',
    true, null, null,
    null, 'https://admissions.siit.tu.ac.th/admission_box/outstanding-student-program-osp/', 'Outstanding Student Program (OSP) Academic Year 2027',
    '2026-03-30', '2026-08-23T00:00:00+07:00', 'เป็นเส้นทางสอบชิงทุนและรับเข้าศึกษา; ผู้ผ่าน OSP ทุกคนต้องสมัคร Inter Portfolio 1 ต่อ โดยประกาศระบุว่าไม่ต้องทำ Portfolio', now()
from public.universities u
where u.short_name = 'TU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'kmutt-sit-active-recruitment-2', 'kmutt-sit-active-recruitment', 'โครงการ Active Recruitment คณะเทคโนโลยีสารสนเทศ', 2570, 1,
    '1 Portfolio', 'ครั้งที่ 2', 'Portfolio', 'official',
    true, null, null,
    null, 'https://join.kmutt.ac.th/projects/c02bf829-5c3c-408d-8bd9-515baebb80dd', 'รอบที่ 1 โครงการ Active Recruitment คณะเทคโนโลยีสารสนเทศ (ครั้งที่ 2) ปีการศึกษา 2570',
    '2026-08-05', '2026-08-23T00:00:00+07:00', 'เกณฑ์รายหลักสูตรลงวันที่ 5 ส.ค. 2569; หน้าโครงการอัปเดต 17 ส.ค. 2569; 350 บาทชำระภายหลังเฉพาะผู้ผ่านการคัดเลือก', now()
from public.universities u
where u.short_name = 'KMUTT'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'kmutt-active-recruitment-general', 'kmutt-active-recruitment-general', 'โครงการ Active Recruitment', 2570, 1,
    '1 Portfolio', 'ทั่วไป', 'Portfolio', 'official',
    true, null, null,
    null, 'https://join.kmutt.ac.th/projects/b82694a9-f0a6-4a3a-b18f-0de4f1e8bbfc', 'รอบที่ 1 โครงการ Active Recruitment ปีการศึกษา 2570',
    '2026-08-17', '2026-08-23T00:00:00+07:00', 'นำเข้าเฉพาะหลักสูตรสายคอม/IT/เกมที่มีเกณฑ์และจำนวนรับในเอกสารวันที่ 17 ส.ค. 2569', now()
from public.universities u
where u.short_name = 'KMUTT'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'kmutt-direct-good-grade', 'kmutt-direct-good-grade', 'โครงการคัดเลือกตรง ประเภทเรียนดี', 2570, 1,
    '1 Portfolio', 'เรียนดี', 'Portfolio', 'official',
    true, null, null,
    null, 'https://join.kmutt.ac.th/projects/fe4b52a7-d942-4807-9b59-1527675dad89', 'รอบที่ 1 โครงการคัดเลือกตรง ประเภทเรียนดี ปีการศึกษา 2570',
    '2026-08-20', '2026-08-23T00:00:00+07:00', 'จำนวนรับเป็นจำนวนผู้มีสิทธิ์เข้าศึกษา ไม่ใช่จำนวนเรียกสอบ; หน้าโครงการอัปเดต 20 ส.ค. 2569', now()
from public.universities u
where u.short_name = 'KMUTT'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'kmutt-international-admission-1', 'kmutt-international-admission', 'KMUTT International Admission', 2570, 1,
    '1 Portfolio', 'ครั้งที่ 1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://join.kmutt.ac.th/projects/b44debb2-6551-4eca-9e65-8ed7a7a3a179', 'รอบที่ 1 โครงการ KMUTT International Admission (ครั้งที่ 1) ปีการศึกษา 2570',
    '2026-08-20', '2026-08-23T00:00:00+07:00', 'นำเข้าเฉพาะ CPE, CS และ Game Design ที่ประกาศเกณฑ์ครบ; หน้าโครงการอัปเดต 20 ส.ค. 2569', now()
from public.universities u
where u.short_name = 'KMUTT'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00410507106011-1-1', 'cmu-00410507106011', 'การรับนักเรียนพิการ', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410507106011; ค่าธรรมเนียมภาคการศึกษาแรก 18,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00410507107010-1-1', 'cmu-00410507107010', 'โครงการสานฝันปั้นนักวิทยาศาสตร์', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410507107010; ค่าธรรมเนียมภาคการศึกษาแรก 18,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00410507107020-1-1', 'cmu-00410507107020', 'โครงการสนับสนุนการจัดตั้งห้องเรียนวิทยาศาสตร์ในโรงเรียนฯ (วมว.)', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410507107020; ค่าธรรมเนียมภาคการศึกษาแรก 18,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00410507107030-1-1', 'cmu-00410507107030', 'โครงการรับนักเรียนจากค่ายโอลิมปิกวิชาการ', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410507107030; ค่าธรรมเนียมภาคการศึกษาแรก 18,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00410507107040-1-1', 'cmu-00410507107040', 'โครงการพัฒนาอัจฉริยภาพสำหรับเด็กและเยาวชน (ร่วมกับ สวทช.)', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410507107040; ค่าธรรมเนียมภาคการศึกษาแรก 18,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00410507107050-1-1', 'cmu-00410507107050', 'โครงการรับผู้มีความสามารถพิเศษทางวิทยาศาสตร์และเทคโนโลยี', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410507107050; ค่าธรรมเนียมภาคการศึกษาแรก 18,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00410508106011-1-1', 'cmu-00410508106011', 'การรับนักเรียนพิการ', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410508106011; ค่าธรรมเนียมภาคการศึกษาแรก 18,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00410508107010-1-1', 'cmu-00410508107010', 'โครงการรับนักเรียนจากค่ายโอลิมปิกวิชาการ', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410508107010; ค่าธรรมเนียมภาคการศึกษาแรก 18,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00410508107020-1-1', 'cmu-00410508107020', 'โครงการพัฒนาอัจฉริยภาพสำหรับเด็กและเยาวชน (ร่วมกับ สวทช.)', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410508107020; ค่าธรรมเนียมภาคการศึกษาแรก 18,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00410508107030-1-1', 'cmu-00410508107030', 'โครงการสนับสนุนการจัดตั้งห้องเรียนวิทยาศาสตร์ในโรงเรียนฯ (วมว.)', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410508107030; ค่าธรรมเนียมภาคการศึกษาแรก 18,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00410508107040-1-1', 'cmu-00410508107040', 'โครงการสานฝันปั้นนักวิทยาศาสตร์', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410508107040; ค่าธรรมเนียมภาคการศึกษาแรก 18,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00410608108040-1-1', 'cmu-00410608108040', 'โครงการความร่วมมือสร้างสังคมแห่งการเรียนรู้นวัตกรรมด้านพลังงานและสิ่งแวดล้อม', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410608108040; ค่าธรรมเนียมภาคการศึกษาแรก 23,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00410666108010-1-1', 'cmu-00410666108010', 'โครงการรับนักเรียนที่มีอัจฉริยภาพทางคอมพิวเตอร์', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410666108010; ค่าธรรมเนียมภาคการศึกษาแรก 80,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00410666108010-1-2', 'cmu-00410666108010', 'โครงการรับนักเรียนที่มีอัจฉริยภาพทางคอมพิวเตอร์', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410666108010; ค่าธรรมเนียมภาคการศึกษาแรก 80,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00410666108020-1-1', 'cmu-00410666108020', 'โครงการรับนักเรียนผู้มีความสามารถทางภาษาอังกฤษ', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410666108020; ค่าธรรมเนียมภาคการศึกษาแรก 80,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00410666108020-1-2', 'cmu-00410666108020', 'โครงการรับนักเรียนผู้มีความสามารถทางภาษาอังกฤษ', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410666108020; ค่าธรรมเนียมภาคการศึกษาแรก 80,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00410666108030-1-1', 'cmu-00410666108030', 'โครงการรับนักเรียนผู้มีผลการเรียนดีเด่น', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410666108030; ค่าธรรมเนียมภาคการศึกษาแรก 80,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00410666108030-1-2', 'cmu-00410666108030', 'โครงการรับนักเรียนผู้มีผลการเรียนดีเด่น', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410666108030; ค่าธรรมเนียมภาคการศึกษาแรก 80,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00410666108041-1-1', 'cmu-00410666108041', 'โครงการ Women in Engineering', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410666108041; ค่าธรรมเนียมภาคการศึกษาแรก 80,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00410666108041-1-2', 'cmu-00410666108041', 'โครงการ Women in Engineering', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410666108041; ค่าธรรมเนียมภาคการศึกษาแรก 80,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00410666108050-1-1', 'cmu-00410666108050', 'โครงการรับนักเรียนผู้มีความรู้ ความสามารถทางวิศวกรรม', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410666108050; ค่าธรรมเนียมภาคการศึกษาแรก 80,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00412102102010-1-1', 'cmu-00412102102010', 'การรับนักเรียนผู้มีผลด้านกีฬาดีเด่น', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412102102010; ค่าธรรมเนียมภาคการศึกษาแรก 33,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00412102103010-1-1', 'cmu-00412102103010', 'การรับนักเรียนที่มีผลการเรียนดี', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412102103010; ค่าธรรมเนียมภาคการศึกษาแรก 33,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00412102108010-1-1', 'cmu-00412102108010', 'โครงการส่งเสริมนักเรียนผู้ประกอบการร้านค้าออนไลน์', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412102108010; ค่าธรรมเนียมภาคการศึกษาแรก 33,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00412102108020-1-1', 'cmu-00412102108020', 'โครงการส่งเสริมนักเรียนผู้มีอิทธิพลทาง Social Media', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412102108020; ค่าธรรมเนียมภาคการศึกษาแรก 33,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00412102108030-1-1', 'cmu-00412102108030', 'โครงการรับนักเรียนผู้ที่มีความสามารถพิเศษฯ (Gifted IT)', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412102108030; ค่าธรรมเนียมภาคการศึกษาแรก 33,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00412104103010-1-1', 'cmu-00412104103010', 'การรับนักเรียนที่มีผลการเรียนดี', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412104103010; ค่าธรรมเนียมภาคการศึกษาแรก 38,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00412104108010-1-1', 'cmu-00412104108010', 'โครงการส่งเสริมนักเรียนผู้มีความสามารถพิเศษฯ ในการประกวดแข่งขัน', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412104108010; ค่าธรรมเนียมภาคการศึกษาแรก 38,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00412104108020-1-1', 'cmu-00412104108020', 'โครงการรับนักเรียนผู้ที่มีความสามารถพิเศษฯ (Gifted IT)', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412104108020; ค่าธรรมเนียมภาคการศึกษาแรก 38,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00412105107010-1-1', 'cmu-00412105107010', 'โครงการความร่วมมือกับอุตสาหกรรมดิจิทัล', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412105107010; ค่าธรรมเนียมภาคการศึกษาแรก 33,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00412105108010-1-1', 'cmu-00412105108010', 'โครงการผู้พัฒนานวัตกรรมดิจิทัลสร้างสรรค์', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412105108010; ค่าธรรมเนียมภาคการศึกษาแรก 33,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00412171103011-1-1', 'cmu-00412171103011', 'การรับนักเรียนที่มีผลการเรียนดี', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412171103011; ค่าธรรมเนียมภาคการศึกษาแรก 40,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00412171108011-1-1', 'cmu-00412171108011', 'โครงการส่งเสริมนักเรียนผู้มีความสามารถพิเศษฯ ในการประกวดแข่งขัน', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412171108011; ค่าธรรมเนียมภาคการศึกษาแรก 40,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00412171108020-1-1', 'cmu-00412171108020', 'โครงการรับนักเรียนผู้ที่มีความสามารถพิเศษฯ (Gifted IT)', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412171108020; ค่าธรรมเนียมภาคการศึกษาแรก 40,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00412401101010-1-1', 'cmu-00412401101010', 'การรับด้วยแฟ้มสะสมผลงาน', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412401101010; ค่าธรรมเนียมภาคการศึกษาแรก 55,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00412401101010-1-2', 'cmu-00412401101010', 'การรับด้วยแฟ้มสะสมผลงาน', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412401101010; ค่าธรรมเนียมภาคการศึกษาแรก 55,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00412401101020-1-1', 'cmu-00412401101020', 'การรับด้วยแฟ้มสะสมผลงาน', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412401101020; ค่าธรรมเนียมภาคการศึกษาแรก 55,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00412401101020-1-2', 'cmu-00412401101020', 'การรับด้วยแฟ้มสะสมผลงาน', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412401101020; ค่าธรรมเนียมภาคการศึกษาแรก 55,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00412401108010-1-1', 'cmu-00412401108010', 'โครงการรับนักเรียนที่มีความเป็นเลิศด้านภาษาอังกฤษและภาษาจีน', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412401108010; ค่าธรรมเนียมภาคการศึกษาแรก 55,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00412401108020-1-1', 'cmu-00412401108020', 'โครงการรับนักเรียนที่มีความเป็นเลิศด้าน Startup หรือผู้ประกอบการดิจิทัล', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412401108020; ค่าธรรมเนียมภาคการศึกษาแรก 55,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00412401108030-1-1', 'cmu-00412401108030', 'โครงการรับนักเรียนที่มีความเป็นเลิศด้านการสื่อสารในช่องทางดิจิทัล (Digital Influencer)', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412401108030; ค่าธรรมเนียมภาคการศึกษาแรก 55,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'cmu-00412401108040-1-1', 'cmu-00412401108040', 'โครงการรับนักเรียนที่มีผลการเรียนดีและเป็นทายาทของครอบครัวผู้ประกอบการทุกประเภท', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412401108040; ค่าธรรมเนียมภาคการศึกษาแรก 55,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'kmitl-chumphon-cpe-portfolio-1-1', 'kmitl-chumphon-cpe-portfolio', 'แฟ้มสะสมผลงาน 1-1 (วิทยาเขตชุมพรเขตรอุดมศักดิ์)', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, 300,
    20000, 'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4629_2026_08_04-11-01-24_a74b5.pdf', 'ประกาศ Portfolio รอบ 1-1 ถึง 1-5 วิทยาเขตชุมพรเขตรอุดมศักดิ์ TCAS70',
    '2026-08-03', '2026-08-23T17:12:50+07:00', 'ประกาศทางการครอบคลุมรอบ 1-1 ถึง 1-5; CURRICULUM_ID 14142, PROJECT_ID 2409 เป็นรายการรอบ 1-1 ในระบบสมัคร', now()
from public.universities u
where u.short_name = 'KMITL'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'kmitl-chumphon-cpe-good-student-14plus-1-1', 'kmitl-chumphon-cpe-good-student-14plus', 'โครงการเรียนดี 14 จังหวัดพลัส 1-1 (วิทยาเขตชุมพรเขตรอุดมศักดิ์)', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, 300,
    20000, 'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4630_2026_08_04-11-03-46_94eee.pdf', 'ประกาศโครงการเรียนดี 14 จังหวัดพลัส วิทยาเขตชุมพรเขตรอุดมศักดิ์ TCAS70',
    '2026-08-03', '2026-08-23T17:12:50+07:00', 'รายการทางการในระบบรับสมัคร: CURRICULUM_ID 14157, PROJECT_ID 2410', now()
from public.universities u
where u.short_name = 'KMITL'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'kmitl-chumphon-cpe-network-1-1', 'kmitl-chumphon-cpe-network', 'โครงการโรงเรียนหรือวิทยาลัยในเครือข่าย สจล.-ชุมพร 1-1', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, 300,
    20000, 'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4633_2026_08_04-11-33-47_8fcf4.pdf', 'ประกาศโครงการโรงเรียนหรือวิทยาลัยในเครือข่าย สจล.-ชุมพร TCAS70',
    '2026-08-03', '2026-08-23T17:12:50+07:00', 'ประกาศทางการครอบคลุมรอบ 1-1 และ 1-2; CURRICULUM_ID 14171, PROJECT_ID 2411 เป็นรายการรอบ 1-1 ในระบบสมัคร', now()
from public.universities u
where u.short_name = 'KMITL'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'kmitl-chumphon-cpe-potential-1-1', 'kmitl-chumphon-cpe-potential', 'โครงการผู้มีศักยภาพด้านวิศวกรรมและเทคโนโลยี 1-1', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, 300,
    20000, 'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4632_2026_08_04-11-30-08_2461b.pdf', 'ประกาศโครงการผู้มีศักยภาพด้านวิศวกรรมและเทคโนโลยี วิทยาเขตชุมพรเขตรอุดมศักดิ์ TCAS70',
    '2026-08-03', '2026-08-23T17:12:50+07:00', 'ประกาศทางการครอบคลุมรอบ 1-1 และ 1-2; CURRICULUM_ID 14187, PROJECT_ID 2413 เป็นรายการรอบ 1-1 ในระบบสมัคร', now()
from public.universities u
where u.short_name = 'KMITL'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'kmitl-chumphon-cpe-portfolio-1-2', 'kmitl-chumphon-cpe-portfolio', 'แฟ้มสะสมผลงาน 1-2 (วิทยาเขตชุมพรเขตรอุดมศักดิ์)', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 300,
    20000, 'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4629_2026_08_04-11-01-24_a74b5.pdf', 'ประกาศ Portfolio รอบ 1-1 ถึง 1-5 วิทยาเขตชุมพรเขตรอุดมศักดิ์ TCAS70',
    '2026-08-03', '2026-08-23T17:12:50+07:00', 'ประกาศทางการระบุรอบ 1.2; จำนวนรับวิศวกรรมคอมพิวเตอร์ 40 คนเป็นยอดรวมรอบ 1-1 ถึง 1-5', now()
from public.universities u
where u.short_name = 'KMITL'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'kmitl-chumphon-cpe-portfolio-1-3', 'kmitl-chumphon-cpe-portfolio', 'แฟ้มสะสมผลงาน 1-3 (วิทยาเขตชุมพรเขตรอุดมศักดิ์)', 2570, 1,
    '1 Portfolio', '1.3', 'Portfolio', 'official',
    true, null, 300,
    20000, 'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4629_2026_08_04-11-01-24_a74b5.pdf', 'ประกาศ Portfolio รอบ 1-1 ถึง 1-5 วิทยาเขตชุมพรเขตรอุดมศักดิ์ TCAS70',
    '2026-08-03', '2026-08-23T17:12:50+07:00', 'ประกาศทางการระบุรอบ 1.3; จำนวนรับวิศวกรรมคอมพิวเตอร์ 40 คนเป็นยอดรวมรอบ 1-1 ถึง 1-5', now()
from public.universities u
where u.short_name = 'KMITL'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'kmitl-chumphon-cpe-portfolio-1-4', 'kmitl-chumphon-cpe-portfolio', 'แฟ้มสะสมผลงาน 1-4 (วิทยาเขตชุมพรเขตรอุดมศักดิ์)', 2570, 1,
    '1 Portfolio', '1.4', 'Portfolio', 'official',
    true, null, 300,
    20000, 'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4629_2026_08_04-11-01-24_a74b5.pdf', 'ประกาศ Portfolio รอบ 1-1 ถึง 1-5 วิทยาเขตชุมพรเขตรอุดมศักดิ์ TCAS70',
    '2026-08-03', '2026-08-23T17:12:50+07:00', 'ประกาศทางการระบุรอบ 1.4; จำนวนรับวิศวกรรมคอมพิวเตอร์ 40 คนเป็นยอดรวมรอบ 1-1 ถึง 1-5', now()
from public.universities u
where u.short_name = 'KMITL'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'kmitl-chumphon-cpe-portfolio-1-5', 'kmitl-chumphon-cpe-portfolio', 'แฟ้มสะสมผลงาน 1-5 (วิทยาเขตชุมพรเขตรอุดมศักดิ์)', 2570, 1,
    '1 Portfolio', '1.5', 'Portfolio', 'official',
    true, null, 300,
    20000, 'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4629_2026_08_04-11-01-24_a74b5.pdf', 'ประกาศ Portfolio รอบ 1-1 ถึง 1-5 วิทยาเขตชุมพรเขตรอุดมศักดิ์ TCAS70',
    '2026-08-03', '2026-08-23T17:12:50+07:00', 'ประกาศทางการระบุรอบ 1.5; จำนวนรับวิศวกรรมคอมพิวเตอร์ 40 คนเป็นยอดรวมรอบ 1-1 ถึง 1-5', now()
from public.universities u
where u.short_name = 'KMITL'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'kmitl-chumphon-cpe-network-1-2', 'kmitl-chumphon-cpe-network', 'โครงการโรงเรียนหรือวิทยาลัยในเครือข่าย สจล.-ชุมพร 1-2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 300,
    20000, 'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4633_2026_08_04-11-33-47_8fcf4.pdf', 'ประกาศโครงการโรงเรียนหรือวิทยาลัยในเครือข่าย สจล.-ชุมพร TCAS70',
    '2026-08-03', '2026-08-23T17:12:50+07:00', 'ประกาศทางการระบุรอบ 1-2; จำนวนรับวิศวกรรมคอมพิวเตอร์ 15 คนเป็นยอดรวมรอบ 1-1 และ 1-2', now()
from public.universities u
where u.short_name = 'KMITL'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'kmitl-chumphon-cpe-potential-1-2', 'kmitl-chumphon-cpe-potential', 'โครงการผู้มีศักยภาพด้านวิศวกรรมและเทคโนโลยี 1-2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 300,
    20000, 'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4632_2026_08_04-11-30-08_2461b.pdf', 'ประกาศโครงการผู้มีศักยภาพด้านวิศวกรรมและเทคโนโลยี วิทยาเขตชุมพรเขตรอุดมศักดิ์ TCAS70',
    '2026-08-03', '2026-08-23T17:12:50+07:00', 'ประกาศทางการระบุรอบ 1-2; จำนวนรับวิศวกรรมคอมพิวเตอร์ 15 คนเป็นยอดรวมรอบ 1-1 และ 1-2', now()
from public.universities u
where u.short_name = 'KMITL'
on conflict (code) do update set
        university_id = excluded.university_id,
        group_code = excluded.group_code,
        name = excluded.name,
        academic_year = excluded.academic_year,
        tcas_round = excluded.tcas_round,
        round_label = excluded.round_label,
        round_variant = excluded.round_variant,
        application_type = excluded.application_type,
        publication_status = excluded.publication_status,
        is_visible = excluded.is_visible,
        selection_order_limit = excluded.selection_order_limit,
        application_fee = excluded.application_fee,
        tuition_fee_per_semester = excluded.tuition_fee_per_semester,
        source_url = excluded.source_url,
        source_title = excluded.source_title,
        source_published_at = excluded.source_published_at,
        source_checked_at = excluded.source_checked_at,
        data_notes = excluded.data_notes,
        updated_at = excluded.updated_at;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'ตารางกลางมหิดลระบุ 60 ที่นั่งรวมของหลักสูตร ICT ในรอบ 1/1 แต่ไม่แยกจำนวนระหว่างโครงการ ICT–Portfolio และ MU–Portfolio จึงไม่ใส่ตัวเลขซ้ำรายโครงการ'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'mu-ict'
where p.code = 'muict-ict-portfolio'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'ตารางกลางมหิดลระบุ 60 ที่นั่งรวมของหลักสูตร ICT ในรอบ 1/1 แต่ไม่แยกจำนวนระหว่างโครงการ ICT–Portfolio และ MU–Portfolio จึงไม่ใส่ตัวเลขซ้ำรายโครงการ'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'mu-ict'
where p.code = 'muict-mu-portfolio-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'เปิดเฉพาะที่นั่งคงเหลือจากรอบ 1/1 ตามหมายเหตุ A ของตารางกลาง จึงไม่มีจำนวนคงที่'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'mu-ict'
where p.code = 'muict-mu-portfolio-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 27, 'รหัสโครงการ 00410608108010'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cpe'
where p.code = 'cmu-cpe-gifted-computer-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 3, 'รหัสโครงการ 00410608108010'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cpe'
where p.code = 'cmu-cpe-gifted-computer-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 22, 'รหัสโครงการ 00410608108020'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cpe'
where p.code = 'cmu-cpe-good-grade-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 3, 'รหัสโครงการ 00410608108020'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cpe'
where p.code = 'cmu-cpe-good-grade-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, 'รหัสโครงการ 00410608108031'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cpe'
where p.code = 'cmu-cpe-engineering-ability-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 50, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-it'
where p.code = 'kmitl-it-ability-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-dsba'
where p.code = 'kmitl-it-ability-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-ait'
where p.code = 'kmitl-it-ability-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-it'
where p.code = 'kmitl-academic-it-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 2, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-dsba'
where p.code = 'kmitl-academic-it-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 1, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-ait'
where p.code = 'kmitl-academic-it-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-it'
where p.code = 'kmitl-english-it-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 1, 'โครงการนี้ไม่เปิดรับ DSBA'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-ait'
where p.code = 'kmitl-english-it-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 10, 'รับ ม.6 หรือ GED จำนวน 10 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-cs'
where p.code = 'kmutt-sit-active-recruitment-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

commit;
