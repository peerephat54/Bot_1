-- Adds official technology curricula and clearly labelled unconfirmed references.
begin;
alter table public.faculties_and_majors
    add column if not exists admission_previews jsonb not null default '[]'::jsonb;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'kmitl-it', 'คณะเทคโนโลยีสารสนเทศ', 'เทคโนโลยีสารสนเทศ', 1, 2570,
    'ปริญญาตรี', 'ไทยและอังกฤษ', 129, 2565,
    4, 'https://www.it.kmitl.ac.th/en/programs/it-program-2565', '[{"title":"โครงการนักเรียนที่มีความสามารถด้านเทคโนโลยีสารสนเทศ","reference_academic_year":2570,"round_label":"Portfolio 1.1","slots_available":50,"status":"unconfirmed","note":"พบในหน้าข้อมูลเตรียมประกาศของคณะ แต่ยังระบุว่ารอประกาศอย่างเป็นทางการ","source_url":"https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1"},{"title":"โครงการนักเรียนที่มีศักยภาพทางวิชาการและเทคโนโลยีสารสนเทศ","reference_academic_year":2570,"round_label":"Portfolio 1.1","slots_available":5,"status":"unconfirmed","note":"ชื่อโครงการและจำนวนรับยังไม่ใช่ประกาศรับสมัครฉบับสมบูรณ์","source_url":"https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1"},{"title":"โครงการนักเรียนที่มีความสามารถด้านภาษาอังกฤษและเทคโนโลยีสารสนเทศ","reference_academic_year":2570,"round_label":"Portfolio 1.1","slots_available":5,"status":"unconfirmed","note":"ชื่อโครงการและจำนวนรับยังไม่ใช่ประกาศรับสมัครฉบับสมบูรณ์","source_url":"https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1"},{"title":"หน้ารับสมัคร TCAS70 รอบ Portfolio","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"พบหลักสูตรในหน้ารับสมัคร แต่ยังไม่พบประกาศโครงการเฉพาะสาขาที่บอทยืนยันได้","source_url":"https://www1.reg.kmitl.ac.th/TCAS_old/home.php?round=1"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'kmitl-dsba', 'คณะเทคโนโลยีสารสนเทศ', 'วิทยาการข้อมูลและการวิเคราะห์เชิงธุรกิจ', 1, 2570,
    'ปริญญาตรี', 'ไทยและอังกฤษ', 132, 2565,
    4, 'https://www.it.kmitl.ac.th/en/programs/datasci-program-2565', '[{"title":"โครงการนักเรียนที่มีความสามารถด้านเทคโนโลยีสารสนเทศ","reference_academic_year":2570,"round_label":"Portfolio 1.1","slots_available":5,"status":"unconfirmed","note":"พบในหน้าข้อมูลเตรียมประกาศของคณะ แต่ยังระบุว่ารอประกาศอย่างเป็นทางการ","source_url":"https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1"},{"title":"โครงการนักเรียนที่มีศักยภาพทางวิชาการและเทคโนโลยีสารสนเทศ","reference_academic_year":2570,"round_label":"Portfolio 1.1","slots_available":2,"status":"unconfirmed","note":"ชื่อโครงการและจำนวนรับยังไม่ใช่ประกาศรับสมัครฉบับสมบูรณ์","source_url":"https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1"},{"title":"หน้ารับสมัคร TCAS70 รอบ Portfolio","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"พบหลักสูตรในหน้ารับสมัคร แต่ยังไม่พบประกาศโครงการเฉพาะสาขาที่บอทยืนยันได้","source_url":"https://www1.reg.kmitl.ac.th/TCAS_old/home.php?round=1"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'kmitl-ait', 'คณะเทคโนโลยีสารสนเทศ', 'เทคโนโลยีปัญญาประดิษฐ์', 1, 2570,
    'ปริญญาตรี', 'ไทยและอังกฤษ', 120, 2566,
    4, 'https://www.it.kmitl.ac.th/en/programs/ait-program', '[{"title":"โครงการนักเรียนที่มีความสามารถด้านเทคโนโลยีสารสนเทศ","reference_academic_year":2570,"round_label":"Portfolio 1.1","slots_available":5,"status":"unconfirmed","note":"พบในหน้าข้อมูลเตรียมประกาศของคณะ แต่ยังระบุว่ารอประกาศอย่างเป็นทางการ","source_url":"https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1"},{"title":"โครงการนักเรียนที่มีศักยภาพทางวิชาการและเทคโนโลยีสารสนเทศ","reference_academic_year":2570,"round_label":"Portfolio 1.1","slots_available":1,"status":"unconfirmed","note":"ชื่อโครงการและจำนวนรับยังไม่ใช่ประกาศรับสมัครฉบับสมบูรณ์","source_url":"https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1"},{"title":"โครงการนักเรียนที่มีความสามารถด้านภาษาอังกฤษและเทคโนโลยีสารสนเทศ","reference_academic_year":2570,"round_label":"Portfolio 1.1","slots_available":1,"status":"unconfirmed","note":"หน้าเตรียมข้อมูลระบุว่าโครงการนี้ไม่เปิดรับ DSBA","source_url":"https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1"},{"title":"หน้ารับสมัคร TCAS70 รอบ Portfolio","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"พบหลักสูตรในหน้ารับสมัคร แต่ยังไม่พบประกาศโครงการเฉพาะสาขาที่บอทยืนยันได้","source_url":"https://www1.reg.kmitl.ac.th/TCAS_old/home.php?round=1"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'kmitl-bit', 'คณะเทคโนโลยีสารสนเทศ', 'เทคโนโลยีสารสนเทศทางธุรกิจ (หลักสูตรนานาชาติ)', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', 126, 2565,
    4, 'https://www.it.kmitl.ac.th/en/programs/bit-program-2565', '[{"title":"หน้ารับสมัคร TCAS70 รอบ Portfolio","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"พบหลักสูตรในหน้ารับสมัคร แต่ยังไม่พบประกาศโครงการเฉพาะสาขาที่บอทยืนยันได้","source_url":"https://www1.reg.kmitl.ac.th/TCAS_old/home.php?round=1"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'mu-ict', 'คณะเทคโนโลยีสารสนเทศและการสื่อสาร', 'เทคโนโลยีสารสนเทศและการสื่อสาร (ICT)', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', null, null,
    4, 'https://www.ict.mahidol.ac.th/th/programs/', '[]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'cmu-cpe', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี ภาคปกติ', 'ไทย', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfacultybyid.php?fid=703', '[]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'kmutt-sit-cs', 'คณะเทคโนโลยีสารสนเทศ', 'วิทยาการคอมพิวเตอร์ (หลักสูตรภาษาอังกฤษ)', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', 134, 2566,
    4, 'https://www.sit.kmutt.ac.th/bsc/bsc-cs-2/', '[]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'kmutt-sit-dsi', 'คณะเทคโนโลยีสารสนเทศ', 'นวัตกรรมบริการดิจิทัล', 1, 2570,
    'ปริญญาตรี', 'ไทย', 121, null,
    4, 'https://www.sit.kmutt.ac.th/en/bsc/bsc-dsi-2/', '[]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'kmutt-sit-it', 'คณะเทคโนโลยีสารสนเทศ', 'เทคโนโลยีสารสนเทศ', 1, 2570,
    'ปริญญาตรี', 'ไทยและอังกฤษ', null, 2567,
    4, 'https://www.sit.kmutt.ac.th/bsc/bsc-it-2/', '[]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'mu-computer-engineering', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://www.eg.mahidol.ac.th/egmu/admission/tcas-admission.html', '[]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'ku-csc-computer-science', 'คณะวิทยาศาสตร์และวิศวกรรมศาสตร์ วิทยาเขตเฉลิมพระเกียรติ จังหวัดสกลนคร', 'วิทยาการคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://misreg.csc.ku.ac.th/admission/?page_id=63', '[]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'ku-csc-computer-engineering', 'คณะวิทยาศาสตร์และวิศวกรรมศาสตร์ วิทยาเขตเฉลิมพระเกียรติ จังหวัดสกลนคร', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://misreg.csc.ku.ac.th/admission/?page_id=63', '[]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'tu-siit-computer-engineering', 'สถาบันเทคโนโลยีนานาชาติสิรินธร', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', null, null,
    4, 'https://admissions.siit.tu.ac.th/undergraduate/', '[]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'tu-siit-digital-engineering', 'สถาบันเทคโนโลยีนานาชาติสิรินธร', 'วิศวกรรมดิจิทัล', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', null, null,
    4, 'https://admissions.siit.tu.ac.th/undergraduate/', '[]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'kmutt-cpe', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://join.kmutt.ac.th/projects', '[]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'kmutt-cpe-international', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมคอมพิวเตอร์ (หลักสูตรนานาชาติ)', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', null, null,
    4, 'https://join.kmutt.ac.th/projects', '[]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'kmutt-media-technology', 'คณะสถาปัตยกรรมศาสตร์และการออกแบบ', 'เทคโนโลยีมีเดีย', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://join.kmutt.ac.th/projects', '[]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'kmutt-game-design', 'คณะสถาปัตยกรรมศาสตร์และการออกแบบ', 'การออกแบบเกมและการพัฒนา (หลักสูตรนานาชาติ)', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', null, null,
    4, 'https://join.kmutt.ac.th/projects', '[]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'kmutt-ai-systems', 'คณะวิศวกรรมศาสตร์ (พื้นที่การศึกษาราชบุรี)', 'วิศวกรรมระบบอัจฉริยะ', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://join.kmutt.ac.th/projects', '[]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'cmu-cs', 'คณะวิทยาศาสตร์', 'วิทยาการคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', '[]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'cmu-data-science', 'คณะวิทยาศาสตร์', 'วิทยาการข้อมูล', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', '[]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'cmu-cyber', 'คณะวิศวกรรมศาสตร์', 'ระบบสารสนเทศและความมั่นคงปลอดภัยไซเบอร์ (นานาชาติ)', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', '[]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'cmu-software-engineering', 'วิทยาลัยศิลปะ สื่อ และเทคโนโลยี', 'วิศวกรรมซอฟต์แวร์ (นานาชาติ)', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', '[]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'cmu-digital-game', 'วิทยาลัยศิลปะ สื่อ และเทคโนโลยี', 'ดิจิทัลเกม', 1, 2570,
    'ปริญญาตรี', 'สองภาษา', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', '[]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'cmu-digital-industry', 'วิทยาลัยศิลปะ สื่อ และเทคโนโลยี', 'บูรณาการอุตสาหกรรมดิจิทัล', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', '[]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'cmu-modern-it', 'วิทยาลัยศิลปะ สื่อ และเทคโนโลยี', 'การจัดการสมัยใหม่และเทคโนโลยีสารสนเทศ', 1, 2570,
    'ปริญญาตรี', 'สองภาษา', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', '[]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'cmu-digital-innovation', 'วิทยาลัยนานาชาตินวัตกรรมดิจิทัล', 'นวัตกรรมดิจิทัล (นานาชาติ)', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', '[]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'kmitl-chumphon-computer-engineering', 'วิทยาเขตชุมพรเขตรอุดมศักดิ์', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://admission.reg.kmitl.ac.th/', '[]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'kmitl-science-computer-science', 'คณะวิทยาศาสตร์', 'วิทยาการคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี', null, 130, 2569,
    null, 'https://www.science.kmitl.ac.th/curriculums/bachelor/computer-science-2569', '[]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'cu-engineering-computer-engineering', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', 138, 2566,
    4, 'https://www.cp.eng.chula.ac.th/future/bachelor', '[{"title":"TCAS1: Portfolio CP","reference_academic_year":2569,"round_label":"TCAS รอบ 1","slots_available":null,"status":"unconfirmed","note":"เป็นรูปแบบรับสมัครปี 2569 ใช้ดูแนวทางเท่านั้น ยังไม่ยืนยันว่าจะเปิดเหมือนเดิมใน TCAS70","source_url":"https://www.cp.eng.chula.ac.th/cp-tcas1"},{"title":"หน้าประกาศรับสมัคร TCAS70","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"หน้าทางการยังแสดงว่าไม่พบประกาศรับสมัครสำหรับหลักสูตรนี้","source_url":"https://admission.chula.ac.th/admission_c1.php"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'cu-engineering-cedt', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมคอมพิวเตอร์และเทคโนโลยีดิจิทัล (CEDT)', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', 124, 2566,
    3.5, 'https://www.cp.eng.chula.ac.th/cedt', '[{"title":"TCAS1: Portfolio CEDT","reference_academic_year":2569,"round_label":"TCAS รอบ 1","slots_available":null,"status":"unconfirmed","note":"เป็นรูปแบบรับสมัครปี 2569 ใช้ดูแนวทางเท่านั้น ยังไม่ยืนยันว่าจะเปิดเหมือนเดิมใน TCAS70","source_url":"https://www.cp.eng.chula.ac.th/cedt-tcas1"},{"title":"หน้าประกาศรับสมัคร TCAS70","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"หน้าทางการยังแสดงว่าไม่พบประกาศรับสมัครสำหรับหลักสูตรนี้","source_url":"https://admission.chula.ac.th/admission_c1.php"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'cu-engineering-ice', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมสารสนเทศและการสื่อสาร (ICE) (หลักสูตรนานาชาติ)', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'อังกฤษ', null, null,
    null, 'https://www.ise.eng.chula.ac.th/academics/ice/info', '[{"title":"หน้าประกาศรับสมัคร TCAS70","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"หน้าทางการยังแสดงว่าไม่พบประกาศรับสมัครสำหรับหลักสูตรนี้","source_url":"https://admission.chula.ac.th/admission_c1.php"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'cu-engineering-robotics-ai', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมหุ่นยนต์และปัญญาประดิษฐ์ (RAIE) (หลักสูตรนานาชาติ)', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'อังกฤษ', null, null,
    null, 'https://www.ise.eng.chula.ac.th/academics/robotics-ai/info', '[{"title":"หน้าประกาศรับสมัคร TCAS70","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"หน้าทางการยังแสดงว่าไม่พบประกาศรับสมัครสำหรับหลักสูตรนี้","source_url":"https://admission.chula.ac.th/admission_c1.php"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'cu-engineering-semiconductor', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมเซมิคอนดักเตอร์ (SEMI) (หลักสูตรนานาชาติ)', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'อังกฤษ', null, null,
    null, 'https://www.ise.eng.chula.ac.th/academics/semi/info', '[{"title":"หน้าประกาศรับสมัคร TCAS70","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"หน้าทางการยังแสดงว่าไม่พบประกาศรับสมัครสำหรับหลักสูตรนี้","source_url":"https://admission.chula.ac.th/admission_c1.php"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'cu-science-computer-science', 'คณะวิทยาศาสตร์', 'วิทยาการคอมพิวเตอร์', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', 136, 2566,
    4, 'https://www.math.sc.chula.ac.th/th/program/undergraduate/computer-science/', '[{"title":"หน้าประกาศรับสมัคร TCAS70","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"หน้าทางการยังแสดงว่าไม่พบประกาศรับสมัครสำหรับหลักสูตรนี้","source_url":"https://admission.chula.ac.th/admission_c1.php"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'cu-cbs-management-information-systems', 'คณะพาณิชยศาสตร์และการบัญชี', 'ระบบสารสนเทศทางการจัดการ', 1, 2570,
    'บริหารธุรกิจบัณฑิต', 'ไทย', 136, null,
    null, 'https://bba.acc.chula.ac.th/files/MIS_EN.pdf', '[{"title":"หน้าประกาศรับสมัคร TCAS70","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"หน้าทางการยังแสดงว่าไม่พบประกาศรับสมัครสำหรับหลักสูตรนี้","source_url":"https://admission.chula.ac.th/admission_c1.php"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'cu-cbs-statistics-data-science', 'คณะพาณิชยศาสตร์และการบัญชี', 'สถิติและวิทยาการข้อมูล', 1, 2570,
    'สถิติศาสตรบัณฑิต', 'ไทย', 133, 2564,
    null, 'https://stat.cbs.chula.ac.th/index.php/th/our-programs/bachelor/2564', '[{"title":"หน้าประกาศรับสมัคร TCAS70","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"หน้าทางการยังแสดงว่าไม่พบประกาศรับสมัครสำหรับหลักสูตรนี้","source_url":"https://admission.chula.ac.th/admission_c1.php"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'cu-cbs-information-technology-business', 'คณะพาณิชยศาสตร์และการบัญชี', 'เทคโนโลยีสารสนเทศเพื่อธุรกิจ', 1, 2570,
    'สถิติศาสตรบัณฑิต', 'ไทย', 133, 2564,
    null, 'https://stat.cbs.chula.ac.th/index.php/th/our-programs/bachelor/2564', '[{"title":"หน้าประกาศรับสมัคร TCAS70","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"หน้าทางการยังแสดงว่าไม่พบประกาศรับสมัครสำหรับหลักสูตรนี้","source_url":"https://admission.chula.ac.th/admission_c1.php"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'kmutnb-engineering-computer-engineering', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', 134, null,
    4, 'https://www.kmutnb.ac.th/faculty-and-agencies/bangkok/faculty-of-engineering/department-of-electrical-and-computer-engineering.aspx?lang=th', '[{"title":"หน้ารับสมัครรอบ 1 ปีการศึกษา 2570","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"ยังไม่พบโครงการ TCAS70 ที่ระบุหลักสูตรนี้ในหน้าทางการ","source_url":"https://admission.kmutnb.ac.th/apply/round/1"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'kmutnb-science-computer-science', 'คณะวิทยาศาสตร์ประยุกต์', 'วิทยาการคอมพิวเตอร์', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', null, null,
    null, 'https://www.kmutnb.ac.th/faculty-and-agencies/bangkok/faculty-of-applied-science/department-of-computer-and-information-science.aspx', '[{"title":"หน้ารับสมัครรอบ 1 ปีการศึกษา 2570","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"ยังไม่พบโครงการ TCAS70 ที่ระบุหลักสูตรนี้ในหน้าทางการ","source_url":"https://admission.kmutnb.ac.th/apply/round/1"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'kmutnb-itd-informatics-digital-economy', 'คณะเทคโนโลยีสารสนเทศและนวัตกรรมดิจิทัล', 'วิทยาการสารสนเทศเพื่อเศรษฐกิจดิจิทัล (หลักสูตรนานาชาติ)', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'อังกฤษ', 129, null,
    4, 'https://www.itd.kmutnb.ac.th/bachelor.php', '[{"title":"หน้ารับสมัครรอบ 1 ปีการศึกษา 2570","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"ยังไม่พบโครงการ TCAS70 ที่ระบุหลักสูตรนี้ในหน้าทางการ","source_url":"https://admission.kmutnb.ac.th/apply/round/1"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'kmutnb-fitm-information-technology', 'คณะเทคโนโลยีและการจัดการอุตสาหกรรม (วิทยาเขตปราจีนบุรี)', 'เทคโนโลยีสารสนเทศ', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', null, 2567,
    4, 'https://www.fitm.kmutnb.ac.th/IT.html', '[{"title":"หน้ารับสมัครรอบ 1 ปีการศึกษา 2570","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"ยังไม่พบโครงการ TCAS70 ที่ระบุหลักสูตรนี้ในหน้าทางการ","source_url":"https://admission.kmutnb.ac.th/apply/round/1"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'kmutnb-fitm-information-network-engineering', 'คณะเทคโนโลยีและการจัดการอุตสาหกรรม (วิทยาเขตปราจีนบุรี)', 'วิศวกรรมสารสนเทศและเครือข่าย (เสริมทักษะภาษาอังกฤษ)', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย (เสริมทักษะภาษาอังกฤษ)', null, 2567,
    4, 'https://www.fitm.kmutnb.ac.th/IT.html', '[{"title":"หน้ารับสมัครรอบ 1 ปีการศึกษา 2570","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"ยังไม่พบโครงการ TCAS70 ที่ระบุหลักสูตรนี้ในหน้าทางการ","source_url":"https://admission.kmutnb.ac.th/apply/round/1"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'kmitl-engineering-computer-engineering', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://www.ce.kmitl.ac.th/', '[{"title":"หน้ารับสมัคร TCAS70 รอบ Portfolio","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"พบหลักสูตรในหน้ารับสมัคร แต่ยังไม่พบประกาศโครงการเฉพาะสาขาที่บอทยืนยันได้","source_url":"https://www1.reg.kmitl.ac.th/TCAS_old/home.php?round=1"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'kmitl-engineering-software-international', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมซอฟต์แวร์ (หลักสูตรนานาชาติ)', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'อังกฤษ', null, 2567,
    4, 'https://office.kmitl.ac.th/oaq/curriculum/', '[{"title":"หน้ารับสมัคร TCAS70 รอบ Portfolio","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"พบหลักสูตรในหน้ารับสมัคร แต่ยังไม่พบประกาศโครงการเฉพาะสาขาที่บอทยืนยันได้","source_url":"https://www1.reg.kmitl.ac.th/TCAS_old/home.php?round=1"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'kmitl-engineering-computer-innovation-international', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมนวัตกรรมคอมพิวเตอร์ (หลักสูตรนานาชาติ)', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'อังกฤษ', null, null,
    4, 'https://office.kmitl.ac.th/oaq/curriculum/', '[{"title":"หน้ารับสมัคร TCAS70 รอบ Portfolio","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"พบหลักสูตรในหน้ารับสมัคร แต่ยังไม่พบประกาศโครงการเฉพาะสาขาที่บอทยืนยันได้","source_url":"https://www1.reg.kmitl.ac.th/TCAS_old/home.php?round=1"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'kmitl-engineering-information-engineering', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมสารสนเทศ', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://office.kmitl.ac.th/oaq/curriculum/', '[{"title":"หน้ารับสมัคร TCAS70 รอบ Portfolio","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"พบหลักสูตรในหน้ารับสมัคร แต่ยังไม่พบประกาศโครงการเฉพาะสาขาที่บอทยืนยันได้","source_url":"https://www1.reg.kmitl.ac.th/TCAS_old/home.php?round=1"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'kmitl-engineering-robotics-ai-international', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมหุ่นยนต์และปัญญาประดิษฐ์ (หลักสูตรนานาชาติ)', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'อังกฤษ', null, null,
    4, 'https://office.kmitl.ac.th/oaq/curriculum/', '[{"title":"หน้ารับสมัคร TCAS70 รอบ Portfolio","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"พบหลักสูตรในหน้ารับสมัคร แต่ยังไม่พบประกาศโครงการเฉพาะสาขาที่บอทยืนยันได้","source_url":"https://www1.reg.kmitl.ac.th/TCAS_old/home.php?round=1"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'ku-bangkhen-computer-engineering', 'คณะวิศวกรรมศาสตร์ วิทยาเขตบางเขน', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://cpe.ku.ac.th/', '[{"title":"โครงการช้างเผือก","reference_academic_year":2569,"round_label":"Portfolio 1.1","slots_available":20,"status":"unconfirmed","note":"เป็นจำนวนรับของ TCAS69 ยังห้ามใช้แทนจำนวนรับ TCAS70","source_url":"https://admission.ku.ac.th/media/announcements/2025/10/08/69_TCAS1_White_Elephant_1.1.pdf"},{"title":"โครงการเรียนล่วงหน้าของมหาวิทยาลัยเกษตรศาสตร์","reference_academic_year":2569,"round_label":"Portfolio 1.1","slots_available":5,"status":"unconfirmed","note":"เป็นจำนวนรับของ TCAS69 ยังห้ามใช้แทนจำนวนรับ TCAS70","source_url":"https://admission.ku.ac.th/media/announcements/2025/10/29/69_TCAS1_AP_1.1_edit_29102025.pdf"},{"title":"หน้ารับสมัคร KU-TCAS70","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"ยังไม่พบประกาศ TCAS70 ของหลักสูตรนี้ จึงแสดงข้อมูลปีเก่าแยกเป็นข้อมูลอ้างอิงเท่านั้น","source_url":"https://admission.ku.ac.th/kuadm/"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'ku-bangkhen-software-knowledge-engineering', 'คณะวิศวกรรมศาสตร์ วิทยาเขตบางเขน', 'วิศวกรรมซอฟต์แวร์และความรู้ (หลักสูตรนานาชาติ)', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'อังกฤษ', null, 2565,
    4, 'https://cpe.ku.ac.th/index.php/ske-course-2565/', '[{"title":"โครงการหลักสูตรนานาชาติและหลักสูตรภาษาอังกฤษ","reference_academic_year":2569,"round_label":"Portfolio 1.2","slots_available":15,"status":"unconfirmed","note":"เป็นจำนวนรับของ TCAS69 ยังห้ามใช้แทนจำนวนรับ TCAS70","source_url":"https://admission.ku.ac.th/media/announcements/2025/10/15/69-TCAS1-International_Program_1.2.pdf"},{"title":"หน้ารับสมัคร KU-TCAS70","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"ยังไม่พบประกาศ TCAS70 ของหลักสูตรนี้ จึงแสดงข้อมูลปีเก่าแยกเป็นข้อมูลอ้างอิงเท่านั้น","source_url":"https://admission.ku.ac.th/kuadm/"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'ku-bangkhen-computer-science', 'คณะวิทยาศาสตร์ วิทยาเขตบางเขน', 'วิทยาการคอมพิวเตอร์', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', 128, null,
    4, 'https://sci.ku.ac.th/web2024/program/b-s-computer-science/', '[{"title":"โครงการเรียนล่วงหน้าของมหาวิทยาลัยเกษตรศาสตร์","reference_academic_year":2569,"round_label":"Portfolio 1.1","slots_available":5,"status":"unconfirmed","note":"เป็นจำนวนรับของ TCAS69 ยังห้ามใช้แทนจำนวนรับ TCAS70","source_url":"https://admission.ku.ac.th/media/announcements/2025/10/29/69_TCAS1_AP_1.1_edit_29102025.pdf"},{"title":"หน้ารับสมัคร KU-TCAS70","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"ยังไม่พบประกาศ TCAS70 ของหลักสูตรนี้ จึงแสดงข้อมูลปีเก่าแยกเป็นข้อมูลอ้างอิงเท่านั้น","source_url":"https://admission.ku.ac.th/kuadm/"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'tu-engineering-computer-engineering', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', null, 2566,
    4, 'https://engr.tu.ac.th/bachelor', '[{"title":"รอบที่ 1 Portfolio คณะวิศวกรรมศาสตร์","reference_academic_year":2568,"round_label":"Portfolio","slots_available":10,"status":"unconfirmed","note":"หน้าอ้างอิงยังเป็น TCAS68 (GPAX 3.00) ใช้ดูรูปแบบเก่าเท่านั้น ไม่ใช่เกณฑ์ TCAS70","source_url":"https://engr.tu.ac.th/admission/bachelor"},{"title":"หน้ารับสมัครมหาวิทยาลัยธรรมศาสตร์","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"ยังไม่พบประกาศ TCAS70 ของหลักสูตรนี้จากหน้าทางการ","source_url":"https://www.tuadmissions.in.th/"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'tu-engineering-software-engineering', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมซอฟต์แวร์', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://engr.tu.ac.th/bachelor', '[{"title":"หน้ารับสมัครมหาวิทยาลัยธรรมศาสตร์","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"ยังไม่พบประกาศ TCAS70 ของหลักสูตรนี้จากหน้าทางการ","source_url":"https://www.tuadmissions.in.th/"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, 'tu-science-computer-science', 'คณะวิทยาศาสตร์และเทคโนโลยี', 'วิทยาการคอมพิวเตอร์ (คอมพิวเตอร์และวิทยาการสารสนเทศ)', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://cs.sci.tu.ac.th/comsci-cis-th-2/', '[{"title":"หน้ารับสมัครมหาวิทยาลัยธรรมศาสตร์","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"ยังไม่พบประกาศ TCAS70 ของหลักสูตรนี้จากหน้าทางการ","source_url":"https://www.tuadmissions.in.th/"}]'::jsonb, 'official', now()
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
        admission_previews = excluded.admission_previews,
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;
commit;
