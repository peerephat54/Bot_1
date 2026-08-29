-- Generated from datasets/tcas70_admissions.json
-- Run supabase_schema.sql before this file.
begin;

insert into public.universities (name, short_name, logo_url)
values ('มหาวิทยาลัยศรีนครินทรวิโรฒ', 'SWU', null)
on conflict (name) do update set
    short_name = excluded.short_name,
    logo_url = excluded.logo_url;

insert into public.university_campuses (
    university_id, code, name, is_main, official_url, updated_at
)
select u.id, 'prasan-mit', 'ประสานมิตร', true, 'https://admission.swu.ac.th/admissions2/news_content.php?nid=1200', now()
from public.universities u
where u.short_name = 'SWU'
on conflict (university_id, code) do update set
        name = excluded.name,
        is_main = excluded.is_main,
        official_url = excluded.official_url,
        updated_at = excluded.updated_at;

insert into public.university_campuses (
    university_id, code, name, is_main, official_url, updated_at
)
select u.id, 'ongkharak', 'องครักษ์', false, 'https://admission.swu.ac.th/admissions2/news_content.php?nid=1200', now()
from public.universities u
where u.short_name = 'SWU'
on conflict (university_id, code) do update set
        name = excluded.name,
        is_main = excluded.is_main,
        official_url = excluded.official_url,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, campus_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, campus.id, 'swu-ece-environmental-technology', 'คณะวัฒนธรรมสิ่งแวดล้อมและการท่องเที่ยวเชิงนิเวศ', 'เทคโนโลยีสิ่งแวดล้อมและทรัพยากร', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://admission.swu.ac.th/admissions2/news_content.php?nid=1200', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'ongkharak'
where u.short_name = 'SWU'
on conflict (code) do update set
        university_id = excluded.university_id,
        campus_id = excluded.campus_id,
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, campus_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, campus.id, 'swu-ece-climate-environment', 'คณะวัฒนธรรมสิ่งแวดล้อมและการท่องเที่ยวเชิงนิเวศ', 'วิทยาการการเปลี่ยนแปลงสภาพภูมิอากาศและสิ่งแวดล้อม', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://admission.swu.ac.th/admissions2/news_content.php?nid=1200', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'ongkharak'
where u.short_name = 'SWU'
on conflict (code) do update set
        university_id = excluded.university_id,
        campus_id = excluded.campus_id,
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, campus_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, campus.id, 'swu-science-mathematics', 'คณะวิทยาศาสตร์', 'คณิตศาสตร์', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://admission.swu.ac.th/admissions2/news_content.php?nid=1200', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'prasan-mit'
where u.short_name = 'SWU'
on conflict (code) do update set
        university_id = excluded.university_id,
        campus_id = excluded.campus_id,
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, campus_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, campus.id, 'swu-science-statistics', 'คณะวิทยาศาสตร์', 'สถิติ', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://admission.swu.ac.th/admissions2/news_content.php?nid=1200', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'prasan-mit'
where u.short_name = 'SWU'
on conflict (code) do update set
        university_id = excluded.university_id,
        campus_id = excluded.campus_id,
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, campus_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, campus.id, 'swu-science-chemistry', 'คณะวิทยาศาสตร์', 'เคมี', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://admission.swu.ac.th/admissions2/news_content.php?nid=1200', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'prasan-mit'
where u.short_name = 'SWU'
on conflict (code) do update set
        university_id = excluded.university_id,
        campus_id = excluded.campus_id,
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, campus_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, campus.id, 'swu-science-microbiology', 'คณะวิทยาศาสตร์', 'จุลชีววิทยา', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://admission.swu.ac.th/admissions2/news_content.php?nid=1200', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'prasan-mit'
where u.short_name = 'SWU'
on conflict (code) do update set
        university_id = excluded.university_id,
        campus_id = excluded.campus_id,
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, campus_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, campus.id, 'swu-science-biology', 'คณะวิทยาศาสตร์', 'ชีววิทยา', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://admission.swu.ac.th/admissions2/news_content.php?nid=1200', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'prasan-mit'
where u.short_name = 'SWU'
on conflict (code) do update set
        university_id = excluded.university_id,
        campus_id = excluded.campus_id,
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, campus_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, campus.id, 'swu-science-materials', 'คณะวิทยาศาสตร์', 'วัสดุศาสตร์', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://admission.swu.ac.th/admissions2/news_content.php?nid=1200', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'prasan-mit'
where u.short_name = 'SWU'
on conflict (code) do update set
        university_id = excluded.university_id,
        campus_id = excluded.campus_id,
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, campus_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, campus.id, 'swu-engineering-chemical', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมเคมี', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://admission.swu.ac.th/admissions2/news_content.php?nid=1200', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'ongkharak'
where u.short_name = 'SWU'
on conflict (code) do update set
        university_id = excluded.university_id,
        campus_id = excluded.campus_id,
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, campus_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, campus.id, 'swu-engineering-mechanical', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมเครื่องกล', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://admission.swu.ac.th/admissions2/news_content.php?nid=1200', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'ongkharak'
where u.short_name = 'SWU'
on conflict (code) do update set
        university_id = excluded.university_id,
        campus_id = excluded.campus_id,
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, campus_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, campus.id, 'swu-engineering-civil', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมโยธา', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://admission.swu.ac.th/admissions2/news_content.php?nid=1200', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'ongkharak'
where u.short_name = 'SWU'
on conflict (code) do update set
        university_id = excluded.university_id,
        campus_id = excluded.campus_id,
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, campus_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, campus.id, 'swu-engineering-industrial', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมอุตสาหการ', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://admission.swu.ac.th/admissions2/news_content.php?nid=1200', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'ongkharak'
where u.short_name = 'SWU'
on conflict (code) do update set
        university_id = excluded.university_id,
        campus_id = excluded.campus_id,
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, campus_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, campus.id, 'swu-engineering-biomedical', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมชีวการแพทย์', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://admission.swu.ac.th/admissions2/news_content.php?nid=1200', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'ongkharak'
where u.short_name = 'SWU'
on conflict (code) do update set
        university_id = excluded.university_id,
        campus_id = excluded.campus_id,
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, campus_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, campus.id, 'swu-engineering-computer', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://admission.swu.ac.th/admissions2/news_content.php?nid=1200', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'ongkharak'
where u.short_name = 'SWU'
on conflict (code) do update set
        university_id = excluded.university_id,
        campus_id = excluded.campus_id,
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, campus_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, campus.id, 'swu-engineering-electrical-power', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมไฟฟ้า - วิชาเอกวิศวกรรมไฟฟ้ากำลัง', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://admission.swu.ac.th/admissions2/news_content.php?nid=1200', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'ongkharak'
where u.short_name = 'SWU'
on conflict (code) do update set
        university_id = excluded.university_id,
        campus_id = excluded.campus_id,
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, campus_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, campus.id, 'swu-engineering-telecom-it', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมไฟฟ้า - วิชาเอกวิศวกรรมโทรคมนาคมและเทคโนโลยีสารสนเทศ', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://admission.swu.ac.th/admissions2/news_content.php?nid=1200', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'ongkharak'
where u.short_name = 'SWU'
on conflict (code) do update set
        university_id = excluded.university_id,
        campus_id = excluded.campus_id,
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, campus_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, campus.id, 'swu-engineering-logistics-bilingual', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมโลจิสติกส์ (หลักสูตร 2 ภาษา)', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทยและอังกฤษ', null, null,
    4, 'https://admission.swu.ac.th/admissions2/news_content.php?nid=1200', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'ongkharak'
where u.short_name = 'SWU'
on conflict (code) do update set
        university_id = excluded.university_id,
        campus_id = excluded.campus_id,
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, campus_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, campus.id, 'swu-engineering-environmental', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมสิ่งแวดล้อม', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://admission.swu.ac.th/admissions2/news_content.php?nid=1200', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'ongkharak'
where u.short_name = 'SWU'
on conflict (code) do update set
        university_id = excluded.university_id,
        campus_id = excluded.campus_id,
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, campus_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, campus.id, 'swu-engineering-petroleum-renewable', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมปิโตรเลียมและพลังงานหมุนเวียน (หลักสูตรนานาชาติ)', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'อังกฤษ', null, null,
    4, 'https://admission.swu.ac.th/admissions2/news_content.php?nid=1200', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'ongkharak'
where u.short_name = 'SWU'
on conflict (code) do update set
        university_id = excluded.university_id,
        campus_id = excluded.campus_id,
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, campus_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, campus.id, 'swu-engineering-cybersecurity', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมด้านความปลอดภัยไซเบอร์ (หลักสูตรนานาชาติ)', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'อังกฤษ', null, null,
    4, 'https://admission.swu.ac.th/admissions2/news_content.php?nid=1200', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'ongkharak'
where u.short_name = 'SWU'
on conflict (code) do update set
        university_id = excluded.university_id,
        campus_id = excluded.campus_id,
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
        admission_previews = excluded.admission_previews,
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
    u.id, 'swu-ece-environmental-technology-good-student-1-1', 'swu-ece-environmental-technology-good-student', 'โครงการเด็กดีมีที่เรียน - เทคโนโลยีสิ่งแวดล้อมและทรัพยากร • TCAS 1.1', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 112; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 5 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-ece-environmental-technology-special-talent-1-1', 'swu-ece-environmental-technology-special-talent', 'โครงการผู้มีทักษะพิเศษ - เทคโนโลยีสิ่งแวดล้อมและทรัพยากร • TCAS 1.1', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 114; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 5 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-ece-environmental-technology-good-student-1-2', 'swu-ece-environmental-technology-good-student', 'โครงการเด็กดีมีที่เรียน - เทคโนโลยีสิ่งแวดล้อมและทรัพยากร • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 129; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 5 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-ece-environmental-technology-special-talent-1-2', 'swu-ece-environmental-technology-special-talent', 'โครงการผู้มีทักษะพิเศษ - เทคโนโลยีสิ่งแวดล้อมและทรัพยากร • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 131; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 5 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-ece-climate-environment-good-student-1-1', 'swu-ece-climate-environment-good-student', 'โครงการเด็กดีมีที่เรียน - วิทยาการการเปลี่ยนแปลงสภาพภูมิอากาศและสิ่งแวดล้อม • TCAS 1.1', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 126; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 5 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-ece-climate-environment-special-talent-1-1', 'swu-ece-climate-environment-special-talent', 'โครงการผู้มีทักษะพิเศษ - วิทยาการการเปลี่ยนแปลงสภาพภูมิอากาศและสิ่งแวดล้อม • TCAS 1.1', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 127; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 5 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-ece-climate-environment-good-student-1-2', 'swu-ece-climate-environment-good-student', 'โครงการเด็กดีมีที่เรียน - วิทยาการการเปลี่ยนแปลงสภาพภูมิอากาศและสิ่งแวดล้อม • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 141; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 5 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-ece-climate-environment-special-talent-1-2', 'swu-ece-climate-environment-special-talent', 'โครงการผู้มีทักษะพิเศษ - วิทยาการการเปลี่ยนแปลงสภาพภูมิอากาศและสิ่งแวดล้อม • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 143; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 5 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-science-mathematics-good-student-1-2', 'swu-science-mathematics-good-student', 'โครงการเด็กดีมีที่เรียน - คณิตศาสตร์ • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 151; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 20 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-science-statistics-good-student-1-2', 'swu-science-statistics-good-student', 'โครงการเด็กดีมีที่เรียน - สถิติ • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 152; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 10 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-science-chemistry-good-student-1-1', 'swu-science-chemistry-good-student', 'โครงการเด็กดีมีที่เรียน - เคมี • TCAS 1.1', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 145; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 8 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-science-chemistry-special-talent-1-1', 'swu-science-chemistry-special-talent', 'โครงการผู้มีทักษะพิเศษ - เคมี • TCAS 1.1', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 147; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 2 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-science-chemistry-good-student-1-2', 'swu-science-chemistry-good-student', 'โครงการเด็กดีมีที่เรียน - เคมี • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 154; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 20 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-science-chemistry-special-talent-1-2', 'swu-science-chemistry-special-talent', 'โครงการผู้มีทักษะพิเศษ - เคมี • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 156; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 2 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-science-biology-good-student-1-1', 'swu-science-biology-good-student', 'โครงการเด็กดีมีที่เรียน - ชีววิทยา • TCAS 1.1', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 149; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 10 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-science-biology-good-student-1-2', 'swu-science-biology-good-student', 'โครงการเด็กดีมีที่เรียน - ชีววิทยา • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 162; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 60 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-science-materials-good-student-1-1', 'swu-science-materials-good-student', 'โครงการเด็กดีมีที่เรียน - วัสดุศาสตร์ • TCAS 1.1', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 150; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 10 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-science-materials-good-student-1-2', 'swu-science-materials-good-student', 'โครงการเด็กดีมีที่เรียน - วัสดุศาสตร์ • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 163; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 10 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-science-microbiology-good-student-1-2', 'swu-science-microbiology-good-student', 'โครงการเด็กดีมีที่เรียน - จุลชีววิทยา • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 158; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 38 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-science-microbiology-special-talent-1-2', 'swu-science-microbiology-special-talent', 'โครงการผู้มีทักษะพิเศษ - จุลชีววิทยา • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 160; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 2 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-engineering-chemical-good-student-1-2', 'swu-engineering-chemical-good-student', 'โครงการเด็กดีมีที่เรียน - วิศวกรรมเคมี • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 165; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 15 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-engineering-mechanical-good-student-1-2', 'swu-engineering-mechanical-good-student', 'โครงการเด็กดีมีที่เรียน - วิศวกรรมเครื่องกล • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 166; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 24 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-engineering-civil-good-student-1-2', 'swu-engineering-civil-good-student', 'โครงการเด็กดีมีที่เรียน - วิศวกรรมโยธา • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 167; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 15 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-engineering-industrial-good-student-1-2', 'swu-engineering-industrial-good-student', 'โครงการเด็กดีมีที่เรียน - วิศวกรรมอุตสาหการ • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 168; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 15 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-engineering-biomedical-good-student-1-2', 'swu-engineering-biomedical-good-student', 'โครงการเด็กดีมีที่เรียน - วิศวกรรมชีวการแพทย์ • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 169; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 18 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-engineering-computer-good-student-1-2', 'swu-engineering-computer-good-student', 'โครงการเด็กดีมีที่เรียน - วิศวกรรมคอมพิวเตอร์ • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 170; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 15 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-engineering-electrical-power-good-student-1-2', 'swu-engineering-electrical-power-good-student', 'โครงการเด็กดีมีที่เรียน - วิศวกรรมไฟฟ้า - วิชาเอกวิศวกรรมไฟฟ้ากำลัง • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 171; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 12 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-engineering-telecom-it-good-student-1-2', 'swu-engineering-telecom-it-good-student', 'โครงการเด็กดีมีที่เรียน - วิศวกรรมไฟฟ้า - วิชาเอกวิศวกรรมโทรคมนาคมและเทคโนโลยีสารสนเทศ • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 172; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 12 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-engineering-logistics-bilingual-good-student-1-2', 'swu-engineering-logistics-bilingual-good-student', 'โครงการเด็กดีมีที่เรียน - วิศวกรรมโลจิสติกส์ (หลักสูตร 2 ภาษา) • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 173; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 15 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-engineering-environmental-good-student-1-2', 'swu-engineering-environmental-good-student', 'โครงการเด็กดีมีที่เรียน - วิศวกรรมสิ่งแวดล้อม • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 175; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 10 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-engineering-petroleum-renewable-special-talent-1-2', 'swu-engineering-petroleum-renewable-special-talent', 'โครงการผู้มีทักษะพิเศษ - วิศวกรรมปิโตรเลียมและพลังงานหมุนเวียน (หลักสูตรนานาชาติ) • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 176; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 6 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-engineering-cybersecurity-special-talent-1-2', 'swu-engineering-cybersecurity-special-talent', 'โครงการผู้มีทักษะพิเศษ - วิศวกรรมด้านความปลอดภัยไซเบอร์ (หลักสูตรนานาชาติ) • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 178; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 6 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
select p.id, m.id, 5, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 5 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-ece-environmental-technology'
where p.code = 'swu-ece-environmental-technology-good-student-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 5 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-ece-environmental-technology'
where p.code = 'swu-ece-environmental-technology-special-talent-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 5 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-ece-environmental-technology'
where p.code = 'swu-ece-environmental-technology-good-student-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 5 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-ece-environmental-technology'
where p.code = 'swu-ece-environmental-technology-special-talent-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 5 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-ece-climate-environment'
where p.code = 'swu-ece-climate-environment-good-student-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 5 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-ece-climate-environment'
where p.code = 'swu-ece-climate-environment-special-talent-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 5 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-ece-climate-environment'
where p.code = 'swu-ece-climate-environment-good-student-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 5 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-ece-climate-environment'
where p.code = 'swu-ece-climate-environment-special-talent-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 20, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 20 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-science-mathematics'
where p.code = 'swu-science-mathematics-good-student-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 10, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 10 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-science-statistics'
where p.code = 'swu-science-statistics-good-student-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 8, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 8 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-science-chemistry'
where p.code = 'swu-science-chemistry-good-student-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 2, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 2 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-science-chemistry'
where p.code = 'swu-science-chemistry-special-talent-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 20, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 20 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-science-chemistry'
where p.code = 'swu-science-chemistry-good-student-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 2, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 2 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-science-chemistry'
where p.code = 'swu-science-chemistry-special-talent-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 10, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 10 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-science-biology'
where p.code = 'swu-science-biology-good-student-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 60, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 60 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-science-biology'
where p.code = 'swu-science-biology-good-student-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 10, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 10 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-science-materials'
where p.code = 'swu-science-materials-good-student-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 10, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 10 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-science-materials'
where p.code = 'swu-science-materials-good-student-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 38, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 38 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-science-microbiology'
where p.code = 'swu-science-microbiology-good-student-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 2, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 2 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-science-microbiology'
where p.code = 'swu-science-microbiology-special-talent-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 15, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 15 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-engineering-chemical'
where p.code = 'swu-engineering-chemical-good-student-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 24, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 24 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-engineering-mechanical'
where p.code = 'swu-engineering-mechanical-good-student-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 15, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 15 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-engineering-civil'
where p.code = 'swu-engineering-civil-good-student-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 15, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 15 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-engineering-industrial'
where p.code = 'swu-engineering-industrial-good-student-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 18, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 18 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-engineering-biomedical'
where p.code = 'swu-engineering-biomedical-good-student-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 15, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 15 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-engineering-computer'
where p.code = 'swu-engineering-computer-good-student-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 12, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 12 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-engineering-electrical-power'
where p.code = 'swu-engineering-electrical-power-good-student-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 12, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 12 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-engineering-telecom-it'
where p.code = 'swu-engineering-telecom-it-good-student-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 15, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 15 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-engineering-logistics-bilingual'
where p.code = 'swu-engineering-logistics-bilingual-good-student-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 10, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 10 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-engineering-environmental'
where p.code = 'swu-engineering-environmental-good-student-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 6, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 6 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-engineering-petroleum-renewable'
where p.code = 'swu-engineering-petroleum-renewable-special-talent-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 6, 'จำนวนรับตามตารางประกาศ มศว. TCAS70 หน้า 12: 6 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-engineering-cybersecurity'
where p.code = 'swu-engineering-cybersecurity-special-talent-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 2.5, '{"studying_semesters":4,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 4 ภาคการศึกษาในรอบ 1.1; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง, กศน. สายวิทย์-คณิต หรือ GED ตามประกาศ","หน่วยกิตกลุ่มสาระขั้นต่ำ: คณิตศาสตร์ 6 หน่วยกิต, วิทยาศาสตร์และเทคโนโลยี 12 หน่วยกิต"]'::jsonb, 'ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น จำนวนหน้ารวมไม่เกิน 15 หน้า และคัดเลือกผลงานที่ดีที่สุดตามรายละเอียดของสาขา',
    '{"portfolio_required":true,"max_pages":15,"portfolio_format":"TCASFolio PDF เท่านั้น","portfolio_weight_percent":30,"interview_weight_percent":70}'::jsonb, '["กิจกรรมหรือผลงานทางวิทยาศาสตร์ที่แสดงความสนใจด้านสิ่งแวดล้อมและทรัพยากร","คำตอบคำถามเพิ่มเติมของสาขาเกี่ยวกับปัญหาสิ่งแวดล้อม"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน 30%","สอบสัมภาษณ์ 70%"]'::jsonb, '{"คำถามเพิ่มเติม":"3 ข้อ ข้อละไม่เกิน 1000 ตัวอักษร ตามหน้ารายละเอียดของสาขา","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"คณิตศาสตร์":6,"วิทยาศาสตร์และเทคโนโลยี":12}}'::jsonb, 'GPAX อย่างน้อย 2.50; หน่วยกิตคณิตศาสตร์ 6 และวิทยาศาสตร์/เทคโนโลยี 12 หน่วยกิต; Portfolio 30% + สัมภาษณ์ 70%',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-ece-environmental-technology'
where p.code = 'swu-ece-environmental-technology-good-student-1-1'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 2.5, '{"studying_semesters":4,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 4 ภาคการศึกษาในรอบ 1.1; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง, กศน. สายวิทย์-คณิต หรือ GED ตามประกาศ","หน่วยกิตกลุ่มสาระขั้นต่ำ: คณิตศาสตร์ 6 หน่วยกิต, วิทยาศาสตร์และเทคโนโลยี 12 หน่วยกิต"]'::jsonb, 'ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น จำนวนหน้ารวมไม่เกิน 15 หน้า และคัดเลือกผลงานที่ดีที่สุดตามรายละเอียดของสาขา',
    '{"portfolio_required":true,"max_pages":15,"portfolio_format":"TCASFolio PDF เท่านั้น","portfolio_weight_percent":30,"interview_weight_percent":70}'::jsonb, '["ผ่านค่ายสิ่งแวดล้อม/ค่ายอนุรักษ์สิ่งแวดล้อมและทรัพยากรอย่างน้อย 1 ค่าย","หรือมีรางวัล/ใบประกาศจากการแข่งขันที่สัมพันธ์กับสาขา","กิจกรรมหรือผลงานทางวิทยาศาสตร์ด้านสิ่งแวดล้อมและทรัพยากร"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน 30%","สอบสัมภาษณ์ 70%"]'::jsonb, '{"คำถามเพิ่มเติม":"3 ข้อ ข้อละไม่เกิน 1000 ตัวอักษร ตามหน้ารายละเอียดของสาขา","เงื่อนไขผลงาน":"ต้องมีค่ายสิ่งแวดล้อม/กิจกรรมที่เกี่ยวข้อง หรือรางวัลตามประกาศ","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"คณิตศาสตร์":6,"วิทยาศาสตร์และเทคโนโลยี":12}}'::jsonb, 'GPAX อย่างน้อย 2.50; หน่วยกิตคณิตศาสตร์ 6 และวิทยาศาสตร์/เทคโนโลยี 12 หน่วยกิต; ต้องมีค่าย/กิจกรรมหรือรางวัลด้านสิ่งแวดล้อม; Portfolio 30% + สัมภาษณ์ 70%',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-ece-environmental-technology'
where p.code = 'swu-ece-environmental-technology-special-talent-1-1'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 2.5, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 5 ภาคการศึกษาในรอบ 1.2; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง, กศน. สายวิทย์-คณิต หรือ GED ตามประกาศ","หน่วยกิตกลุ่มสาระขั้นต่ำ: คณิตศาสตร์ 6 หน่วยกิต, วิทยาศาสตร์และเทคโนโลยี 22 หน่วยกิต"]'::jsonb, 'ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น จำนวนหน้ารวมไม่เกิน 15 หน้า และคัดเลือกผลงานที่ดีที่สุดตามรายละเอียดของสาขา',
    '{"portfolio_required":true,"max_pages":15,"portfolio_format":"TCASFolio PDF เท่านั้น","portfolio_weight_percent":30,"interview_weight_percent":70}'::jsonb, '["กิจกรรมหรือผลงานทางวิทยาศาสตร์ที่แสดงความสนใจด้านสิ่งแวดล้อมและทรัพยากร","คำตอบคำถามเพิ่มเติมของสาขาเกี่ยวกับปัญหาสิ่งแวดล้อม"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน 30%","สอบสัมภาษณ์ 70%"]'::jsonb, '{"คำถามเพิ่มเติม":"3 ข้อ ข้อละไม่เกิน 1000 ตัวอักษร ตามหน้ารายละเอียดของสาขา","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"คณิตศาสตร์":6,"วิทยาศาสตร์และเทคโนโลยี":22}}'::jsonb, 'GPAX อย่างน้อย 2.50; หน่วยกิตคณิตศาสตร์ 6 และวิทยาศาสตร์/เทคโนโลยี 22 หน่วยกิต; Portfolio 30% + สัมภาษณ์ 70%',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-ece-environmental-technology'
where p.code = 'swu-ece-environmental-technology-good-student-1-2'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 2.5, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 5 ภาคการศึกษาในรอบ 1.2; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง, กศน. สายวิทย์-คณิต หรือ GED ตามประกาศ","หน่วยกิตกลุ่มสาระขั้นต่ำ: คณิตศาสตร์ 6 หน่วยกิต, วิทยาศาสตร์และเทคโนโลยี 22 หน่วยกิต"]'::jsonb, 'ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น จำนวนหน้ารวมไม่เกิน 15 หน้า และคัดเลือกผลงานที่ดีที่สุดตามรายละเอียดของสาขา',
    '{"portfolio_required":true,"max_pages":15,"portfolio_format":"TCASFolio PDF เท่านั้น","portfolio_weight_percent":30,"interview_weight_percent":70}'::jsonb, '["ผ่านค่ายสิ่งแวดล้อม/ค่ายอนุรักษ์สิ่งแวดล้อมและทรัพยากรอย่างน้อย 1 ค่าย","หรือมีรางวัล/ใบประกาศจากการแข่งขันที่สัมพันธ์กับสาขา","กิจกรรมหรือผลงานทางวิทยาศาสตร์ด้านสิ่งแวดล้อมและทรัพยากร"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน 30%","สอบสัมภาษณ์ 70%"]'::jsonb, '{"คำถามเพิ่มเติม":"3 ข้อ ข้อละไม่เกิน 1000 ตัวอักษร ตามหน้ารายละเอียดของสาขา","เงื่อนไขผลงาน":"ต้องมีค่ายสิ่งแวดล้อม/กิจกรรมที่เกี่ยวข้อง หรือรางวัลตามประกาศ","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"คณิตศาสตร์":6,"วิทยาศาสตร์และเทคโนโลยี":22}}'::jsonb, 'GPAX อย่างน้อย 2.50; หน่วยกิตคณิตศาสตร์ 6 และวิทยาศาสตร์/เทคโนโลยี 22 หน่วยกิต; ต้องมีค่าย/กิจกรรมหรือรางวัลด้านสิ่งแวดล้อม; Portfolio 30% + สัมภาษณ์ 70%',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-ece-environmental-technology'
where p.code = 'swu-ece-environmental-technology-special-talent-1-2'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 2.0, '{"studying_semesters":4,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 4 ภาคการศึกษาในรอบ 1.1; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง, หลักสูตรนานาชาติ, ปวช., กศน. หรือ GED ตามประกาศ"]'::jsonb, 'ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น จำนวนหน้ารวมไม่เกิน 15 หน้า และคัดเลือกผลงานที่ดีที่สุดตามรายละเอียดของสาขา',
    '{"portfolio_required":true,"max_pages":15,"portfolio_format":"TCASFolio PDF เท่านั้น","portfolio_weight_percent":70,"interview_weight_percent":30}'::jsonb, '["ผลงานที่แสดงการประยุกต์ใช้เทคโนโลยีสิ่งแวดล้อมกับความสามารถพิเศษ","คำตอบคำถามเพิ่มเติมเกี่ยวกับความสนใจและผลงานด้านสิ่งแวดล้อม"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน 70%","สอบสัมภาษณ์ 30%"]'::jsonb, '{"คำถามเพิ่มเติม":"3 ข้อ ข้อละไม่เกิน 2000 ตัวอักษร/รูป ตามประกาศ","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน"}'::jsonb, 'GPAX อย่างน้อย 2.00; Portfolio 70% + สัมภาษณ์ 30%',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-ece-climate-environment'
where p.code = 'swu-ece-climate-environment-good-student-1-1'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 2.5, '{"studying_semesters":4,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 4 ภาคการศึกษาในรอบ 1.1; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง, หลักสูตรนานาชาติ, ปวช., กศน. หรือ GED ตามประกาศ"]'::jsonb, 'ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น จำนวนหน้ารวมไม่เกิน 15 หน้า และคัดเลือกผลงานที่ดีที่สุดตามรายละเอียดของสาขา',
    '{"portfolio_required":true,"max_pages":15,"portfolio_format":"TCASFolio PDF เท่านั้น","portfolio_weight_percent":70,"interview_weight_percent":30}'::jsonb, '["ผ่านค่ายสิ่งแวดล้อม/ค่ายอนุรักษ์สิ่งแวดล้อมและทรัพยากรอย่างน้อย 1 ค่าย","หรือมีรางวัล/ใบประกาศจากการแข่งขันที่สัมพันธ์กับสาขา","ผลงานที่แสดงการประยุกต์ใช้เทคโนโลยีสิ่งแวดล้อมกับความสามารถพิเศษ"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน 70%","สอบสัมภาษณ์ 30%"]'::jsonb, '{"คำถามเพิ่มเติม":"3 ข้อ ข้อละไม่เกิน 2000 ตัวอักษร/รูป ตามประกาศ","เงื่อนไขผลงาน":"ต้องมีค่าย/กิจกรรมหรือรางวัลด้านสิ่งแวดล้อมตามประกาศ","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน"}'::jsonb, 'GPAX อย่างน้อย 2.50; ต้องมีค่าย/กิจกรรมหรือรางวัลด้านสิ่งแวดล้อม; Portfolio 70% + สัมภาษณ์ 30%',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-ece-climate-environment'
where p.code = 'swu-ece-climate-environment-special-talent-1-1'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 2.0, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 5 ภาคการศึกษาในรอบ 1.2; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง, หลักสูตรนานาชาติ, ปวช., กศน. หรือ GED ตามประกาศ"]'::jsonb, 'ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น จำนวนหน้ารวมไม่เกิน 15 หน้า และคัดเลือกผลงานที่ดีที่สุดตามรายละเอียดของสาขา',
    '{"portfolio_required":true,"max_pages":15,"portfolio_format":"TCASFolio PDF เท่านั้น","portfolio_weight_percent":70,"interview_weight_percent":30}'::jsonb, '["ผลงานที่แสดงการประยุกต์ใช้เทคโนโลยีสิ่งแวดล้อมกับความสามารถพิเศษ","คำตอบคำถามเพิ่มเติมเกี่ยวกับความสนใจและผลงานด้านสิ่งแวดล้อม"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน 70%","สอบสัมภาษณ์ 30%"]'::jsonb, '{"คำถามเพิ่มเติม":"3 ข้อ ข้อละไม่เกิน 2000 ตัวอักษร/รูป ตามประกาศ","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน"}'::jsonb, 'GPAX อย่างน้อย 2.00; Portfolio 70% + สัมภาษณ์ 30%',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-ece-climate-environment'
where p.code = 'swu-ece-climate-environment-good-student-1-2'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 2.5, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 5 ภาคการศึกษาในรอบ 1.2; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง, หลักสูตรนานาชาติ, ปวช., กศน. หรือ GED ตามประกาศ"]'::jsonb, 'ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น จำนวนหน้ารวมไม่เกิน 15 หน้า และคัดเลือกผลงานที่ดีที่สุดตามรายละเอียดของสาขา',
    '{"portfolio_required":true,"max_pages":15,"portfolio_format":"TCASFolio PDF เท่านั้น","portfolio_weight_percent":70,"interview_weight_percent":30}'::jsonb, '["ผ่านค่ายสิ่งแวดล้อม/ค่ายอนุรักษ์สิ่งแวดล้อมและทรัพยากรอย่างน้อย 1 ค่าย","หรือมีรางวัล/ใบประกาศจากการแข่งขันที่สัมพันธ์กับสาขา","ผลงานที่แสดงการประยุกต์ใช้เทคโนโลยีสิ่งแวดล้อมกับความสามารถพิเศษ"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน 70%","สอบสัมภาษณ์ 30%"]'::jsonb, '{"คำถามเพิ่มเติม":"3 ข้อ ข้อละไม่เกิน 2000 ตัวอักษร/รูป ตามประกาศ","เงื่อนไขผลงาน":"ต้องมีค่าย/กิจกรรมหรือรางวัลด้านสิ่งแวดล้อมตามประกาศ","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน"}'::jsonb, 'GPAX อย่างน้อย 2.50; ต้องมีค่าย/กิจกรรมหรือรางวัลด้านสิ่งแวดล้อม; Portfolio 70% + สัมภาษณ์ 30%',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-ece-climate-environment'
where p.code = 'swu-ece-climate-environment-special-talent-1-2'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 2.75, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 5 ภาคการศึกษาในรอบ 1.2; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง","หน่วยกิตกลุ่มสาระขั้นต่ำ: คณิตศาสตร์ 12 หน่วยกิต, วิทยาศาสตร์และเทคโนโลยี 22 หน่วยกิต, ภาษาต่างประเทศ 9 หน่วยกิต"]'::jsonb, 'ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น แนบประวัติส่วนตัว ผลการเรียน หนังสือรับรอง กิจกรรม และผลงานตามที่สาขากำหนด ไม่กำหนดจำนวนหน้า',
    '{"portfolio_required":true,"portfolio_format":"TCASFolio PDF เท่านั้น"}'::jsonb, '["ผลงานการแข่งขันวิชาการด้านคณิตศาสตร์หรือวิทยาศาสตร์","กิจกรรมวิชาการ ผู้นำนักเรียน หรือกิจกรรมจิตอาสา","โครงงาน/ความสามารถโดดเด่น/ความสนใจด้านคณิตศาสตร์"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน 50%","สัมภาษณ์ 50%"]'::jsonb, '{"คำถามเพิ่มเติม":"แสดงกิจกรรม/ผลงานและหลักฐานการเข้าร่วมตามหัวข้อของสาขา","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"คณิตศาสตร์":12,"วิทยาศาสตร์และเทคโนโลยี":22,"ภาษาต่างประเทศ":9}}'::jsonb, 'GPAX อย่างน้อย 2.75; หน่วยกิตคณิตศาสตร์ 12, วิทยาศาสตร์/เทคโนโลยี 22 และภาษาต่างประเทศ 9 หน่วยกิต; Portfolio 50% + สัมภาษณ์ 50%',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-science-mathematics'
where p.code = 'swu-science-mathematics-good-student-1-2'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 2.75, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{"คณิตศาสตร์":3.0}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 5 ภาคการศึกษาในรอบ 1.2; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง และรับเฉพาะนักเรียนชั้นปีล่าสุด","หน่วยกิตกลุ่มสาระขั้นต่ำ: คณิตศาสตร์ 12 หน่วยกิต"]'::jsonb, 'ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น แนบประวัติส่วนตัว ผลการเรียน หนังสือรับรอง กิจกรรม และผลงานตามที่สาขากำหนด ไม่กำหนดจำนวนหน้า',
    '{"portfolio_required":true,"portfolio_format":"TCASFolio PDF เท่านั้น"}'::jsonb, '["ผลงานหรือกิจกรรมทางสถิติ คณิตศาสตร์ หรือวิทยาการข้อมูล","กิจกรรมวิชาการ ผู้นำนักเรียน หรือกิจกรรมจิตอาสา"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน 50%","สัมภาษณ์ 50%"]'::jsonb, '{"คำถามเพิ่มเติม":"ระบุความสามารถพิเศษที่เกี่ยวข้องกับสถิติ คณิตศาสตร์ หรือวิทยาการข้อมูล","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"คณิตศาสตร์":12},"คะแนนเฉลี่ยกลุ่มสาระ":{"คณิตศาสตร์":3.0}}'::jsonb, 'GPAX อย่างน้อย 2.75; หน่วยกิตคณิตศาสตร์ 12 หน่วยกิต; คะแนนเฉลี่ยคณิตศาสตร์อย่างน้อย 3.00; Portfolio 50% + สัมภาษณ์ 50%',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-science-statistics'
where p.code = 'swu-science-statistics-good-student-1-2'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 2.75, '{"studying_semesters":4,"graduated_semesters":6}'::jsonb, '{"คณิตศาสตร์":2.75,"วิทยาศาสตร์และเทคโนโลยี":2.75}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 4 ภาคการศึกษาในรอบ 1.1; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง","หน่วยกิตกลุ่มสาระขั้นต่ำ: คณิตศาสตร์ 6 หน่วยกิต, วิทยาศาสตร์และเทคโนโลยี 15 หน่วยกิต"]'::jsonb, 'ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น แนบประวัติส่วนตัว ผลการเรียน หนังสือรับรอง กิจกรรม และผลงานตามที่สาขากำหนด ไม่กำหนดจำนวนหน้า; ผลงานแต่ละด้านไม่เกิน 4 ผลงาน',
    '{"portfolio_required":true,"portfolio_format":"TCASFolio PDF เท่านั้น","portfolio_weight_percent":80,"academic_record_weight_percent":10,"essay_weight_percent":10}'::jsonb, '["ผลงานวิชาการด้านวิทยาศาสตร์ คณิตศาสตร์ หรือคอมพิวเตอร์","กิจกรรมผู้นำ/การบริหารจัดการ และกิจกรรมจิตสาธารณะ","รางวัลหรือเกียรติบัตรด้านวิทยาศาสตร์ตามประกาศ","คลิปวิดีโอไม่เกิน 5 นาทีหรือเรียงความ ออกแบบการแก้ปัญหาด้วยกระบวนการทางวิทยาศาสตร์"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน 80%","ผลการเรียน 10%","เรียงความ 10%"]'::jsonb, '{"คำถามเพิ่มเติม":"ตอบโจทย์การออกแบบการแก้ปัญหาด้วยกระบวนการทางวิทยาศาสตร์","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"คณิตศาสตร์":6,"วิทยาศาสตร์และเทคโนโลยี":15},"คะแนนเฉลี่ยกลุ่มสาระ":{"คณิตศาสตร์":2.75,"วิทยาศาสตร์และเทคโนโลยี":2.75}}'::jsonb, 'GPAX อย่างน้อย 2.75; หน่วยกิตคณิตศาสตร์ 6 และวิทยาศาสตร์/เทคโนโลยี 15 หน่วยกิต; Portfolio 80% + ผลการเรียน 10% + เรียงความ 10%',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-science-chemistry'
where p.code = 'swu-science-chemistry-good-student-1-1'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 2.75, '{"studying_semesters":4,"graduated_semesters":6}'::jsonb, '{"คณิตศาสตร์":2.75,"วิทยาศาสตร์และเทคโนโลยี":2.75}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 4 ภาคการศึกษาในรอบ 1.1; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง","หน่วยกิตกลุ่มสาระขั้นต่ำ: คณิตศาสตร์ 6 หน่วยกิต, วิทยาศาสตร์และเทคโนโลยี 15 หน่วยกิต"]'::jsonb, 'ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น แนบประวัติส่วนตัว ผลการเรียน หนังสือรับรอง กิจกรรม และผลงานตามที่สาขากำหนด ไม่กำหนดจำนวนหน้า; ผลงานแต่ละด้านไม่เกิน 4 ผลงาน',
    '{"portfolio_required":true,"portfolio_format":"TCASFolio PDF เท่านั้น","portfolio_weight_percent":80,"academic_record_weight_percent":10,"essay_weight_percent":10}'::jsonb, '["ผลงานวิชาการด้านวิทยาศาสตร์ คณิตศาสตร์ หรือคอมพิวเตอร์","กิจกรรมผู้นำ/การบริหารจัดการ และกิจกรรมจิตสาธารณะ","รางวัลหรือเกียรติบัตรด้านวิทยาศาสตร์ตามประกาศ","คลิปวิดีโอไม่เกิน 5 นาทีหรือเรียงความ ออกแบบการแก้ปัญหาด้วยกระบวนการทางวิทยาศาสตร์","ผ่าน สอวน. อย่างน้อย 1 ค่าย หรือได้รับรางวัลระดับชาติ/นานาชาติด้านวิทยาศาสตร์"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน 80%","ผลการเรียน 10%","เรียงความ 10%"]'::jsonb, '{"คำถามเพิ่มเติม":"ตอบโจทย์การออกแบบการแก้ปัญหาด้วยกระบวนการทางวิทยาศาสตร์","เงื่อนไขผู้มีทักษะพิเศษ":"ผ่าน สอวน. อย่างน้อย 1 ค่าย หรือมีรางวัลวิทยาศาสตร์ระดับชาติ/นานาชาติ","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"คณิตศาสตร์":6,"วิทยาศาสตร์และเทคโนโลยี":15},"คะแนนเฉลี่ยกลุ่มสาระ":{"คณิตศาสตร์":2.75,"วิทยาศาสตร์และเทคโนโลยี":2.75}}'::jsonb, 'GPAX อย่างน้อย 2.75; หน่วยกิตคณิตศาสตร์ 6 และวิทยาศาสตร์/เทคโนโลยี 15 หน่วยกิต; ต้องมี สอวน. หรือรางวัลวิทยาศาสตร์ตามประกาศ; Portfolio 80% + ผลการเรียน 10% + เรียงความ 10%',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-science-chemistry'
where p.code = 'swu-science-chemistry-special-talent-1-1'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 2.75, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{"คณิตศาสตร์":2.75,"วิทยาศาสตร์และเทคโนโลยี":2.75}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 5 ภาคการศึกษาในรอบ 1.2; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง","หน่วยกิตกลุ่มสาระขั้นต่ำ: คณิตศาสตร์ 12 หน่วยกิต, วิทยาศาสตร์และเทคโนโลยี 22 หน่วยกิต"]'::jsonb, 'ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น แนบประวัติส่วนตัว ผลการเรียน หนังสือรับรอง กิจกรรม และผลงานตามที่สาขากำหนด ไม่กำหนดจำนวนหน้า; ผลงานแต่ละด้านไม่เกิน 4 ผลงาน',
    '{"portfolio_required":true,"portfolio_format":"TCASFolio PDF เท่านั้น","portfolio_weight_percent":80,"academic_record_weight_percent":10,"essay_weight_percent":10}'::jsonb, '["ผลงานวิชาการด้านวิทยาศาสตร์ คณิตศาสตร์ หรือคอมพิวเตอร์","กิจกรรมผู้นำ/การบริหารจัดการ และกิจกรรมจิตสาธารณะ","รางวัลหรือเกียรติบัตรด้านวิทยาศาสตร์ตามประกาศ","คลิปวิดีโอไม่เกิน 5 นาทีหรือเรียงความ ออกแบบการแก้ปัญหาด้วยกระบวนการทางวิทยาศาสตร์"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน 80%","ผลการเรียน 10%","เรียงความ 10%"]'::jsonb, '{"คำถามเพิ่มเติม":"ตอบโจทย์การออกแบบการแก้ปัญหาด้วยกระบวนการทางวิทยาศาสตร์","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"คณิตศาสตร์":12,"วิทยาศาสตร์และเทคโนโลยี":22},"คะแนนเฉลี่ยกลุ่มสาระ":{"คณิตศาสตร์":2.75,"วิทยาศาสตร์และเทคโนโลยี":2.75}}'::jsonb, 'GPAX อย่างน้อย 2.75; หน่วยกิตคณิตศาสตร์ 12 และวิทยาศาสตร์/เทคโนโลยี 22 หน่วยกิต; Portfolio 80% + ผลการเรียน 10% + เรียงความ 10%',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-science-chemistry'
where p.code = 'swu-science-chemistry-good-student-1-2'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 2.75, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{"คณิตศาสตร์":2.75,"วิทยาศาสตร์และเทคโนโลยี":2.75}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 5 ภาคการศึกษาในรอบ 1.2; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง","หน่วยกิตกลุ่มสาระขั้นต่ำ: คณิตศาสตร์ 12 หน่วยกิต, วิทยาศาสตร์และเทคโนโลยี 22 หน่วยกิต"]'::jsonb, 'ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น แนบประวัติส่วนตัว ผลการเรียน หนังสือรับรอง กิจกรรม และผลงานตามที่สาขากำหนด ไม่กำหนดจำนวนหน้า; ผลงานแต่ละด้านไม่เกิน 4 ผลงาน',
    '{"portfolio_required":true,"portfolio_format":"TCASFolio PDF เท่านั้น","portfolio_weight_percent":80,"academic_record_weight_percent":10,"essay_weight_percent":10}'::jsonb, '["ผลงานวิชาการด้านวิทยาศาสตร์ คณิตศาสตร์ หรือคอมพิวเตอร์","กิจกรรมผู้นำ/การบริหารจัดการ และกิจกรรมจิตสาธารณะ","รางวัลหรือเกียรติบัตรด้านวิทยาศาสตร์ตามประกาศ","คลิปวิดีโอไม่เกิน 5 นาทีหรือเรียงความ ออกแบบการแก้ปัญหาด้วยกระบวนการทางวิทยาศาสตร์","ผ่าน สอวน. อย่างน้อย 1 ค่าย หรือได้รับรางวัลระดับชาติ/นานาชาติด้านวิทยาศาสตร์"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน 80%","ผลการเรียน 10%","เรียงความ 10%"]'::jsonb, '{"คำถามเพิ่มเติม":"ตอบโจทย์การออกแบบการแก้ปัญหาด้วยกระบวนการทางวิทยาศาสตร์","เงื่อนไขผู้มีทักษะพิเศษ":"ผ่าน สอวน. อย่างน้อย 1 ค่าย หรือมีรางวัลวิทยาศาสตร์ระดับชาติ/นานาชาติ","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"คณิตศาสตร์":12,"วิทยาศาสตร์และเทคโนโลยี":22},"คะแนนเฉลี่ยกลุ่มสาระ":{"คณิตศาสตร์":2.75,"วิทยาศาสตร์และเทคโนโลยี":2.75}}'::jsonb, 'GPAX อย่างน้อย 2.75; หน่วยกิตคณิตศาสตร์ 12 และวิทยาศาสตร์/เทคโนโลยี 22 หน่วยกิต; ต้องมี สอวน. หรือรางวัลวิทยาศาสตร์ตามประกาศ; Portfolio 80% + ผลการเรียน 10% + เรียงความ 10%',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-science-chemistry'
where p.code = 'swu-science-chemistry-special-talent-1-2'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 2.5, '{"studying_semesters":4,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 4 ภาคการศึกษาในรอบ 1.1; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง และรับเฉพาะนักเรียนชั้นปีล่าสุด","หน่วยกิตกลุ่มสาระขั้นต่ำ: วิทยาศาสตร์และเทคโนโลยี 24 หน่วยกิต"]'::jsonb, 'ส่ง TCASFolio เท่านั้น จำนวนรวมไม่เกิน 10 หน้า; เรียงความความตั้งใจเรียนและเป้าหมายชีวิต 250 - 300 คำ',
    '{"portfolio_required":true,"max_pages":10,"portfolio_format":"TCASFolio PDF เท่านั้น","portfolio_weight_percent":70,"academic_record_weight_percent":30}'::jsonb, '["โครงงานวิทยาศาสตร์ (ถ้ามี) พร้อมสรุปเนื้อหา 150 - 200 คำ","กิจกรรมและผลงานที่แสดงความสนใจด้านชีววิทยา/วิทยาศาสตร์"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน 70%","ผลการเรียน 30%"]'::jsonb, '{"คำถามเพิ่มเติม":"สรุปโครงงานวิทยาศาสตร์ (ถ้ามี) และเขียนเรียงความความตั้งใจเรียน/เป้าหมายชีวิต","หนังสือรับรอง":"ไม่จำเป็นต้องแนบหนังสือรับรอง","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"วิทยาศาสตร์และเทคโนโลยี":24}}'::jsonb, 'GPAX อย่างน้อย 2.50; หน่วยกิตวิทยาศาสตร์และเทคโนโลยี 24 หน่วยกิต; Portfolio 70% + ผลการเรียน 30%',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-science-biology'
where p.code = 'swu-science-biology-good-student-1-1'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 2.5, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 5 ภาคการศึกษาในรอบ 1.2; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง และรับเฉพาะนักเรียนชั้นปีล่าสุด","หน่วยกิตกลุ่มสาระขั้นต่ำ: วิทยาศาสตร์และเทคโนโลยี 28 หน่วยกิต"]'::jsonb, 'ส่ง TCASFolio เท่านั้น จำนวนรวมไม่เกิน 10 หน้า; เรียงความความตั้งใจเรียนและเป้าหมายชีวิต 250 - 300 คำ',
    '{"portfolio_required":true,"max_pages":10,"portfolio_format":"TCASFolio PDF เท่านั้น","portfolio_weight_percent":70,"academic_record_weight_percent":30}'::jsonb, '["โครงงานวิทยาศาสตร์ (ถ้ามี) พร้อมสรุปเนื้อหา 150 - 200 คำ","กิจกรรมและผลงานที่แสดงความสนใจด้านชีววิทยา/วิทยาศาสตร์"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน 70%","ผลการเรียน 30%"]'::jsonb, '{"คำถามเพิ่มเติม":"สรุปโครงงานวิทยาศาสตร์ (ถ้ามี) และเขียนเรียงความความตั้งใจเรียน/เป้าหมายชีวิต","หนังสือรับรอง":"ไม่จำเป็นต้องแนบหนังสือรับรอง","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"วิทยาศาสตร์และเทคโนโลยี":28}}'::jsonb, 'GPAX อย่างน้อย 2.50; หน่วยกิตวิทยาศาสตร์และเทคโนโลยี 28 หน่วยกิต; Portfolio 70% + ผลการเรียน 30%',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-science-biology'
where p.code = 'swu-science-biology-good-student-1-2'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 2.5, '{"studying_semesters":4,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 4 ภาคการศึกษาในรอบ 1.1; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง, หลักสูตรนานาชาติ, ปวช., กศน. หรือ GED ตามประกาศ","หน่วยกิตกลุ่มสาระขั้นต่ำ: คณิตศาสตร์ 10 หน่วยกิต, วิทยาศาสตร์และเทคโนโลยี 20 หน่วยกิต"]'::jsonb, 'ส่ง TCASFolio เท่านั้น ไม่กำหนดจำนวนหน้า; รวมประวัติส่วนตัว ผลการเรียน หนังสือรับรอง โครงงาน กิจกรรม การอบรม และรางวัลตามรายละเอียดสาขา',
    '{"portfolio_required":true,"portfolio_format":"TCASFolio PDF เท่านั้น"}'::jsonb, '["โครงงานวิทยาศาสตร์และกิจกรรมในโรงเรียน/จิตอาสา","การอบรมพัฒนาตนเองและเกียรติบัตร/รางวัลที่ดีที่สุด","เรียงความแสดงความตั้งใจและเหตุผลในการสมัคร"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน","ผลการเรียน","เรียงความ ทัศนคติ และบุคลิกภาพ"]'::jsonb, '{"คำถามเพิ่มเติม":"เขียนเรียงความแสดงความตั้งใจและเหตุผลในการสมัคร","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"คณิตศาสตร์":10,"วิทยาศาสตร์และเทคโนโลยี":20}}'::jsonb, 'GPAX อย่างน้อย 2.50; หน่วยกิตคณิตศาสตร์ 10 และวิทยาศาสตร์/เทคโนโลยี 20 หน่วยกิต; พิจารณา Portfolio ผลการเรียน เรียงความ ทัศนคติ และบุคลิกภาพ',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-science-materials'
where p.code = 'swu-science-materials-good-student-1-1'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 2.5, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 5 ภาคการศึกษาในรอบ 1.2; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง, หลักสูตรนานาชาติ, ปวช., กศน. หรือ GED ตามประกาศ","หน่วยกิตกลุ่มสาระขั้นต่ำ: คณิตศาสตร์ 12 หน่วยกิต, วิทยาศาสตร์และเทคโนโลยี 20 หน่วยกิต"]'::jsonb, 'ส่ง TCASFolio เท่านั้น ไม่กำหนดจำนวนหน้า; รวมประวัติส่วนตัว ผลการเรียน หนังสือรับรอง โครงงาน กิจกรรม การอบรม และรางวัลตามรายละเอียดสาขา',
    '{"portfolio_required":true,"portfolio_format":"TCASFolio PDF เท่านั้น"}'::jsonb, '["โครงงานวิทยาศาสตร์และกิจกรรมในโรงเรียน/จิตอาสา","การอบรมพัฒนาตนเองและเกียรติบัตร/รางวัลที่ดีที่สุด","เรียงความแสดงความตั้งใจและเหตุผลในการสมัคร"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน","ผลการเรียน","เรียงความ ทัศนคติ และบุคลิกภาพ"]'::jsonb, '{"คำถามเพิ่มเติม":"เขียนเรียงความแสดงความตั้งใจและเหตุผลในการสมัคร","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"คณิตศาสตร์":12,"วิทยาศาสตร์และเทคโนโลยี":20}}'::jsonb, 'GPAX อย่างน้อย 2.50; หน่วยกิตคณิตศาสตร์ 12 และวิทยาศาสตร์/เทคโนโลยี 20 หน่วยกิต; พิจารณา Portfolio ผลการเรียน เรียงความ ทัศนคติ และบุคลิกภาพ',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-science-materials'
where p.code = 'swu-science-materials-good-student-1-2'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 3.25, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{"คณิตศาสตร์":3.0,"วิทยาศาสตร์และเทคโนโลยี":3.0}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 5 ภาคการศึกษาในรอบ 1.2; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง, หลักสูตรนานาชาติ, กศน. หรือ GED ตามประกาศ","หน่วยกิตกลุ่มสาระขั้นต่ำ: คณิตศาสตร์ 12 หน่วยกิต, วิทยาศาสตร์และเทคโนโลยี 22 หน่วยกิต"]'::jsonb, 'ส่ง TCASFolio เท่านั้น ไม่จำกัดจำนวนหน้า; ผลงานที่ดีที่สุดไม่เกิน 10 ผลงาน; แนบโปสเตอร์โครงงานวิจัยทางวิทยาศาสตร์ JPG 1 หน้า',
    '{"portfolio_required":true,"portfolio_format":"TCASFolio PDF เท่านั้น และโปสเตอร์โครงงานเป็น JPG 1 หน้า"}'::jsonb, '["โครงงานวิจัยทางวิทยาศาสตร์และโปสเตอร์สรุปโครงงาน","ค่ายหรือโครงการพัฒนาทักษะพิเศษ/วิชาการ เช่น ค่าย สอวน.","ผลงานหรือกิจกรรมที่เกี่ยวข้องกับวิทยาศาสตร์"]'::jsonb, '["TCASFolio","หนังสือรับรองจากผู้อำนวยการ (JPG)","ใบ ปพ. รวม 5 ภาคการศึกษา (JPG)","โปสเตอร์โครงงานวิจัยทางวิทยาศาสตร์ 1 หน้า (JPG)"]'::jsonb,
    '["แฟ้มสะสมผลงาน 25%","ผลการเรียนและคะแนนพื้นฐาน 25%","โครงงานวิทยาศาสตร์ 50%"]'::jsonb, '{"คำถามเพิ่มเติม":"อธิบายโครงงาน ที่มาและความสำคัญ; ระบุค่าย/โครงการที่เคยเข้าร่วม","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"คณิตศาสตร์":12,"วิทยาศาสตร์และเทคโนโลยี":22},"คะแนนเฉลี่ยกลุ่มสาระ":{"คณิตศาสตร์":3.0,"วิทยาศาสตร์และเทคโนโลยี":3.0}}'::jsonb, 'GPAX อย่างน้อย 3.25; หน่วยกิตคณิตศาสตร์ 12 และวิทยาศาสตร์/เทคโนโลยี 22 หน่วยกิต; โครงงานวิทยาศาสตร์เป็นองค์ประกอบหลักตามสัดส่วนประกาศ',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-science-microbiology'
where p.code = 'swu-science-microbiology-good-student-1-2'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 3.25, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{"คณิตศาสตร์":3.0,"วิทยาศาสตร์และเทคโนโลยี":3.0}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 5 ภาคการศึกษาในรอบ 1.2; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง, หลักสูตรนานาชาติ, กศน. หรือ GED ตามประกาศ","หน่วยกิตกลุ่มสาระขั้นต่ำ: คณิตศาสตร์ 12 หน่วยกิต, วิทยาศาสตร์และเทคโนโลยี 22 หน่วยกิต"]'::jsonb, 'ส่ง TCASFolio เท่านั้น ไม่จำกัดจำนวนหน้า; ผลงานที่ดีที่สุดไม่เกิน 10 ผลงาน; แนบโปสเตอร์โครงงานวิจัยทางวิทยาศาสตร์ JPG 1 หน้า',
    '{"portfolio_required":true,"portfolio_format":"TCASFolio PDF เท่านั้น และโปสเตอร์โครงงานเป็น JPG 1 หน้า"}'::jsonb, '["โครงงานวิจัยทางวิทยาศาสตร์และโปสเตอร์สรุปโครงงาน","ค่ายหรือโครงการพัฒนาทักษะพิเศษ/วิชาการ เช่น ค่าย สอวน.","ผลงานหรือกิจกรรมที่เกี่ยวข้องกับวิทยาศาสตร์"]'::jsonb, '["TCASFolio","หนังสือรับรองจากผู้อำนวยการ (JPG)","ใบ ปพ. รวม 5 ภาคการศึกษา (JPG)","โปสเตอร์โครงงานวิจัยทางวิทยาศาสตร์ 1 หน้า (JPG)"]'::jsonb,
    '["แฟ้มสะสมผลงาน 20%","ผลการเรียนและคะแนนพื้นฐาน 20%","โครงงานวิทยาศาสตร์ 40%","เกณฑ์การผ่านค่ายทักษะพิเศษ 20%"]'::jsonb, '{"คำถามเพิ่มเติม":"อธิบายโครงงาน ที่มาและความสำคัญ; ระบุค่าย/โครงการที่เคยเข้าร่วม","เงื่อนไขผู้มีทักษะพิเศษ":"ระบุค่าย/โครงการพัฒนาทักษะพิเศษหรือวิชาการ และระดับที่ผ่าน","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"คณิตศาสตร์":12,"วิทยาศาสตร์และเทคโนโลยี":22},"คะแนนเฉลี่ยกลุ่มสาระ":{"คณิตศาสตร์":3.0,"วิทยาศาสตร์และเทคโนโลยี":3.0}}'::jsonb, 'GPAX อย่างน้อย 3.25; หน่วยกิตคณิตศาสตร์ 12 และวิทยาศาสตร์/เทคโนโลยี 22 หน่วยกิต; ต้องแสดงเกณฑ์ผ่านค่ายทักษะพิเศษ; โครงงานวิทยาศาสตร์เป็นองค์ประกอบหลักตามสัดส่วนประกาศ',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-science-microbiology'
where p.code = 'swu-science-microbiology-special-talent-1-2'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 2.75, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 5 ภาคการศึกษาในรอบ 1.2; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง","หน่วยกิตกลุ่มสาระขั้นต่ำ: คณิตศาสตร์ 12 หน่วยกิต, วิทยาศาสตร์และเทคโนโลยี 22 หน่วยกิต"]'::jsonb, 'ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น คัดเลือกผลงานที่ดีที่สุด รวมประวัติส่วนตัว ผลการเรียน และกิจกรรมที่เข้าร่วม จำนวนหน้ารวมไม่เกิน 10 หน้า',
    '{"portfolio_required":true,"max_pages":10,"portfolio_format":"TCASFolio PDF เท่านั้น"}'::jsonb, '["ผลงานหรือรางวัลทางวิชาการที่เกี่ยวข้องกับสาขา","โครงงานวิจัยหรือโครงงานที่เกี่ยวข้องกับวิทยาศาสตร์ เทคโนโลยี หรือวิศวกรรม","กิจกรรม ค่าย หรือการอบรมที่เกี่ยวข้องกับสาขา","เกียรติบัตรหรือหลักฐานการเข้าร่วมแข่งขันที่เกี่ยวข้อง"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน: ด้านวิชาการและกิจกรรมที่เกี่ยวข้องกับสาขา","สอบสัมภาษณ์ตามกำหนดการของประกาศ"]'::jsonb, '{"เงื่อนไขผลงาน":"ต้องมีโครงงาน/ค่าย/การอบรม/รางวัล หรือพื้นฐานการเรียนด้านวิทยาศาสตร์หรือวิศวกรรมตามประกาศ","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"คณิตศาสตร์":12,"วิทยาศาสตร์และเทคโนโลยี":22}}'::jsonb, 'GPAX อย่างน้อย 2.75; หน่วยกิตตามประกาศของสาขา; Portfolio ต้องแสดงผลงาน/กิจกรรมที่เกี่ยวข้อง และมีการสอบสัมภาษณ์',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-engineering-chemical'
where p.code = 'swu-engineering-chemical-good-student-1-2'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 2.75, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 5 ภาคการศึกษาในรอบ 1.2; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง","หน่วยกิตกลุ่มสาระขั้นต่ำ: คณิตศาสตร์ 12 หน่วยกิต, วิทยาศาสตร์และเทคโนโลยี 22 หน่วยกิต"]'::jsonb, 'ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น คัดเลือกผลงานที่ดีที่สุด รวมประวัติส่วนตัว ผลการเรียน และกิจกรรมที่เข้าร่วม จำนวนหน้ารวมไม่เกิน 10 หน้า',
    '{"portfolio_required":true,"max_pages":10,"portfolio_format":"TCASFolio PDF เท่านั้น"}'::jsonb, '["ผลงานหรือรางวัลทางวิชาการที่เกี่ยวข้องกับสาขา","โครงงานวิจัยหรือโครงงานที่เกี่ยวข้องกับวิทยาศาสตร์ เทคโนโลยี หรือวิศวกรรม","กิจกรรม ค่าย หรือการอบรมที่เกี่ยวข้องกับสาขา","เกียรติบัตรหรือหลักฐานการเข้าร่วมแข่งขันที่เกี่ยวข้อง"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน: ด้านวิชาการและกิจกรรมที่เกี่ยวข้องกับสาขา","สอบสัมภาษณ์ตามกำหนดการของประกาศ"]'::jsonb, '{"เงื่อนไขผลงาน":"ต้องมีโครงงาน/ค่าย/การอบรม/รางวัล หรือพื้นฐานการเรียนด้านวิทยาศาสตร์หรือวิศวกรรมตามประกาศ","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"คณิตศาสตร์":12,"วิทยาศาสตร์และเทคโนโลยี":22}}'::jsonb, 'GPAX อย่างน้อย 2.75; หน่วยกิตตามประกาศของสาขา; Portfolio ต้องแสดงผลงาน/กิจกรรมที่เกี่ยวข้อง และมีการสอบสัมภาษณ์',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-engineering-mechanical'
where p.code = 'swu-engineering-mechanical-good-student-1-2'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 2.75, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 5 ภาคการศึกษาในรอบ 1.2; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง","หน่วยกิตกลุ่มสาระขั้นต่ำ: คณิตศาสตร์ 12 หน่วยกิต, วิทยาศาสตร์และเทคโนโลยี 22 หน่วยกิต"]'::jsonb, 'ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น คัดเลือกผลงานที่ดีที่สุด รวมประวัติส่วนตัว ผลการเรียน และกิจกรรมที่เข้าร่วม จำนวนหน้ารวมไม่เกิน 10 หน้า',
    '{"portfolio_required":true,"max_pages":10,"portfolio_format":"TCASFolio PDF เท่านั้น"}'::jsonb, '["ผลงานหรือรางวัลทางวิชาการที่เกี่ยวข้องกับสาขา","โครงงานวิจัยหรือโครงงานที่เกี่ยวข้องกับวิทยาศาสตร์ เทคโนโลยี หรือวิศวกรรม","กิจกรรม ค่าย หรือการอบรมที่เกี่ยวข้องกับสาขา","เกียรติบัตรหรือหลักฐานการเข้าร่วมแข่งขันที่เกี่ยวข้อง"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน: ด้านวิชาการและกิจกรรมที่เกี่ยวข้องกับสาขา","สอบสัมภาษณ์ตามกำหนดการของประกาศ"]'::jsonb, '{"เงื่อนไขผลงาน":"ต้องมีโครงงาน/ค่าย/การอบรม/รางวัล หรือพื้นฐานการเรียนด้านวิทยาศาสตร์หรือวิศวกรรมตามประกาศ","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"คณิตศาสตร์":12,"วิทยาศาสตร์และเทคโนโลยี":22}}'::jsonb, 'GPAX อย่างน้อย 2.75; หน่วยกิตตามประกาศของสาขา; Portfolio ต้องแสดงผลงาน/กิจกรรมที่เกี่ยวข้อง และมีการสอบสัมภาษณ์',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-engineering-civil'
where p.code = 'swu-engineering-civil-good-student-1-2'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 2.75, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 5 ภาคการศึกษาในรอบ 1.2; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง","หน่วยกิตกลุ่มสาระขั้นต่ำ: คณิตศาสตร์ 12 หน่วยกิต, วิทยาศาสตร์และเทคโนโลยี 22 หน่วยกิต"]'::jsonb, 'ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น คัดเลือกผลงานที่ดีที่สุด รวมประวัติส่วนตัว ผลการเรียน และกิจกรรมที่เข้าร่วม จำนวนหน้ารวมไม่เกิน 10 หน้า',
    '{"portfolio_required":true,"max_pages":10,"portfolio_format":"TCASFolio PDF เท่านั้น"}'::jsonb, '["ผลงานหรือรางวัลทางวิชาการที่เกี่ยวข้องกับสาขา","โครงงานวิจัยหรือโครงงานที่เกี่ยวข้องกับวิทยาศาสตร์ เทคโนโลยี หรือวิศวกรรม","กิจกรรม ค่าย หรือการอบรมที่เกี่ยวข้องกับสาขา","เกียรติบัตรหรือหลักฐานการเข้าร่วมแข่งขันที่เกี่ยวข้อง"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน: ด้านวิชาการและกิจกรรมที่เกี่ยวข้องกับสาขา","สอบสัมภาษณ์ตามกำหนดการของประกาศ"]'::jsonb, '{"เงื่อนไขผลงาน":"ต้องมีโครงงาน/ค่าย/การอบรม/รางวัล หรือพื้นฐานการเรียนด้านวิทยาศาสตร์หรือวิศวกรรมตามประกาศ","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"คณิตศาสตร์":12,"วิทยาศาสตร์และเทคโนโลยี":22}}'::jsonb, 'GPAX อย่างน้อย 2.75; หน่วยกิตตามประกาศของสาขา; Portfolio ต้องแสดงผลงาน/กิจกรรมที่เกี่ยวข้อง และมีการสอบสัมภาษณ์',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-engineering-industrial'
where p.code = 'swu-engineering-industrial-good-student-1-2'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 3.0, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{"คณิตศาสตร์":3.0,"วิทยาศาสตร์และเทคโนโลยี":3.0}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 5 ภาคการศึกษาในรอบ 1.2; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลางหรือหลักสูตรนานาชาติ","หน่วยกิตกลุ่มสาระขั้นต่ำ: คณิตศาสตร์ 12 หน่วยกิต, วิทยาศาสตร์และเทคโนโลยี 22 หน่วยกิต"]'::jsonb, 'ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น คัดเลือกผลงานที่ดีที่สุด รวมประวัติส่วนตัว ผลการเรียน และกิจกรรมที่เข้าร่วม จำนวนหน้ารวมไม่เกิน 10 หน้า',
    '{"portfolio_required":true,"max_pages":10,"portfolio_format":"TCASFolio PDF เท่านั้น"}'::jsonb, '["ผลงานหรือรางวัลทางวิชาการที่เกี่ยวข้องกับสาขา","โครงงานวิจัยหรือโครงงานที่เกี่ยวข้องกับวิทยาศาสตร์ เทคโนโลยี หรือวิศวกรรม","กิจกรรม ค่าย หรือการอบรมที่เกี่ยวข้องกับสาขา","เกียรติบัตรหรือหลักฐานการเข้าร่วมแข่งขันที่เกี่ยวข้อง"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน: ด้านวิชาการและกิจกรรมที่เกี่ยวข้องกับสาขา","สอบสัมภาษณ์ตามกำหนดการของประกาศ"]'::jsonb, '{"เงื่อนไขผลงาน":"ต้องมีโครงงาน/ค่าย/การอบรม/รางวัล หรือพื้นฐานการเรียนด้านวิทยาศาสตร์หรือวิศวกรรมตามประกาศ","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"คณิตศาสตร์":12,"วิทยาศาสตร์และเทคโนโลยี":22},"คะแนนเฉลี่ยกลุ่มสาระ":{"คณิตศาสตร์":3.0,"วิทยาศาสตร์และเทคโนโลยี":3.0}}'::jsonb, 'GPAX อย่างน้อย 3.00; หน่วยกิตตามประกาศของสาขา; Portfolio ต้องแสดงผลงาน/กิจกรรมที่เกี่ยวข้อง และมีการสอบสัมภาษณ์',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-engineering-biomedical'
where p.code = 'swu-engineering-biomedical-good-student-1-2'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 2.75, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 5 ภาคการศึกษาในรอบ 1.2; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง","หน่วยกิตกลุ่มสาระขั้นต่ำ: คณิตศาสตร์ 12 หน่วยกิต, วิทยาศาสตร์และเทคโนโลยี 22 หน่วยกิต"]'::jsonb, 'ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น คัดเลือกผลงานที่ดีที่สุด รวมประวัติส่วนตัว ผลการเรียน และกิจกรรมที่เข้าร่วม จำนวนหน้ารวมไม่เกิน 10 หน้า',
    '{"portfolio_required":true,"max_pages":10,"portfolio_format":"TCASFolio PDF เท่านั้น"}'::jsonb, '["ผลงานหรือรางวัลทางวิชาการที่เกี่ยวข้องกับสาขา","โครงงานวิจัยหรือโครงงานที่เกี่ยวข้องกับวิทยาศาสตร์ เทคโนโลยี หรือวิศวกรรม","กิจกรรม ค่าย หรือการอบรมที่เกี่ยวข้องกับสาขา","เกียรติบัตรหรือหลักฐานการเข้าร่วมแข่งขันที่เกี่ยวข้อง"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน: ด้านวิชาการและกิจกรรมที่เกี่ยวข้องกับสาขา","สอบสัมภาษณ์ตามกำหนดการของประกาศ"]'::jsonb, '{"เงื่อนไขผลงาน":"ต้องมีโครงงาน/ค่าย/การอบรม/รางวัล หรือพื้นฐานการเรียนด้านวิทยาศาสตร์หรือวิศวกรรมตามประกาศ","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"คณิตศาสตร์":12,"วิทยาศาสตร์และเทคโนโลยี":22}}'::jsonb, 'GPAX อย่างน้อย 2.75; หน่วยกิตตามประกาศของสาขา; Portfolio ต้องแสดงผลงาน/กิจกรรมที่เกี่ยวข้อง และมีการสอบสัมภาษณ์',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-engineering-computer'
where p.code = 'swu-engineering-computer-good-student-1-2'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 3.0, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 5 ภาคการศึกษาในรอบ 1.2; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง","หน่วยกิตกลุ่มสาระขั้นต่ำ: คณิตศาสตร์ 10 หน่วยกิต, วิทยาศาสตร์และเทคโนโลยี 18 หน่วยกิต"]'::jsonb, 'ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น คัดเลือกผลงานที่ดีที่สุด รวมประวัติส่วนตัว ผลการเรียน และกิจกรรมที่เข้าร่วม จำนวนหน้ารวมไม่เกิน 10 หน้า',
    '{"portfolio_required":true,"max_pages":10,"portfolio_format":"TCASFolio PDF เท่านั้น"}'::jsonb, '["ผลงานหรือรางวัลทางวิชาการที่เกี่ยวข้องกับสาขา","โครงงานวิจัยหรือโครงงานที่เกี่ยวข้องกับวิทยาศาสตร์ เทคโนโลยี หรือวิศวกรรม","กิจกรรม ค่าย หรือการอบรมที่เกี่ยวข้องกับสาขา","เกียรติบัตรหรือหลักฐานการเข้าร่วมแข่งขันที่เกี่ยวข้อง"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน: ด้านวิชาการและกิจกรรมที่เกี่ยวข้องกับสาขา","สอบสัมภาษณ์ตามกำหนดการของประกาศ"]'::jsonb, '{"เงื่อนไขผลงาน":"ต้องมีโครงงาน/ค่าย/การอบรม/รางวัล หรือพื้นฐานการเรียนด้านวิทยาศาสตร์หรือวิศวกรรมตามประกาศ","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"คณิตศาสตร์":10,"วิทยาศาสตร์และเทคโนโลยี":18}}'::jsonb, 'GPAX อย่างน้อย 3.00; หน่วยกิตตามประกาศของสาขา; Portfolio ต้องแสดงผลงาน/กิจกรรมที่เกี่ยวข้อง และมีการสอบสัมภาษณ์',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-engineering-electrical-power'
where p.code = 'swu-engineering-electrical-power-good-student-1-2'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 3.0, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 5 ภาคการศึกษาในรอบ 1.2; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง","หน่วยกิตกลุ่มสาระขั้นต่ำ: คณิตศาสตร์ 10 หน่วยกิต, วิทยาศาสตร์และเทคโนโลยี 18 หน่วยกิต"]'::jsonb, 'ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น คัดเลือกผลงานที่ดีที่สุด รวมประวัติส่วนตัว ผลการเรียน และกิจกรรมที่เข้าร่วม จำนวนหน้ารวมไม่เกิน 10 หน้า',
    '{"portfolio_required":true,"max_pages":10,"portfolio_format":"TCASFolio PDF เท่านั้น"}'::jsonb, '["ผลงานหรือรางวัลทางวิชาการที่เกี่ยวข้องกับสาขา","โครงงานวิจัยหรือโครงงานที่เกี่ยวข้องกับวิทยาศาสตร์ เทคโนโลยี หรือวิศวกรรม","กิจกรรม ค่าย หรือการอบรมที่เกี่ยวข้องกับสาขา","เกียรติบัตรหรือหลักฐานการเข้าร่วมแข่งขันที่เกี่ยวข้อง"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน: ด้านวิชาการและกิจกรรมที่เกี่ยวข้องกับสาขา","สอบสัมภาษณ์ตามกำหนดการของประกาศ"]'::jsonb, '{"เงื่อนไขผลงาน":"ต้องมีโครงงาน/ค่าย/การอบรม/รางวัล หรือพื้นฐานการเรียนด้านวิทยาศาสตร์หรือวิศวกรรมตามประกาศ","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"คณิตศาสตร์":10,"วิทยาศาสตร์และเทคโนโลยี":18}}'::jsonb, 'GPAX อย่างน้อย 3.00; หน่วยกิตตามประกาศของสาขา; Portfolio ต้องแสดงผลงาน/กิจกรรมที่เกี่ยวข้อง และมีการสอบสัมภาษณ์',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-engineering-telecom-it'
where p.code = 'swu-engineering-telecom-it-good-student-1-2'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 3.0, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{"คณิตศาสตร์":2.5,"วิทยาศาสตร์และเทคโนโลยี":2.5}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 5 ภาคการศึกษาในรอบ 1.2; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง","หน่วยกิตกลุ่มสาระขั้นต่ำ: คณิตศาสตร์ 12 หน่วยกิต, วิทยาศาสตร์และเทคโนโลยี 22 หน่วยกิต"]'::jsonb, 'ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น คัดเลือกผลงานที่ดีที่สุด รวมประวัติส่วนตัว ผลการเรียน และกิจกรรมที่เข้าร่วม จำนวนหน้ารวมไม่เกิน 10 หน้า',
    '{"portfolio_required":true,"max_pages":10,"portfolio_format":"TCASFolio PDF เท่านั้น"}'::jsonb, '["ผลงานหรือรางวัลทางวิชาการที่เกี่ยวข้องกับสาขา","โครงงานวิจัยหรือโครงงานที่เกี่ยวข้องกับวิทยาศาสตร์ เทคโนโลยี หรือวิศวกรรม","กิจกรรม ค่าย หรือการอบรมที่เกี่ยวข้องกับสาขา","เกียรติบัตรหรือหลักฐานการเข้าร่วมแข่งขันที่เกี่ยวข้อง"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน: ด้านวิชาการและกิจกรรมที่เกี่ยวข้องกับสาขา","สอบสัมภาษณ์ตามกำหนดการของประกาศ"]'::jsonb, '{"เงื่อนไขผลงาน":"ต้องมีโครงงาน/ค่าย/การอบรม/รางวัล หรือพื้นฐานการเรียนด้านวิทยาศาสตร์หรือวิศวกรรมตามประกาศ","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"คณิตศาสตร์":12,"วิทยาศาสตร์และเทคโนโลยี":22},"คะแนนเฉลี่ยกลุ่มสาระ":{"คณิตศาสตร์":2.5,"วิทยาศาสตร์และเทคโนโลยี":2.5}}'::jsonb, 'GPAX อย่างน้อย 3.00; หน่วยกิตตามประกาศของสาขา; Portfolio ต้องแสดงผลงาน/กิจกรรมที่เกี่ยวข้อง และมีการสอบสัมภาษณ์',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-engineering-logistics-bilingual'
where p.code = 'swu-engineering-logistics-bilingual-good-student-1-2'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 2.5, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{"คณิตศาสตร์":2.5,"วิทยาศาสตร์และเทคโนโลยี":2.5}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 5 ภาคการศึกษาในรอบ 1.2; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง","หน่วยกิตกลุ่มสาระขั้นต่ำ: คณิตศาสตร์ 12 หน่วยกิต, วิทยาศาสตร์และเทคโนโลยี 22 หน่วยกิต"]'::jsonb, 'ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น คัดเลือกผลงานที่ดีที่สุด รวมประวัติส่วนตัว ผลการเรียน และกิจกรรมที่เข้าร่วม จำนวนหน้ารวมไม่เกิน 10 หน้า',
    '{"portfolio_required":true,"max_pages":10,"portfolio_format":"TCASFolio PDF เท่านั้น"}'::jsonb, '["ผลงานหรือรางวัลทางวิชาการที่เกี่ยวข้องกับสาขา","โครงงานวิจัยหรือโครงงานที่เกี่ยวข้องกับวิทยาศาสตร์ เทคโนโลยี หรือวิศวกรรม","กิจกรรม ค่าย หรือการอบรมที่เกี่ยวข้องกับสาขา","เกียรติบัตรหรือหลักฐานการเข้าร่วมแข่งขันที่เกี่ยวข้อง"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน: ด้านวิชาการและกิจกรรมที่เกี่ยวข้องกับสาขา","สอบสัมภาษณ์ตามกำหนดการของประกาศ"]'::jsonb, '{"เงื่อนไขผลงาน":"ต้องมีโครงงาน/ค่าย/การอบรม/รางวัล หรือพื้นฐานการเรียนด้านวิทยาศาสตร์หรือวิศวกรรมตามประกาศ","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"คณิตศาสตร์":12,"วิทยาศาสตร์และเทคโนโลยี":22},"คะแนนเฉลี่ยกลุ่มสาระ":{"คณิตศาสตร์":2.5,"วิทยาศาสตร์และเทคโนโลยี":2.5}}'::jsonb, 'GPAX อย่างน้อย 2.50; หน่วยกิตตามประกาศของสาขา; Portfolio ต้องแสดงผลงาน/กิจกรรมที่เกี่ยวข้อง และมีการสอบสัมภาษณ์',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-engineering-environmental'
where p.code = 'swu-engineering-environmental-good-student-1-2'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 2.5, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{"คณิตศาสตร์":2.5,"วิทยาศาสตร์และเทคโนโลยี":2.5}'::jsonb, '{"IELTS":{"score":5.0,"operator":"≥","note":"หรือ CU-TEP/TU-GET/SWU-SET ระดับ B2; ผลสอบอายุไม่เกิน 2 ปี"}}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 5 ภาคการศึกษาในรอบ 1.2; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง, หลักสูตรนานาชาติ, ปวช. หรือ GED ตามประกาศ","หน่วยกิตกลุ่มสาระขั้นต่ำ: คณิตศาสตร์ 12 หน่วยกิต, วิทยาศาสตร์และเทคโนโลยี 22 หน่วยกิต"]'::jsonb, 'ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น คัดเลือกผลงานที่ดีที่สุด รวมประวัติส่วนตัว ผลการเรียน และกิจกรรมที่เข้าร่วม จำนวนหน้ารวมไม่เกิน 10 หน้า',
    '{"portfolio_required":true,"max_pages":10,"portfolio_format":"TCASFolio PDF เท่านั้น"}'::jsonb, '["ผลงานหรือรางวัลทางวิชาการที่เกี่ยวข้องกับสาขา","โครงงานวิจัยหรือโครงงานที่เกี่ยวข้องกับวิทยาศาสตร์ เทคโนโลยี หรือวิศวกรรม","กิจกรรม ค่าย หรือการอบรมที่เกี่ยวข้องกับสาขา","เกียรติบัตรหรือหลักฐานการเข้าร่วมแข่งขันที่เกี่ยวข้อง"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน: ด้านวิชาการและกิจกรรมที่เกี่ยวข้องกับสาขา","สอบสัมภาษณ์ตามกำหนดการของประกาศ"]'::jsonb, '{"เงื่อนไขผลงาน":"ต้องมีโครงงาน/ค่าย/การอบรม/รางวัล หรือพื้นฐานการเรียนด้านวิทยาศาสตร์หรือวิศวกรรมตามประกาศ","ภาษาอังกฤษ":"IELTS อย่างน้อย 5.0 หรือ CU-TEP/TU-GET/SWU-SET ระดับ B2","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"คณิตศาสตร์":12,"วิทยาศาสตร์และเทคโนโลยี":22},"คะแนนเฉลี่ยกลุ่มสาระ":{"คณิตศาสตร์":2.5,"วิทยาศาสตร์และเทคโนโลยี":2.5}}'::jsonb, 'GPAX อย่างน้อย 2.50; หน่วยกิตคณิตศาสตร์ 12 และวิทยาศาสตร์/เทคโนโลยี 22 หน่วยกิต; คะแนนเฉลี่ยกลุ่มสาระอย่างน้อย 2.50; มีคะแนนภาษาอังกฤษตามประกาศ; ส่ง TCASFolio ไม่เกิน 10 หน้า',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-engineering-petroleum-renewable'
where p.code = 'swu-engineering-petroleum-renewable-special-talent-1-2'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 2.5, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{"คณิตศาสตร์":2.5,"วิทยาศาสตร์และเทคโนโลยี":2.5}'::jsonb, '{"IELTS":{"score":5.0,"operator":"≥","note":"หรือ CU-TEP/TU-GET/SWU-SET ระดับ B2; ผลสอบอายุไม่เกิน 2 ปี"}}'::jsonb,
    '{}'::jsonb, '["ผู้กำลังศึกษาใช้ผลการเรียน ม.4 - ม.5 รวม 5 ภาคการศึกษาในรอบ 1.2; ผู้สำเร็จการศึกษาใช้ผลการเรียน 6 ภาคการศึกษา","กลุ่มวุฒิ/สถานศึกษาที่รับ: หลักสูตรแกนกลาง, หลักสูตรนานาชาติ, ปวช. หรือ GED ตามประกาศ","หน่วยกิตกลุ่มสาระขั้นต่ำ: คณิตศาสตร์ 12 หน่วยกิต, วิทยาศาสตร์และเทคโนโลยี 22 หน่วยกิต"]'::jsonb, 'ส่งไฟล์ TCASFolio เท่านั้น ไม่รับ Portfolio รูปแบบอื่น คัดเลือกผลงานที่ดีที่สุด รวมประวัติส่วนตัว ผลการเรียน และกิจกรรมที่เข้าร่วม จำนวนหน้ารวมไม่เกิน 10 หน้า',
    '{"portfolio_required":true,"max_pages":10,"portfolio_format":"TCASFolio PDF เท่านั้น"}'::jsonb, '["ผลงานหรือรางวัลทางวิชาการที่เกี่ยวข้องกับสาขา","โครงงานวิจัยหรือโครงงานที่เกี่ยวข้องกับวิทยาศาสตร์ เทคโนโลยี หรือวิศวกรรม","กิจกรรม ค่าย หรือการอบรมที่เกี่ยวข้องกับสาขา","เกียรติบัตรหรือหลักฐานการเข้าร่วมแข่งขันที่เกี่ยวข้อง"]'::jsonb, '["TCASFolio ไฟล์ PDF","ผลการเรียนตามจำนวนภาคเรียนที่โครงการกำหนด"]'::jsonb,
    '["แฟ้มสะสมผลงาน: ด้านวิชาการและกิจกรรมที่เกี่ยวข้องกับสาขา","สอบสัมภาษณ์ตามกำหนดการของประกาศ"]'::jsonb, '{"เงื่อนไขผลงาน":"ต้องมีโครงงาน/ค่าย/การอบรม/รางวัล หรือพื้นฐานการเรียนด้านวิทยาศาสตร์หรือวิศวกรรมตามประกาศ","ภาษาอังกฤษ":"IELTS อย่างน้อย 5.0 หรือ CU-TEP/TU-GET/SWU-SET ระดับ B2","ค่าสมัคร":"600 บาท","การส่งแฟ้ม":"อัปโหลด TCASFolio ในระบบรับสมัคร มศว.; ตรวจรายละเอียดสาขาก่อนยืนยัน","หน่วยกิตกลุ่มสาระ":{"คณิตศาสตร์":12,"วิทยาศาสตร์และเทคโนโลยี":22},"คะแนนเฉลี่ยกลุ่มสาระ":{"คณิตศาสตร์":2.5,"วิทยาศาสตร์และเทคโนโลยี":2.5}}'::jsonb, 'GPAX อย่างน้อย 2.50; หน่วยกิตคณิตศาสตร์ 12 และวิทยาศาสตร์/เทคโนโลยี 22 หน่วยกิต; คะแนนเฉลี่ยกลุ่มสาระอย่างน้อย 2.50; มีคะแนนภาษาอังกฤษตามประกาศ; ส่ง TCASFolio ไม่เกิน 10 หน้า',
    'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'swu-engineering-cybersecurity'
where p.code = 'swu-engineering-cybersecurity-special-talent-1-2'
on conflict (project_id, faculty_id) do update set
        min_gpax = excluded.min_gpax,
        gpax_requirements = excluded.gpax_requirements,
        subject_gpax = excluded.subject_gpax,
        min_english_score = excluded.min_english_score,
        standardized_scores = excluded.standardized_scores,
        applicant_qualifications = excluded.applicant_qualifications,
        portfolio_requirements = excluded.portfolio_requirements,
        portfolio_details = excluded.portfolio_details,
        accepted_achievements = excluded.accepted_achievements,
        required_documents = excluded.required_documents,
        selection_methods = excluded.selection_methods,
        additional_requirements = excluded.additional_requirements,
        criteria_summary = excluded.criteria_summary,
        official_announcement_url = excluded.official_announcement_url,
        updated_at = excluded.updated_at;

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-08-18', '2026-09-16', '18 ส.ค. - 16 ก.ย. 2569 (ปิด 15.00 น. วันที่ 16 ก.ย.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2026-10-21', null, '21 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-07', '2026-11-08', '7 - 8 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2026-11-17', null, '17 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2026-11-17', '2026-11-18', '17 - 18 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-08-18', '2026-09-16', '18 ส.ค. - 16 ก.ย. 2569 (ปิด 15.00 น. วันที่ 16 ก.ย.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-special-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2026-10-21', null, '21 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-special-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-07', '2026-11-08', '7 - 8 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-special-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2026-11-17', null, '17 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-special-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2026-11-17', '2026-11-18', '17 - 18 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-special-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-special-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-special-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-special-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-environmental-technology-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-08-18', '2026-09-16', '18 ส.ค. - 16 ก.ย. 2569 (ปิด 15.00 น. วันที่ 16 ก.ย.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2026-10-21', null, '21 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-07', '2026-11-08', '7 - 8 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2026-11-17', null, '17 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2026-11-17', '2026-11-18', '17 - 18 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-08-18', '2026-09-16', '18 ส.ค. - 16 ก.ย. 2569 (ปิด 15.00 น. วันที่ 16 ก.ย.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-special-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2026-10-21', null, '21 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-special-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-07', '2026-11-08', '7 - 8 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-special-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2026-11-17', null, '17 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-special-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2026-11-17', '2026-11-18', '17 - 18 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-special-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-special-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-special-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-special-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-ece-climate-environment-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-mathematics-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-mathematics-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-mathematics-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-mathematics-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-mathematics-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-mathematics-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-mathematics-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-mathematics-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-statistics-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-statistics-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-statistics-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-statistics-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-statistics-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-statistics-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-statistics-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-statistics-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-08-18', '2026-09-16', '18 ส.ค. - 16 ก.ย. 2569 (ปิด 15.00 น. วันที่ 16 ก.ย.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2026-10-21', null, '21 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-07', '2026-11-08', '7 - 8 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2026-11-17', null, '17 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2026-11-17', '2026-11-18', '17 - 18 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-08-18', '2026-09-16', '18 ส.ค. - 16 ก.ย. 2569 (ปิด 15.00 น. วันที่ 16 ก.ย.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-special-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2026-10-21', null, '21 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-special-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-07', '2026-11-08', '7 - 8 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-special-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2026-11-17', null, '17 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-special-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2026-11-17', '2026-11-18', '17 - 18 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-special-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-special-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-special-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-special-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-chemistry-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-08-18', '2026-09-16', '18 ส.ค. - 16 ก.ย. 2569 (ปิด 15.00 น. วันที่ 16 ก.ย.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-biology-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2026-10-21', null, '21 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-biology-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-07', '2026-11-08', '7 - 8 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-biology-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2026-11-17', null, '17 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-biology-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2026-11-17', '2026-11-18', '17 - 18 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-biology-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-biology-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-biology-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-biology-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-biology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-biology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-biology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-biology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-biology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-biology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-biology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-biology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-08-18', '2026-09-16', '18 ส.ค. - 16 ก.ย. 2569 (ปิด 15.00 น. วันที่ 16 ก.ย.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2026-10-21', null, '21 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-07', '2026-11-08', '7 - 8 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2026-11-17', null, '17 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2026-11-17', '2026-11-18', '17 - 18 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-chemical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-chemical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-chemical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-chemical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-chemical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-chemical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-chemical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-chemical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-mechanical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-mechanical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-mechanical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-mechanical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-mechanical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-mechanical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-mechanical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-mechanical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-civil-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-civil-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-civil-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-civil-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-civil-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-civil-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-civil-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-civil-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-industrial-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-industrial-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-industrial-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-industrial-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-industrial-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-industrial-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-industrial-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-industrial-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-biomedical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-biomedical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-biomedical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-biomedical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-biomedical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-biomedical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-biomedical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-biomedical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-computer-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-computer-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-computer-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-computer-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-computer-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-computer-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-computer-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-computer-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-electrical-power-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-electrical-power-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-electrical-power-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-electrical-power-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-electrical-power-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-electrical-power-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-electrical-power-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-electrical-power-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-telecom-it-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-telecom-it-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-telecom-it-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-telecom-it-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-telecom-it-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-telecom-it-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-telecom-it-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-telecom-it-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-logistics-bilingual-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-logistics-bilingual-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-logistics-bilingual-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-logistics-bilingual-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-logistics-bilingual-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-logistics-bilingual-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-logistics-bilingual-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-logistics-bilingual-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-environmental-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-environmental-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-environmental-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-environmental-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-environmental-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-environmental-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-environmental-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-environmental-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-petroleum-renewable-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-petroleum-renewable-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-petroleum-renewable-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-petroleum-renewable-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-petroleum-renewable-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-petroleum-renewable-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-petroleum-renewable-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-petroleum-renewable-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-cybersecurity-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-cybersecurity-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-cybersecurity-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-cybersecurity-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-cybersecurity-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-cybersecurity-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-cybersecurity-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-cybersecurity-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

commit;
