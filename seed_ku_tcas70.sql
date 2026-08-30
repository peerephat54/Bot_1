-- Generated from datasets/tcas70_admissions.json
-- Run supabase_schema.sql before this file.
begin;

insert into public.universities (name, short_name, logo_url)
values ('มหาวิทยาลัยเกษตรศาสตร์', 'KU', null)
on conflict (name) do update set
    short_name = excluded.short_name,
    logo_url = excluded.logo_url;

insert into public.university_campuses (
    university_id, code, name, is_main, official_url, updated_at
)
select u.id, 'bangkhen', 'วิทยาเขตบางเขน', true, 'https://ku.ac.th/th/campus-information', now()
from public.universities u
where u.short_name = 'KU'
on conflict (university_id, code) do update set
        name = excluded.name,
        is_main = excluded.is_main,
        official_url = excluded.official_url,
        updated_at = excluded.updated_at;

insert into public.university_campuses (
    university_id, code, name, is_main, official_url, updated_at
)
select u.id, 'kamphaeng-saen', 'วิทยาเขตกำแพงแสน', false, 'https://admission.kps.ku.ac.th/', now()
from public.universities u
where u.short_name = 'KU'
on conflict (university_id, code) do update set
        name = excluded.name,
        is_main = excluded.is_main,
        official_url = excluded.official_url,
        updated_at = excluded.updated_at;

insert into public.university_campuses (
    university_id, code, name, is_main, official_url, updated_at
)
select u.id, 'sriracha', 'วิทยาเขตศรีราชา', false, 'https://admissions.src.ku.ac.th/', now()
from public.universities u
where u.short_name = 'KU'
on conflict (university_id, code) do update set
        name = excluded.name,
        is_main = excluded.is_main,
        official_url = excluded.official_url,
        updated_at = excluded.updated_at;

insert into public.university_campuses (
    university_id, code, name, is_main, official_url, updated_at
)
select u.id, 'sakon-nakhon', 'วิทยาเขตเฉลิมพระเกียรติ จังหวัดสกลนคร', false, 'https://ku.ac.th/th/campus-information', now()
from public.universities u
where u.short_name = 'KU'
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
    u.id, campus.id, 'ku-bangkhen-computer-science-special', 'คณะวิทยาศาสตร์ วิทยาเขตบางเขน', 'วิทยาการคอมพิวเตอร์ (ภาคพิเศษ)', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://admission.ku.ac.th/majors/project/1/', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'bangkhen'
where u.short_name = 'KU'
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
    u.id, campus.id, 'ku-kps-computer-engineering', 'คณะวิศวกรรมศาสตร์ วิทยาเขตกำแพงแสน', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://admission.ku.ac.th/majors/project/10/', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'kamphaeng-saen'
where u.short_name = 'KU'
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
    u.id, campus.id, 'ku-kps-information-technology', 'คณะศิลปศาสตร์และวิทยาศาสตร์ วิทยาเขตกำแพงแสน', 'เทคโนโลยีสารสนเทศ', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://admission.ku.ac.th/majors/project/10/', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'kamphaeng-saen'
where u.short_name = 'KU'
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
    u.id, campus.id, 'ku-kps-information-technology-special', 'คณะศิลปศาสตร์และวิทยาศาสตร์ วิทยาเขตกำแพงแสน', 'เทคโนโลยีสารสนเทศ (ภาคพิเศษ)', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://admission.ku.ac.th/majors/project/10/', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'kamphaeng-saen'
where u.short_name = 'KU'
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
    u.id, campus.id, 'ku-kps-computer-science', 'คณะศิลปศาสตร์และวิทยาศาสตร์ วิทยาเขตกำแพงแสน', 'วิทยาการคอมพิวเตอร์', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://admission.ku.ac.th/majors/project/10/', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'kamphaeng-saen'
where u.short_name = 'KU'
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
    u.id, campus.id, 'ku-kps-computer-science-special', 'คณะศิลปศาสตร์และวิทยาศาสตร์ วิทยาเขตกำแพงแสน', 'วิทยาการคอมพิวเตอร์ (ภาคพิเศษ)', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://admission.ku.ac.th/majors/project/10/', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'kamphaeng-saen'
where u.short_name = 'KU'
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
    u.id, campus.id, 'ku-sriracha-computer-engineering-information-science', 'คณะวิศวกรรมศาสตร์ วิทยาเขตศรีราชา', 'วิศวกรรมคอมพิวเตอร์และสารสนเทศศาสตร์', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://admissions.src.ku.ac.th/', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'sriracha'
where u.short_name = 'KU'
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
    u.id, campus.id, 'ku-sriracha-computer-science', 'คณะวิทยาศาสตร์ วิทยาเขตศรีราชา', 'วิทยาการคอมพิวเตอร์', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://admissions.src.ku.ac.th/', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'sriracha'
where u.short_name = 'KU'
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
    u.id, campus.id, 'ku-sriracha-computer-science-special', 'คณะวิทยาศาสตร์ วิทยาเขตศรีราชา', 'วิทยาการคอมพิวเตอร์ (ภาคพิเศษ)', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://admissions.src.ku.ac.th/', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'sriracha'
where u.short_name = 'KU'
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
    u.id, campus.id, 'ku-bangkhen-computer-science', 'คณะวิทยาศาสตร์ วิทยาเขตบางเขน', 'วิทยาการคอมพิวเตอร์', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', 128, null,
    4, 'https://sci.ku.ac.th/web2024/program/b-s-computer-science/', '[{"title":"โครงการเรียนล่วงหน้าของมหาวิทยาลัยเกษตรศาสตร์","reference_academic_year":2569,"round_label":"Portfolio 1.1","slots_available":5,"status":"unconfirmed","application_fee":0,"selection_summary":"ใช้ผลรายวิชาโครงการเรียนล่วงหน้า โดยคณิตศาสตร์หรือแนวคิดการโปรแกรมเบื้องต้นต้องได้อย่างน้อย B ตามตารางประกาศ","qualification_summary":"ต้องเป็นผู้ผ่านรายวิชาโครงการเรียนล่วงหน้าของมหาวิทยาลัยเกษตรศาสตร์ตามชุดวิชาที่กำหนด","application_period":"15 ต.ค. - 13 พ.ย. 2568 (กำหนดการของ TCAS69)","note":"เป็นจำนวนรับของ TCAS69 ยังห้ามใช้แทนจำนวนรับ TCAS70","source_url":"https://admission.ku.ac.th/media/announcements/2025/10/29/69_TCAS1_AP_1.1_edit_29102025.pdf"}]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'bangkhen'
where u.short_name = 'KU'
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
    u.id, campus.id, 'ku-bangkhen-computer-engineering', 'คณะวิศวกรรมศาสตร์ วิทยาเขตบางเขน', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://cpe.ku.ac.th/', '[{"title":"โครงการช้างเผือก","reference_academic_year":2569,"round_label":"Portfolio 1.1","slots_available":20,"status":"unconfirmed","min_gpax":2.5,"gpax_summary":"GPAX ไม่น้อยกว่า 2.50","application_fee":200,"selection_summary":"ประวัติผลงาน/ประกาศนียบัตร 50% + สัมภาษณ์ 50%","qualification_summary":"ม.6/เทียบเท่า มีหน่วยกิตวิทยาศาสตร์ 22 คณิตศาสตร์ 12 ภาษาต่างประเทศ 9 และมีผลงานคอมพิวเตอร์ชัดเจน","portfolio_summary":"ผลงานพัฒนาโปรแกรม ซอฟต์แวร์ ฮาร์ดแวร์ หรือนวัตกรรม; หากเป็นการแข่งขันต้องระดับประเทศหรือนานาชาติ","application_period":"15 ต.ค. - 13 พ.ย. 2568 (กำหนดการของ TCAS69)","note":"เป็นจำนวนรับของ TCAS69 ยังห้ามใช้แทนจำนวนรับ TCAS70","source_url":"https://admission.ku.ac.th/media/announcements/2025/10/08/69_TCAS1_White_Elephant_1.1.pdf"},{"title":"โครงการเรียนล่วงหน้าของมหาวิทยาลัยเกษตรศาสตร์","reference_academic_year":2569,"round_label":"Portfolio 1.1","slots_available":5,"status":"unconfirmed","application_fee":0,"selection_summary":"ใช้ผลรายวิชาโครงการเรียนล่วงหน้า โดยเลือก 2 จาก 3 วิชาและมีค่าเฉลี่ยอย่างน้อย B+ ตามตารางประกาศ","qualification_summary":"ต้องเป็นผู้ผ่านรายวิชาโครงการเรียนล่วงหน้าของมหาวิทยาลัยเกษตรศาสตร์ตามชุดวิชาที่กำหนด","application_period":"15 ต.ค. - 13 พ.ย. 2568 (กำหนดการของ TCAS69)","note":"เป็นจำนวนรับของ TCAS69 ยังห้ามใช้แทนจำนวนรับ TCAS70","source_url":"https://admission.ku.ac.th/media/announcements/2025/10/29/69_TCAS1_AP_1.1_edit_29102025.pdf"}]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'bangkhen'
where u.short_name = 'KU'
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
    u.id, campus.id, 'ku-bangkhen-software-knowledge-engineering', 'คณะวิศวกรรมศาสตร์ วิทยาเขตบางเขน', 'วิศวกรรมซอฟต์แวร์และความรู้ (หลักสูตรนานาชาติ)', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'อังกฤษ', null, 2565,
    4, 'https://cpe.ku.ac.th/index.php/ske-course-2565/', '[{"title":"โครงการหลักสูตรนานาชาติและหลักสูตรภาษาอังกฤษ","reference_academic_year":2569,"round_label":"Portfolio 1.2","slots_available":15,"status":"unconfirmed","min_gpax":2.5,"gpax_summary":"GPAX 5 ภาค ไม่น้อยกว่า 2.50 หรือเทียบเท่า","application_fee":200,"selection_summary":"Portfolio + คะแนน/ความสามารถภาษาอังกฤษ + สัมภาษณ์ภาษาอังกฤษ","english_score_summary":"SAT Math 600 และ SAT รวม 1,000 พร้อม TOEFL iBT 61 / IELTS 5.5 / Duolingo 95 / TGAT1 60 หรือใช้เกณฑ์ผลการเรียนตามประกาศ","portfolio_summary":"Portfolio ไม่เกิน 10 หน้า A4 ไม่รวมปก คำนำ และสารบัญ","application_period":"19 ธ.ค. 2568 - 15 ม.ค. 2569 (กำหนดการของ TCAS69)","note":"เป็นจำนวนรับของ TCAS69 ยังห้ามใช้แทนจำนวนรับ TCAS70","source_url":"https://admission.ku.ac.th/media/announcements/2025/10/15/69-TCAS1-International_Program_1.2.pdf"}]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'bangkhen'
where u.short_name = 'KU'
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
    u.id, 'ku-bangkhen-white-elephant-1-1', 'ku-bangkhen-white-elephant', 'โครงการช้างเผือก', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.ku.ac.th/majors/project/1/', 'เกณฑ์โครงการช้างเผือก รอบ 1.1 KU-TCAS70',
    null, '2026-08-30T12:00:00+07:00', 'เกณฑ์และจำนวนรับมาจากหน้ารวมเกณฑ์ KU-TCAS70 โดยตรง; ค่าสมัครและค่าเทอมเว้นว่างเพราะหน้าที่ตรวจไม่ได้ระบุตัวเลข', now()
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
    u.id, 'ku-bangkhen-advanced-placement-1-1', 'ku-bangkhen-advanced-placement', 'โครงการเรียนล่วงหน้าของมหาวิทยาลัยเกษตรศาสตร์', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.ku.ac.th/majors/project/2/', 'เกณฑ์โครงการเรียนล่วงหน้า KU-TCAS70',
    null, '2026-08-30T12:00:00+07:00', 'เกณฑ์และจำนวนรับมาจากหน้ารวมเกณฑ์ KU-TCAS70 โดยตรง; ค่าสมัครและค่าเทอมเว้นว่างเพราะหน้าที่ตรวจไม่ได้ระบุตัวเลข', now()
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
    u.id, 'ku-bangkhen-international-1-1', 'ku-bangkhen-international', 'โครงการหลักสูตรนานาชาติและหลักสูตรภาษาอังกฤษ', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.ku.ac.th/majors/project/3/', 'เกณฑ์หลักสูตรนานาชาติและหลักสูตรภาษาอังกฤษ รอบ 1.1 KU-TCAS70',
    null, '2026-08-30T12:00:00+07:00', 'เกณฑ์และจำนวนรับมาจากหน้ารวมเกณฑ์ KU-TCAS70 โดยตรง; ค่าสมัครและค่าเทอมเว้นว่างเพราะหน้าที่ตรวจไม่ได้ระบุตัวเลข', now()
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
    u.id, 'ku-bangkhen-international-1-2', 'ku-bangkhen-international', 'โครงการหลักสูตรนานาชาติและหลักสูตรภาษาอังกฤษ', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.ku.ac.th/majors/project/103/', 'เกณฑ์หลักสูตรนานาชาติและหลักสูตรภาษาอังกฤษ รอบ 1.2 KU-TCAS70',
    null, '2026-08-30T12:00:00+07:00', 'เกณฑ์และจำนวนรับมาจากหน้ารวมเกณฑ์ KU-TCAS70 โดยตรง; ค่าสมัครและค่าเทอมเว้นว่างเพราะหน้าที่ตรวจไม่ได้ระบุตัวเลข', now()
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
    u.id, 'ku-bangkhen-sports-1-1', 'ku-bangkhen-sports', 'โครงการรับนักกีฬาดีเด่น', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.ku.ac.th/majors/project/4/', 'เกณฑ์โครงการรับนักกีฬาดีเด่น รอบ 1.1 KU-TCAS70',
    null, '2026-08-30T12:00:00+07:00', 'เกณฑ์และจำนวนรับมาจากหน้ารวมเกณฑ์ KU-TCAS70 โดยตรง; ค่าสมัครและค่าเทอมเว้นว่างเพราะหน้าที่ตรวจไม่ได้ระบุตัวเลข', now()
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
    u.id, 'ku-bangkhen-psw-1-1', 'ku-bangkhen-psw', 'โครงการ พสวท. และผู้มีความสามารถพิเศษทางวิทยาศาสตร์', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.ku.ac.th/majors/project/8/', 'เกณฑ์โครงการ พสวท. รอบ 1.1 KU-TCAS70',
    null, '2026-08-30T12:00:00+07:00', 'หน้ารวม KU-TCAS70 ระบุสาขาและเงื่อนไขหลัก แต่จำนวนรับของวิทยาการคอมพิวเตอร์ เป็นจำนวนรวมกับเงื่อนไขอื่น จึงไม่แสดงเป็นจำนวนรับเฉพาะโครงการนี้', now()
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
    u.id, 'ku-bangkhen-culture-soft-power-1-1', 'ku-bangkhen-culture-soft-power', 'โควตาศิลปวัฒนธรรมและซอฟต์พาวเวอร์', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.ku.ac.th/majors/project/18/', 'เกณฑ์โควตาศิลปวัฒนธรรมและซอฟต์พาวเวอร์ รอบ 1.1 KU-TCAS70',
    null, '2026-08-30T12:00:00+07:00', 'หน้ารวม KU-TCAS70 ระบุวิศวกรรมคอมพิวเตอร์และจำนวนรับ 2 คน; รายละเอียดการทดสอบและสัมภาษณ์ยังควรตรวจประกาศต้นทางก่อนสมัคร', now()
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
    u.id, 'ku-bangkhen-science-network-1-1', 'ku-bangkhen-science-network', 'โครงการพัฒนาเครือข่ายองค์กรแห่งการเรียนรู้ด้านวิทยาศาสตร์สู่การต่อยอดระดับสากล', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.ku.ac.th/majors/project/32/', 'เกณฑ์โครงการพัฒนาเครือข่ายองค์กรแห่งการเรียนรู้ด้านวิทยาศาสตร์ รอบ 1.1 KU-TCAS70',
    null, '2026-08-30T12:00:00+07:00', 'หน้ารายโครงการระบุวิทยาการคอมพิวเตอร์ภาคปกติและภาคพิเศษ แต่จำนวนรับเป็นยอดรวม และไม่ได้แจกแจงเกณฑ์เฉพาะสาขาคอมพิวเตอร์ จึงต้องตรวจประกาศต้นทางก่อนสมัคร', now()
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
    u.id, 'ku-bangkhen-olympic-1-1', 'ku-bangkhen-olympic', 'โครงการโอลิมปิกวิชาการ รอบ 1.1', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.ku.ac.th/majors/project/9/', 'เกณฑ์โครงการโอลิมปิกวิชาการ รอบ 1.1 KU-TCAS70',
    null, '2026-08-30T12:00:00+07:00', 'เกณฑ์และจำนวนรับมาจากหน้ารวมเกณฑ์ KU-TCAS70 โดยตรง; ค่าสมัครและค่าเทอมเว้นว่างเพราะหน้าที่ตรวจไม่ได้ระบุตัวเลข', now()
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
    u.id, 'ku-bangkhen-olympic-1-2', 'ku-bangkhen-olympic', 'โครงการโอลิมปิกวิชาการ รอบ 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.ku.ac.th/majors/project/109/', 'เกณฑ์โครงการโอลิมปิกวิชาการ รอบ 1.2 KU-TCAS70',
    null, '2026-08-30T12:00:00+07:00', 'หน้ารวม KU-TCAS70 ระบุสาขาและจำนวนรับแล้ว; เกณฑ์ของบางสาขา ต้องตรวจเอกสาร/ประกาศย่อยก่อนสมัคร', now()
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
    u.id, 'ku-kps-advanced-placement-1-1', 'ku-kps-advanced-placement', 'โครงการเรียนล่วงหน้า วิทยาเขตกำแพงแสน', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.ku.ac.th/majors/project/2/', 'เกณฑ์โครงการเรียนล่วงหน้า วิทยาเขตกำแพงแสน KU-TCAS70',
    null, '2026-08-30T12:00:00+07:00', 'เกณฑ์และจำนวนรับมาจากหน้ารวมเกณฑ์ KU-TCAS70 โดยตรง; ค่าสมัครและค่าเทอมเว้นว่างเพราะหน้าที่ตรวจไม่ได้ระบุตัวเลข', now()
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
    u.id, 'ku-kps-portfolio-1-1', 'ku-kps-portfolio', 'โครงการ Portfolio วิทยาเขตกำแพงแสน', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.ku.ac.th/majors/project/10/', 'เกณฑ์โครงการ Portfolio วิทยาเขตกำแพงแสน รอบ 1.1 KU-TCAS70',
    null, '2026-08-30T12:00:00+07:00', 'เกณฑ์และจำนวนรับมาจากหน้ารวมเกณฑ์ KU-TCAS70 โดยตรง; ค่าสมัครและค่าเทอมเว้นว่างเพราะหน้าที่ตรวจไม่ได้ระบุตัวเลข', now()
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
    u.id, 'ku-kps-portfolio-1-2', 'ku-kps-portfolio', 'โครงการ Portfolio วิทยาเขตกำแพงแสน', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.ku.ac.th/majors/project/110/', 'เกณฑ์โครงการ Portfolio วิทยาเขตกำแพงแสน รอบ 1.2 KU-TCAS70',
    null, '2026-08-30T12:00:00+07:00', 'เกณฑ์และจำนวนรับมาจากหน้ารวมเกณฑ์ KU-TCAS70 โดยตรง; ค่าสมัครและค่าเทอมเว้นว่างเพราะหน้าที่ตรวจไม่ได้ระบุตัวเลข', now()
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
    u.id, 'ku-sriracha-morals-1-1', 'ku-sriracha-morals', 'โครงการส่งเสริมคุณธรรมและจริยธรรม', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.ku.ac.th/majors/project/5/', 'เกณฑ์โครงการส่งเสริมคุณธรรมและจริยธรรม วิทยาเขตศรีราชา KU-TCAS70',
    null, '2026-08-30T12:00:00+07:00', 'หน้ารวม KU-TCAS70 ยืนยันชื่อสาขาและจำนวนรับ; รายละเอียดเกณฑ์รายสาขา อยู่ในระบบรับสมัครวิทยาเขตศรีราชาและต้องตรวจซ้ำก่อนสมัคร', now()
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
    u.id, 'ku-sriracha-youth-leader-1-1', 'ku-sriracha-youth-leader', 'โครงการผู้นำเยาวชน', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.ku.ac.th/majors/project/6/', 'เกณฑ์โครงการผู้นำเยาวชน วิทยาเขตศรีราชา KU-TCAS70',
    null, '2026-08-30T12:00:00+07:00', 'หน้ารวม KU-TCAS70 ยืนยันชื่อสาขาและจำนวนรับ; รายละเอียดเกณฑ์รายสาขา อยู่ในระบบรับสมัครวิทยาเขตศรีราชาและต้องตรวจซ้ำก่อนสมัคร', now()
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
    u.id, 'ku-sriracha-expansion-1-1', 'ku-sriracha-expansion', 'โครงการขยายโอกาสทางการศึกษา วิทยาเขตศรีราชา', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.ku.ac.th/majors/project/107/', 'เกณฑ์โครงการขยายโอกาสทางการศึกษา วิทยาเขตศรีราชา รอบ 1.1 KU-TCAS70',
    null, '2026-08-30T12:00:00+07:00', 'เกณฑ์และจำนวนรับมาจากหน้ารวมเกณฑ์ KU-TCAS70 โดยตรง; ค่าสมัครและค่าเทอมเว้นว่างเพราะหน้าที่ตรวจไม่ได้ระบุตัวเลข', now()
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
    u.id, 'ku-sriracha-expansion-1-2', 'ku-sriracha-expansion', 'โครงการขยายโอกาสทางการศึกษา วิทยาเขตศรีราชา', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.ku.ac.th/majors/project/207/', 'เกณฑ์โครงการขยายโอกาสทางการศึกษา วิทยาเขตศรีราชา รอบ 1.2 KU-TCAS70',
    null, '2026-08-30T12:00:00+07:00', 'หน้ารวม KU-TCAS70 ระบุสาขาแล้ว แต่ปฏิทินรอบ 1.2 ของวิทยาเขตศรีราชา ยังรอประกาศ จึงยังไม่แสดงวันสมัครเป็นวันที่ยืนยัน', now()
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

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 16, 'รับ 16 คน; GPAX 4 ภาคเรียนอย่างน้อย 2.75'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-computer-science'
where p.code = 'ku-bangkhen-white-elephant-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 20, 'รับ 20 คน; GPAX อย่างน้อย 2.50 และต้องมีผลงานด้านคอมพิวเตอร์ชัดเจน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-computer-engineering'
where p.code = 'ku-bangkhen-white-elephant-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, 'รับ 5 คน เฉพาะผู้เข้าร่วมโครงการเรียนล่วงหน้า มก.'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-computer-science'
where p.code = 'ku-bangkhen-advanced-placement-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, 'รับ 5 คน เฉพาะผู้เข้าร่วมโครงการเรียนล่วงหน้า มก.'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-computer-engineering'
where p.code = 'ku-bangkhen-advanced-placement-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 15, 'รับ 15 คน; ใช้ GPAX 4 ภาคเรียน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-software-knowledge-engineering'
where p.code = 'ku-bangkhen-international-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 15, 'รับ 15 คน; ใช้ GPAX 5 ภาคเรียนและเพิ่ม TGAT1 เป็นทางเลือกภาษาอังกฤษ'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-software-knowledge-engineering'
where p.code = 'ku-bangkhen-international-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 22, 'รับ 22 คน; มีทั้งเส้นทางผู้มีผลงานและผู้ไม่มีผลงานตามเกณฑ์หน้าโครงการ'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-computer-science-special'
where p.code = 'ku-bangkhen-white-elephant-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 2, 'รับ 2 คน; นักกีฬาระดับชาติหรือเยาวชนทีมชาติ'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-computer-science'
where p.code = 'ku-bangkhen-sports-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 1, 'รับ 1 คน; นักกีฬาระดับชาติหรือเยาวชนทีมชาติ'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-computer-engineering'
where p.code = 'ku-bangkhen-sports-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'จำนวนรับรวมกับเงื่อนไขอื่นตามที่หน้าโครงการระบุ'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-computer-science'
where p.code = 'ku-bangkhen-psw-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 2, 'รับ 2 คน; โควตาศิลปวัฒนธรรม/ซอฟต์พาวเวอร์ และต้องตรวจรายละเอียดการทดสอบจากประกาศ'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-computer-engineering'
where p.code = 'ku-bangkhen-culture-soft-power-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'จำนวนรับรวมกับเงื่อนไขอื่นตามหน้าโครงการ ไม่ใช่จำนวนรับเฉพาะวิทยาการคอมพิวเตอร์'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-computer-science'
where p.code = 'ku-bangkhen-science-network-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'จำนวนรับรวมกับเงื่อนไขอื่นตามหน้าโครงการ ไม่ใช่จำนวนรับเฉพาะวิทยาการคอมพิวเตอร์ภาคพิเศษ'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-computer-science-special'
where p.code = 'ku-bangkhen-science-network-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 2, 'รับ 2 คน; ต้องมีประสบการณ์ค่าย สอวน. อย่างน้อย 2 ค่าย'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-computer-science'
where p.code = 'ku-bangkhen-olympic-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 2, 'รับ 2 คน; ใช้คุณสมบัติตามเส้นทาง สสวท.'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-software-knowledge-engineering'
where p.code = 'ku-bangkhen-olympic-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 10, 'รับรวม 10 คน แบ่งเป็น สอวน. 5 คน และ สสวท. 5 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-computer-engineering'
where p.code = 'ku-bangkhen-olympic-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 2, 'หน้าโครงการระบุ 2 คน แต่รายละเอียดเกณฑ์รายสาขายังต้องตรวจประกาศย่อยก่อนสมัคร'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-software-knowledge-engineering'
where p.code = 'ku-bangkhen-olympic-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 2, 'รับ 2 คน; ผู้เข้าร่วมโครงการเรียนล่วงหน้า และต้องผ่านวิชาตามเกณฑ์กำแพงแสน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-kps-computer-engineering'
where p.code = 'ku-kps-advanced-placement-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 20, 'รับ 20 คน; แผนวิทยาศาสตร์-คณิตศาสตร์และมีผลงานคอมพิวเตอร์'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-kps-computer-engineering'
where p.code = 'ku-kps-portfolio-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 30, 'รับ 30 คน; รับ ม.6 หรือ ปวช. ตามเงื่อนไขสาขา'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-kps-information-technology'
where p.code = 'ku-kps-portfolio-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 70, 'รับ 70 คน; รับ ม.6 หรือ ปวช. ตามเงื่อนไขสาขาภาคพิเศษ'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-kps-information-technology-special'
where p.code = 'ku-kps-portfolio-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 30, 'รับ 30 คน; รับตามแผนการเรียนและคุณสมบัติของสาขา'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-kps-computer-science'
where p.code = 'ku-kps-portfolio-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 40, 'รับ 40 คน; รับ ม.6 หรือ ปวช. ตามเงื่อนไขสาขาภาคพิเศษ'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-kps-computer-science-special'
where p.code = 'ku-kps-portfolio-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 1, 'รับ 1 คน; แผนวิทยาศาสตร์-คณิตศาสตร์และมีผลงานคอมพิวเตอร์'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-kps-computer-engineering'
where p.code = 'ku-kps-portfolio-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 1, 'รับ 1 คน; รายละเอียดคุณสมบัติรายสาขาให้ตรวจในระบบรับสมัครศรีราชา'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-sriracha-computer-engineering-information-science'
where p.code = 'ku-sriracha-morals-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 1, 'รับ 1 คน; รายละเอียดคุณสมบัติรายสาขาให้ตรวจในระบบรับสมัครศรีราชา'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-sriracha-computer-engineering-information-science'
where p.code = 'ku-sriracha-youth-leader-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 3, 'รับ 3 คน; รายละเอียดคุณสมบัติรายสาขาให้ตรวจในระบบรับสมัครศรีราชา'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-sriracha-computer-science-special'
where p.code = 'ku-sriracha-youth-leader-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 2, 'รับ 2 คน; รายละเอียดคุณสมบัติรายสาขาให้ตรวจในระบบรับสมัครศรีราชา'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-sriracha-computer-science'
where p.code = 'ku-sriracha-youth-leader-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 20, 'รับรวม 20 คน แบ่งตามคุณสมบัติ ม.6 และ ปวช.'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-sriracha-computer-engineering-information-science'
where p.code = 'ku-sriracha-expansion-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 10, 'รับ 10 คน; ใช้เกณฑ์ Portfolio, GPAX และสัมภาษณ์ตามหน้าโครงการ'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-sriracha-computer-science'
where p.code = 'ku-sriracha-expansion-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 25, 'รับ 25 คน; ใช้เกณฑ์ Portfolio, GPAX และสัมภาษณ์ตามหน้าโครงการ'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-sriracha-computer-science-special'
where p.code = 'ku-sriracha-expansion-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 20, 'รับรวม 20 คน แบ่งตามคุณสมบัติ ม.6 และ ปวช.; วันสมัครรอประกาศ'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-sriracha-computer-engineering-information-science'
where p.code = 'ku-sriracha-expansion-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 10, 'รับ 10 คน; วันสมัครรอประกาศจากวิทยาเขตศรีราชา'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-sriracha-computer-science'
where p.code = 'ku-sriracha-expansion-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 10, 'รับ 10 คน; วันสมัครรอประกาศจากวิทยาเขตศรีราชา'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-sriracha-computer-science-special'
where p.code = 'ku-sriracha-expansion-1-2'
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
    p.id, m.id, 2.75, '{"semesters":4}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษา ม.6 หรือเทียบเท่าในปีการศึกษา 2569","มีผลงานเขียนโปรแกรมเข้าประกวดหรือได้รับรางวัล","ผู้สมัครต้องเป็นผู้ดำเนินงานหลักในผลงานอย่างน้อย 40%"]'::jsonb, 'แสดงผลงานเขียนโปรแกรมที่เข้าประกวดหรือได้รับรางวัล และทำวิดีโอไม่เกิน 2 นาที นำเสนอผลงานที่ได้รับรางวัลดีที่สุดไม่เกิน 3 รายการ พร้อมอธิบายการออกแบบ การพัฒนา source code สำคัญ และรางวัล; หากใช้ AI ต้องระบุส่วนที่ใช้',
    '{"video_max_minutes":2,"max_featured_awarded_projects":3,"minimum_primary_contribution_percent":40,"ai_usage_disclosure_required":true}'::jsonb, '["ผลงานเขียนโปรแกรมที่เข้าประกวด","ผลงานเขียนโปรแกรมที่ได้รับรางวัล"]'::jsonb, '["ผลการเรียน 4 ภาคเรียน","หลักฐานผลงาน/รางวัล","วิดีโอผลงาน"]'::jsonb,
    '[{"name":"โครงงาน/ผลงาน","weight_percent":80},{"name":"สัมภาษณ์","weight_percent":20}]'::jsonb, '{"interview_required":true}'::jsonb, 'GPAX 4 ภาคเรียน ≥ 2.75; มีผลงานเขียนโปรแกรมที่ประกวดหรือได้รางวัล; ผลงาน 80% และสัมภาษณ์ 20%',
    'https://admission.ku.ac.th/majors/project/1/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-computer-science'
where p.code = 'ku-bangkhen-white-elephant-1-1'
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
    p.id, m.id, 2.5, '{}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 หรือเทียบเท่า","หน่วยกิตวิทยาศาสตร์อย่างน้อย 22 คณิตศาสตร์ 12 และภาษาต่างประเทศ 9","มีผลงานด้านคอมพิวเตอร์ชัดเจน เช่น โปรแกรม ซอฟต์แวร์ ฮาร์ดแวร์ หรือนวัตกรรม","หากเป็นผลงานจากการแข่งขัน ต้องเป็นระดับประเทศหรือนานาชาติ"]'::jsonb, 'ประวัติผลงานและประกาศนียบัตรด้านคอมพิวเตอร์ เช่น โปรแกรม โครงงานนวัตกรรม ซอฟต์แวร์ หรือฮาร์ดแวร์',
    '{}'::jsonb, '["โปรแกรมหรือซอฟต์แวร์","โครงงานนวัตกรรมด้านคอมพิวเตอร์","ผลงานฮาร์ดแวร์","ผลงานจากการแข่งขันระดับประเทศหรือนานาชาติ"]'::jsonb, '["ผลการเรียน","Portfolio","ประกาศนียบัตรหรือหลักฐานผลงาน"]'::jsonb,
    '[{"name":"ประวัติผลงานและประกาศนียบัตร","weight_percent":50},{"name":"สัมภาษณ์","weight_percent":50}]'::jsonb, '{"minimum_subject_credits":{"วิทยาศาสตร์":22,"คณิตศาสตร์":12,"ภาษาต่างประเทศ":9},"interview_required":true}'::jsonb, 'GPAX ≥ 2.50; วิทยาศาสตร์ 22 คณิตศาสตร์ 12 ภาษาต่างประเทศ 9 หน่วยกิต; ผลงาน/ประกาศนียบัตร 50% และสัมภาษณ์ 50%',
    'https://admission.ku.ac.th/majors/project/1/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-computer-engineering'
where p.code = 'ku-bangkhen-white-elephant-1-1'
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
    p.id, m.id, null, '{}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษา ม.6 หรือเทียบเท่าในปีการศึกษา 2569","เข้าร่วมโครงการเรียนล่วงหน้าของมหาวิทยาลัยเกษตรศาสตร์"]'::jsonb, null,
    '{}'::jsonb, '[]'::jsonb, '[]'::jsonb,
    '["ผลรายวิชาโครงการเรียนล่วงหน้า","สัมภาษณ์"]'::jsonb, '{"advanced_placement_courses":["คณิตศาสตร์","แนวคิดการโปรแกรมเบื้องต้น"],"choose_courses":1,"minimum_grade":"B","interview_required":true}'::jsonb, 'ผู้เข้าร่วมโครงการเรียนล่วงหน้า มก.; เลือกคณิตศาสตร์หรือแนวคิดการโปรแกรมเบื้องต้น 1 วิชา ได้อย่างน้อย B และสอบสัมภาษณ์',
    'https://admission.ku.ac.th/majors/project/2/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-computer-science'
where p.code = 'ku-bangkhen-advanced-placement-1-1'
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
    p.id, m.id, null, '{}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษา ม.6 หรือเทียบเท่าในปีการศึกษา 2569","เข้าร่วมโครงการเรียนล่วงหน้าของมหาวิทยาลัยเกษตรศาสตร์"]'::jsonb, null,
    '{}'::jsonb, '[]'::jsonb, '[]'::jsonb,
    '["ผลรายวิชาโครงการเรียนล่วงหน้า","สัมภาษณ์"]'::jsonb, '{"advanced_placement_courses":["คณิตศาสตร์","ฟิสิกส์","คอมพิวเตอร์และการโปรแกรม","การเขียนแบบวิศวกรรม"],"choose_courses":2,"minimum_average_grade":"B+","course_01204111_selection_only":true,"interview_required":true}'::jsonb, 'ผู้เข้าร่วมโครงการเรียนล่วงหน้า มก.; เลือก 2 วิชาจากคณิตศาสตร์ ฟิสิกส์ คอมพิวเตอร์และการโปรแกรม หรือเขียนแบบวิศวกรรม เฉลี่ยอย่างน้อย B+ และสัมภาษณ์',
    'https://admission.ku.ac.th/majors/project/2/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-computer-engineering'
where p.code = 'ku-bangkhen-advanced-placement-1-1'
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
    p.id, m.id, 2.5, '{"semesters":4}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ม.6/เทียบเท่า หรือมัธยมปลายจากต่างประเทศ","GED ตั้งแต่ พ.ค. 2560 ต้องผ่าน 4 วิชา วิชาละอย่างน้อย 145"]'::jsonb, 'ควรมีผลงานตรงกับสาขาที่สมัคร เช่น ผลงานด้าน Programming สำหรับสาขาซอฟต์แวร์',
    '{}'::jsonb, '[]'::jsonb, '["ผลการเรียน 4 ภาคเรียน","Portfolio","ผลคะแนนมาตรฐาน หรือผลการเรียนรายวิชาที่ใช้เป็นทางเลือก","หลักฐานวุฒิ/การศึกษา หรือ GED (ถ้ามี)"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":25},{"name":"ภาษาอังกฤษ","weight_percent":25},{"name":"สัมภาษณ์ภาษาอังกฤษ","weight_percent":50}]'::jsonb, '{"qualification_paths":[{"path":"คะแนนมาตรฐาน","sat_math_min":600,"sat_total_min":1000,"english_score_one_of":["TOEFL iBT ≥ 61","IELTS ≥ 5.5","Duolingo ≥ 95"]},{"path":"ผลการเรียนรายวิชา","subjects":["ภาษาอังกฤษ","ฟิสิกส์","คณิตศาสตร์"],"minimum_each":2.5}],"interview_language":"อังกฤษ","interview_breakdown":{"คำถามวิชาการ/ภาษาอังกฤษ":50,"ทัศนคติและความเหมาะสม":50}}'::jsonb, 'GPAX 4 ภาคเรียน ≥ 2.50; เลือกใช้ SAT Math ≥ 600 และ SAT รวม ≥ 1,000 พร้อมคะแนนภาษาอังกฤษ (TOEFL iBT ≥ 61 / IELTS ≥ 5.5 / Duolingo ≥ 95) หรือ GPA อังกฤษ ฟิสิกส์ และคณิตศาสตร์แต่ละวิชา ≥ 2.50; Portfolio 25% ภาษาอังกฤษ 25% สัมภาษณ์ 50%',
    'https://admission.ku.ac.th/majors/project/3/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-software-knowledge-engineering'
where p.code = 'ku-bangkhen-international-1-1'
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
    p.id, m.id, 2.5, '{"semesters":5}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ม.6/เทียบเท่า หรือมัธยมปลายจากต่างประเทศ","GED ตั้งแต่ พ.ค. 2560 ต้องผ่าน 4 วิชา วิชาละอย่างน้อย 145"]'::jsonb, 'ควรมีผลงานตรงกับสาขาที่สมัคร เช่น ผลงานด้าน Programming สำหรับสาขาซอฟต์แวร์',
    '{}'::jsonb, '[]'::jsonb, '["ผลการเรียน 5 ภาคเรียน","Portfolio","ผลคะแนนมาตรฐาน หรือผลการเรียนรายวิชาที่ใช้เป็นทางเลือก","หลักฐานวุฒิ/การศึกษา หรือ GED (ถ้ามี)"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":25},{"name":"ภาษาอังกฤษ","weight_percent":25},{"name":"สัมภาษณ์ภาษาอังกฤษ","weight_percent":50}]'::jsonb, '{"qualification_paths":[{"path":"คะแนนมาตรฐาน","sat_math_min":600,"sat_total_min":1000,"english_score_one_of":["TOEFL iBT ≥ 61","IELTS ≥ 5.5","Duolingo ≥ 95","TGAT1 ≥ 60"]},{"path":"ผลการเรียนรายวิชา","subjects":["ภาษาอังกฤษ","ฟิสิกส์","คณิตศาสตร์"],"minimum_each":2.5}],"interview_language":"อังกฤษ","interview_breakdown":{"คำถามวิชาการ/ภาษาอังกฤษ":50,"ทัศนคติและความเหมาะสม":50}}'::jsonb, 'GPAX 5 ภาคเรียน ≥ 2.50; เลือกใช้ SAT Math ≥ 600 และ SAT รวม ≥ 1,000 พร้อมคะแนนภาษาอังกฤษ (TOEFL iBT ≥ 61 / IELTS ≥ 5.5 / Duolingo ≥ 95 / TGAT1 ≥ 60) หรือ GPA อังกฤษ ฟิสิกส์ และคณิตศาสตร์แต่ละวิชา ≥ 2.50; Portfolio 25% ภาษาอังกฤษ 25% สัมภาษณ์ 50%',
    'https://admission.ku.ac.th/majors/project/103/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-software-knowledge-engineering'
where p.code = 'ku-bangkhen-international-1-2'
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
    p.id, m.id, 3.0, '{"semesters":4}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษา ม.6 หรือเทียบเท่า","ผ่านค่าย สอวน. อย่างน้อย 2 ค่าย ตามสาขา/หลักฐานที่ประกาศกำหนด"]'::jsonb, 'Portfolio ด้านวิชาการหรือกิจกรรม ไม่เกิน 10 หน้า',
    '{"max_pages":10}'::jsonb, '["หลักฐานผ่านค่าย สอวน. อย่างน้อย 2 ค่าย","ผลงานวิชาการหรือกิจกรรม"]'::jsonb, '["ผลการเรียน 4 ภาคเรียน","หลักฐานค่าย สอวน.","Portfolio ไม่เกิน 10 หน้า"]'::jsonb,
    '["สัมภาษณ์"]'::jsonb, '{"minimum_subject_credits":{"คณิตศาสตร์":12},"interview_required":true}'::jsonb, 'GPAX 4 ภาคเรียน ≥ 3.00; ผ่านค่าย สอวน. อย่างน้อย 2 ค่าย; ต้องมีคณิตศาสตร์อย่างน้อย 12 หน่วยกิต และสอบสัมภาษณ์',
    'https://admission.ku.ac.th/majors/project/9/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-computer-science'
where p.code = 'ku-bangkhen-olympic-1-1'
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
    p.id, m.id, 3.0, '{"semesters":4}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษา ม.6 หรือเทียบเท่า","ผ่านค่าย/การคัดเลือก สสวท. อย่างน้อย 3 ค่าย ตามรายละเอียดหน้าโครงการ"]'::jsonb, 'Portfolio ด้านวิชาการหรือกิจกรรม ไม่เกิน 10 หน้า',
    '{"max_pages":10}'::jsonb, '["หลักฐานค่าย/การคัดเลือก สสวท.","ผลงานวิชาการหรือกิจกรรม"]'::jsonb, '["ผลการเรียน 4 ภาคเรียน","หลักฐานค่าย สสวท.","Portfolio ไม่เกิน 10 หน้า"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":50},{"name":"สัมภาษณ์","weight_percent":50}]'::jsonb, '{"minimum_subject_credits":{"วิทยาศาสตร์":22,"คณิตศาสตร์":12,"ภาษาต่างประเทศ":9},"ipst_camp_min":3,"interview_required":true}'::jsonb, 'GPAX 4 ภาคเรียน ≥ 3.00; วิทยาศาสตร์ 22 คณิตศาสตร์ 12 และภาษาต่างประเทศ 9 หน่วยกิต; ผ่านค่าย สสวท. อย่างน้อย 3 ค่าย; Portfolio 50% และสัมภาษณ์ 50%',
    'https://admission.ku.ac.th/majors/project/9/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-software-knowledge-engineering'
where p.code = 'ku-bangkhen-olympic-1-1'
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
    p.id, m.id, 2.5, '{"semesters":5}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษา ม.6 หรือเทียบเท่า","เลือกเส้นทาง สอวน. หรือ สสวท. ตามจำนวนที่โครงการแบ่งไว้"]'::jsonb, 'Portfolio ด้านวิชาการหรือกิจกรรม ไม่เกิน 10 หน้า',
    '{"max_pages":10}'::jsonb, '["ผ่านค่าย สอวน. อย่างน้อย 2 ค่าย","ผ่านค่าย/การคัดเลือก สสวท. ระดับประเทศ"]'::jsonb, '["ผลการเรียน","หลักฐานค่าย/การคัดเลือก","Portfolio ไม่เกิน 10 หน้า"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":50},{"name":"สัมภาษณ์","weight_percent":50}]'::jsonb, '{"minimum_subject_credits":{"วิทยาศาสตร์":22,"คณิตศาสตร์":12,"ภาษาต่างประเทศ":9},"seat_tracks":["สอวน. 5 คน","สสวท. 5 คน"],"interview_required":true}'::jsonb, 'GPAX ≥ 2.50; วิทยาศาสตร์ 22 คณิตศาสตร์ 12 และภาษาต่างประเทศ 9 หน่วยกิต; รับรวม 10 คน แบ่ง สอวน. 5 และ สสวท. 5; Portfolio 50% และสัมภาษณ์ 50%',
    'https://admission.ku.ac.th/majors/project/109/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-computer-engineering'
where p.code = 'ku-bangkhen-olympic-1-2'
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
    p.id, m.id, null, '{}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '[]'::jsonb, 'หน้ารวม KU-TCAS70 ระบุว่ามีสาขานี้ในโครงการแล้ว แต่ไม่ได้แสดงรายละเอียด Portfolio และคุณสมบัติรายสาขาครบในหน้าที่ตรวจได้',
    '{}'::jsonb, '[]'::jsonb, '["ตรวจประกาศ/เอกสารย่อยของโครงการก่อนสมัคร"]'::jsonb,
    '["ตรวจตามประกาศรายสาขา"]'::jsonb, '{"detail_status":"หน้ารวมระบุจำนวนรับ 2 คน แต่ไม่แสดงรายละเอียดเกณฑ์ของวิศวกรรมซอฟต์แวร์และความรู้ครบ"}'::jsonb, 'พบชื่อโครงการและสาขาจากหน้ารวม KU-TCAS70 แล้ว แต่เกณฑ์รายสาขายังไม่ครบ จึงไม่สรุป GPAX หรือสัดส่วนคะแนนแทนประกาศ',
    'https://admission.ku.ac.th/majors/project/109/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-software-knowledge-engineering'
where p.code = 'ku-bangkhen-olympic-1-2'
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
    p.id, m.id, null, '{}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษา ม.6 หรือเทียบเท่า","เข้าร่วมโครงการเรียนล่วงหน้าของมหาวิทยาลัยเกษตรศาสตร์"]'::jsonb, null,
    '{}'::jsonb, '[]'::jsonb, '["หลักฐานเข้าร่วมโครงการเรียนล่วงหน้า","ผลรายวิชาที่ใช้สมัคร"]'::jsonb,
    '["ผลรายวิชาโครงการเรียนล่วงหน้า","สัมภาษณ์"]'::jsonb, '{"advanced_placement_courses":["คณิตศาสตร์","ฟิสิกส์","คอมพิวเตอร์และการโปรแกรม","การเขียนแบบวิศวกรรม"],"choose_courses":2,"minimum_grade":"C","interview_required":true}'::jsonb, 'ผู้เข้าร่วมโครงการเรียนล่วงหน้า มก.; ใช้ผลรายวิชาตามชุดวิชาที่กำหนด และต้องมีเกรดอย่างน้อย C ในวิชาที่เลือก พร้อมสัมภาษณ์',
    'https://admission.ku.ac.th/majors/project/2/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-kps-computer-engineering'
where p.code = 'ku-kps-advanced-placement-1-1'
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
    p.id, m.id, 3.0, '{"studying_semesters":"4 หรือ 5","graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ม.6 หรือเทียบเท่า","แผนการเรียนวิทยาศาสตร์-คณิตศาสตร์","กำลังศึกษาอย่างน้อยตามจำนวนภาคเรียนที่ประกาศกำหนด หรือผู้จบแล้วใช้ผลการเรียน 6 ภาคเรียน","มีผลงาน โครงงาน การแข่งขัน หรือประกาศนียบัตรด้านคอมพิวเตอร์"]'::jsonb, 'Portfolio ควรแสดงประวัติ เหตุผลที่เลือกสาขา กิจกรรม/ผลงานคอมพิวเตอร์ และแผนการเรียนตามหัวข้อที่วิทยาเขตกำแพงแสนกำหนด',
    '{"portfolio_weight_percent":70,"profile_weight_percent":10,"reason_and_goal_weight_percent":20,"activities_weight_percent":40,"academic_plan_weight_percent":30}'::jsonb, '["โครงงานด้านคอมพิวเตอร์","ผลงานจากการแข่งขัน","ประกาศนียบัตรด้านคอมพิวเตอร์"]'::jsonb, '["ผลการเรียน","Portfolio","หลักฐานผลงาน/ประกาศนียบัตร"]'::jsonb,
    '["ประเมิน Portfolio 70% (ประวัติ 10% + เหตุผล 20% + กิจกรรม 40%)","ประเมินผลการเรียน/แผนการเรียน 30%","มีสอบสัมภาษณ์ (หน้าโครงการระบุสัดส่วนขั้นสัมภาษณ์ 100%)"]'::jsonb, '{"interview_required":true}'::jsonb, 'GPAX ≥ 3.00; แผนวิทยาศาสตร์-คณิตศาสตร์; ใช้ผลการเรียน 4 หรือ 5 หรือผู้จบแล้ว 6 ภาคเรียน; ต้องมีผลงานคอมพิวเตอร์; Portfolio 70% และมีสัมภาษณ์',
    'https://admission.ku.ac.th/majors/project/10/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-kps-computer-engineering'
where p.code = 'ku-kps-portfolio-1-1'
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
    p.id, m.id, null, '{"semesters":"4 หรือ 5"}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ม.6 แผนวิทยาศาสตร์และคณิตศาสตร์ หรือแผนวิทยาศาสตร์ หรือแผนคณิตศาสตร์","หรือ ปวช. สาขาที่เกี่ยวข้องกับคอมพิวเตอร์ตามประกาศ"]'::jsonb, 'Portfolio กิจกรรม/โครงงานด้านเทคโนโลยีสารสนเทศ พร้อมเหตุผลที่เลือกสาขาและเป้าหมายการเรียน',
    '{}'::jsonb, '["กิจกรรมด้านเทคโนโลยีสารสนเทศ","โครงงานด้านเทคโนโลยีสารสนเทศ"]'::jsonb, '["ผลการเรียน","Portfolio","หลักฐานกิจกรรม/โครงงานที่เกี่ยวข้อง"]'::jsonb,
    '[]'::jsonb, '{"qualification_paths":[{"qualification":"ม.6","min_gpax":2.25},{"qualification":"ปวช. ที่เกี่ยวข้อง","min_gpax":2.5,"computer_credits_min":18}]}'::jsonb, 'ม.6 GPAX ≥ 2.25 หรือ ปวช. GPAX ≥ 2.50 และผู้สมัคร ปวช. ต้องมีหน่วยกิตคอมพิวเตอร์อย่างน้อย 18; ส่ง Portfolio ที่เกี่ยวข้อง',
    'https://admission.ku.ac.th/majors/project/10/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-kps-information-technology'
where p.code = 'ku-kps-portfolio-1-1'
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
    p.id, m.id, null, '{"semesters":"4 หรือ 5"}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ม.6 แผนวิทยาศาสตร์และคณิตศาสตร์ หรือแผนวิทยาศาสตร์ หรือแผนคณิตศาสตร์","หรือ ปวช. สาขาที่เกี่ยวข้องกับคอมพิวเตอร์ตามประกาศ"]'::jsonb, 'Portfolio กิจกรรม/โครงงานด้านเทคโนโลยีสารสนเทศ พร้อมเหตุผลที่เลือกสาขาและเป้าหมายการเรียน',
    '{}'::jsonb, '["กิจกรรมด้านเทคโนโลยีสารสนเทศ","โครงงานด้านเทคโนโลยีสารสนเทศ"]'::jsonb, '["ผลการเรียน","Portfolio","หลักฐานกิจกรรม/โครงงานที่เกี่ยวข้อง"]'::jsonb,
    '[]'::jsonb, '{"qualification_paths":[{"qualification":"ม.6","min_gpax":2.0},{"qualification":"ปวช. ที่เกี่ยวข้อง","min_gpax":2.25,"computer_credits_min":18}]}'::jsonb, 'ม.6 GPAX ≥ 2.00 หรือ ปวช. GPAX ≥ 2.25 และผู้สมัคร ปวช. ต้องมีหน่วยกิตคอมพิวเตอร์อย่างน้อย 18; ส่ง Portfolio ที่เกี่ยวข้อง',
    'https://admission.ku.ac.th/majors/project/10/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-kps-information-technology-special'
where p.code = 'ku-kps-portfolio-1-1'
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
    p.id, m.id, 2.75, '{"semesters":"4 หรือ 5"}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ม.6 แผนวิทยาศาสตร์และคณิตศาสตร์ หรือแผนวิทยาศาสตร์ หรือแผนคณิตศาสตร์","มีผลงาน/กิจกรรมที่เกี่ยวข้องกับวิทยาการคอมพิวเตอร์"]'::jsonb, 'Portfolio กิจกรรมหรือโครงงานด้านวิทยาการคอมพิวเตอร์ พร้อมเหตุผลที่เลือกสาขาและเป้าหมายการเรียน',
    '{}'::jsonb, '["กิจกรรมด้านวิทยาการคอมพิวเตอร์","โครงงานด้านวิทยาการคอมพิวเตอร์"]'::jsonb, '["ผลการเรียน","Portfolio","หลักฐานกิจกรรม/โครงงานที่เกี่ยวข้อง"]'::jsonb,
    '[]'::jsonb, '{}'::jsonb, 'GPAX ≥ 2.75; รับตามแผนการเรียนที่ประกาศกำหนด และส่ง Portfolio ที่เกี่ยวข้องกับวิทยาการคอมพิวเตอร์',
    'https://admission.ku.ac.th/majors/project/10/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-kps-computer-science'
where p.code = 'ku-kps-portfolio-1-1'
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
    p.id, m.id, 2.5, '{"semesters":"4 หรือ 5"}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ม.6 หรือ ปวช. สาขาที่ประกาศกำหนด เช่น ช่างเทคนิคคอมพิวเตอร์ คอมพิวเตอร์ธุรกิจ ไฟฟ้า หรืออิเล็กทรอนิกส์","มีผลงาน/กิจกรรมที่เกี่ยวข้องกับวิทยาการคอมพิวเตอร์"]'::jsonb, 'Portfolio กิจกรรมหรือโครงงานด้านวิทยาการคอมพิวเตอร์ พร้อมเหตุผลที่เลือกสาขาและเป้าหมายการเรียน',
    '{}'::jsonb, '["กิจกรรมด้านวิทยาการคอมพิวเตอร์","โครงงานด้านวิทยาการคอมพิวเตอร์"]'::jsonb, '["ผลการเรียน","Portfolio","หลักฐานกิจกรรม/โครงงานที่เกี่ยวข้อง"]'::jsonb,
    '[]'::jsonb, '{}'::jsonb, 'GPAX ≥ 2.50; รับ ม.6 หรือ ปวช. ตามสาขาที่ประกาศกำหนด และส่ง Portfolio ที่เกี่ยวข้อง',
    'https://admission.ku.ac.th/majors/project/10/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-kps-computer-science-special'
where p.code = 'ku-kps-portfolio-1-1'
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
    p.id, m.id, 3.0, '{"studying_semesters":"4 หรือ 5","graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ม.6 หรือเทียบเท่า","แผนการเรียนวิทยาศาสตร์-คณิตศาสตร์","กำลังศึกษาอย่างน้อยตามจำนวนภาคเรียนที่ประกาศกำหนด หรือผู้จบแล้วใช้ผลการเรียน 6 ภาคเรียน","มีผลงาน โครงงาน การแข่งขัน หรือประกาศนียบัตรด้านคอมพิวเตอร์"]'::jsonb, 'Portfolio ควรแสดงประวัติ เหตุผลที่เลือกสาขา กิจกรรม/ผลงานคอมพิวเตอร์ และแผนการเรียนตามหัวข้อที่วิทยาเขตกำแพงแสนกำหนด',
    '{"portfolio_weight_percent":70,"profile_weight_percent":10,"reason_and_goal_weight_percent":20,"activities_weight_percent":40,"academic_plan_weight_percent":30}'::jsonb, '["โครงงานด้านคอมพิวเตอร์","ผลงานจากการแข่งขัน","ประกาศนียบัตรด้านคอมพิวเตอร์"]'::jsonb, '["ผลการเรียน","Portfolio","หลักฐานผลงาน/ประกาศนียบัตร"]'::jsonb,
    '["ประเมิน Portfolio 70% (ประวัติ 10% + เหตุผล 20% + กิจกรรม 40%)","ประเมินผลการเรียน/แผนการเรียน 30%","มีสอบสัมภาษณ์ (หน้าโครงการระบุสัดส่วนขั้นสัมภาษณ์ 100%)"]'::jsonb, '{"interview_required":true}'::jsonb, 'GPAX ≥ 3.00; แผนวิทยาศาสตร์-คณิตศาสตร์; ใช้ผลการเรียน 4 หรือ 5 หรือผู้จบแล้ว 6 ภาคเรียน; ต้องมีผลงานคอมพิวเตอร์; Portfolio 70% และมีสัมภาษณ์',
    'https://admission.ku.ac.th/majors/project/110/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-kps-computer-engineering'
where p.code = 'ku-kps-portfolio-1-2'
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
    p.id, m.id, null, '{}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '[]'::jsonb, 'หน้ารวม KU-TCAS70 ยืนยันชื่อโครงการและสาขาแล้ว แต่รายละเอียดรูปแบบ Portfolio และเอกสารของสาขานี้ต้องตรวจในระบบรับสมัครวิทยาเขตศรีราชา',
    '{}'::jsonb, '[]'::jsonb, '["ตรวจรายการเอกสารในระบบรับสมัครวิทยาเขตศรีราชา","ผลการเรียนและ Portfolio ตามประกาศรายสาขา"]'::jsonb,
    '["ตรวจตามเกณฑ์รายสาขาในระบบรับสมัครวิทยาเขตศรีราชา"]'::jsonb, '{"detail_source":"https://admissions.src.ku.ac.th/","criteria_detail_status":"หน้ารวม KU ระบุสาขาและจำนวนรับ แต่ระบบรายละเอียดรายสาขาโหลดแบบไดนามิก; ต้องตรวจประกาศล่าสุดก่อนสมัคร"}'::jsonb, 'มีรายการรับสมัครใน KU-TCAS70 แล้ว แต่ยังไม่พบรายละเอียดเกณฑ์รายสาขา จากหน้าที่อ่านได้อัตโนมัติ; ห้ามใช้การ์ดนี้แทนประกาศ ให้เปิดระบบศรีราชาตรวจซ้ำ',
    'https://admission.ku.ac.th/majors/project/5/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-sriracha-computer-engineering-information-science'
where p.code = 'ku-sriracha-morals-1-1'
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
    p.id, m.id, null, '{}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '[]'::jsonb, 'หน้ารวม KU-TCAS70 ยืนยันชื่อโครงการและสาขาแล้ว แต่รายละเอียดรูปแบบ Portfolio และเอกสารของสาขานี้ต้องตรวจในระบบรับสมัครวิทยาเขตศรีราชา',
    '{}'::jsonb, '[]'::jsonb, '["ตรวจรายการเอกสารในระบบรับสมัครวิทยาเขตศรีราชา","ผลการเรียนและ Portfolio ตามประกาศรายสาขา"]'::jsonb,
    '["ตรวจตามเกณฑ์รายสาขาในระบบรับสมัครวิทยาเขตศรีราชา"]'::jsonb, '{"detail_source":"https://admissions.src.ku.ac.th/","criteria_detail_status":"หน้ารวม KU ระบุสาขาและจำนวนรับ แต่ระบบรายละเอียดรายสาขาโหลดแบบไดนามิก; ต้องตรวจประกาศล่าสุดก่อนสมัคร"}'::jsonb, 'มีรายการรับสมัครใน KU-TCAS70 แล้ว แต่ยังไม่พบรายละเอียดเกณฑ์รายสาขา จากหน้าที่อ่านได้อัตโนมัติ; ห้ามใช้การ์ดนี้แทนประกาศ ให้เปิดระบบศรีราชาตรวจซ้ำ',
    'https://admission.ku.ac.th/majors/project/6/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-sriracha-computer-engineering-information-science'
where p.code = 'ku-sriracha-youth-leader-1-1'
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
    p.id, m.id, null, '{}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '[]'::jsonb, 'หน้ารวม KU-TCAS70 ยืนยันชื่อโครงการและสาขาแล้ว แต่รายละเอียดรูปแบบ Portfolio และเอกสารของสาขานี้ต้องตรวจในระบบรับสมัครวิทยาเขตศรีราชา',
    '{}'::jsonb, '[]'::jsonb, '["ตรวจรายการเอกสารในระบบรับสมัครวิทยาเขตศรีราชา","ผลการเรียนและ Portfolio ตามประกาศรายสาขา"]'::jsonb,
    '["ตรวจตามเกณฑ์รายสาขาในระบบรับสมัครวิทยาเขตศรีราชา"]'::jsonb, '{"detail_source":"https://admissions.src.ku.ac.th/","criteria_detail_status":"หน้ารวม KU ระบุสาขาและจำนวนรับ แต่ระบบรายละเอียดรายสาขาโหลดแบบไดนามิก; ต้องตรวจประกาศล่าสุดก่อนสมัคร"}'::jsonb, 'มีรายการรับสมัครใน KU-TCAS70 แล้ว แต่ยังไม่พบรายละเอียดเกณฑ์รายสาขา จากหน้าที่อ่านได้อัตโนมัติ; ห้ามใช้การ์ดนี้แทนประกาศ ให้เปิดระบบศรีราชาตรวจซ้ำ',
    'https://admission.ku.ac.th/majors/project/6/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-sriracha-computer-science-special'
where p.code = 'ku-sriracha-youth-leader-1-1'
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
    p.id, m.id, null, '{}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '[]'::jsonb, 'หน้ารวม KU-TCAS70 ยืนยันชื่อโครงการและสาขาแล้ว แต่รายละเอียดรูปแบบ Portfolio และเอกสารของสาขานี้ต้องตรวจในระบบรับสมัครวิทยาเขตศรีราชา',
    '{}'::jsonb, '[]'::jsonb, '["ตรวจรายการเอกสารในระบบรับสมัครวิทยาเขตศรีราชา","ผลการเรียนและ Portfolio ตามประกาศรายสาขา"]'::jsonb,
    '["ตรวจตามเกณฑ์รายสาขาในระบบรับสมัครวิทยาเขตศรีราชา"]'::jsonb, '{"detail_source":"https://admissions.src.ku.ac.th/","criteria_detail_status":"หน้ารวม KU ระบุสาขาและจำนวนรับ แต่ระบบรายละเอียดรายสาขาโหลดแบบไดนามิก; ต้องตรวจประกาศล่าสุดก่อนสมัคร"}'::jsonb, 'มีรายการรับสมัครใน KU-TCAS70 แล้ว แต่ยังไม่พบรายละเอียดเกณฑ์รายสาขา จากหน้าที่อ่านได้อัตโนมัติ; ห้ามใช้การ์ดนี้แทนประกาศ ให้เปิดระบบศรีราชาตรวจซ้ำ',
    'https://admission.ku.ac.th/majors/project/6/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-sriracha-computer-science'
where p.code = 'ku-sriracha-youth-leader-1-1'
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
    p.id, m.id, null, '{"semesters":4}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["มี 2 เส้นทางคุณสมบัติ: ม.6 หรือ ปวช. เทคนิคคอมพิวเตอร์/คอมพิวเตอร์ธุรกิจ","เกณฑ์ GPAX และหน่วยกิตแยกตามวุฒิในหัวข้อเงื่อนไขเพิ่มเติม"]'::jsonb, 'Portfolio แสดงผลงาน/กิจกรรมที่เกี่ยวข้องกับวิศวกรรมคอมพิวเตอร์และสารสนเทศศาสตร์ พร้อมเหตุผลที่เลือกสาขา',
    '{"portfolio_weight_percent":40,"gpax_weight_percent":20,"interview_weight_percent":40}'::jsonb, '["กิจกรรมหรือโครงงานด้านคอมพิวเตอร์และสารสนเทศ"]'::jsonb, '["ผลการเรียน","Portfolio","หลักฐานกิจกรรม/โครงงาน","เอกสารยืนยันวุฒิ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":40},{"name":"GPAX","weight_percent":20},{"name":"สัมภาษณ์","weight_percent":40}]'::jsonb, '{"qualification_paths":[{"qualification":"ม.6","min_gpax":3.25,"minimum_subject_credits":{"คณิตศาสตร์":10,"วิทยาศาสตร์":20,"ภาษาต่างประเทศ":6}},{"qualification":"ปวช. เทคนิคคอมพิวเตอร์/คอมพิวเตอร์ธุรกิจ","min_gpax":3.0}],"interview_required":true}'::jsonb, 'รับ ม.6 หรือ ปวช. ตามสาขาที่กำหนด; ม.6 GPAX ≥ 3.25 และใช้หน่วยกิตตามประกาศ ส่วน ปวช. GPAX ≥ 3.00; Portfolio 40% GPAX 20% สัมภาษณ์ 40%',
    'https://admission.ku.ac.th/majors/project/107/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-sriracha-computer-engineering-information-science'
where p.code = 'ku-sriracha-expansion-1-1'
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
    p.id, m.id, 3.25, '{"semesters":4}'::jsonb, '{"คณิตศาสตร์":2.75}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษา ม.6 หรือเทียบเท่า","หน่วยกิตคณิตศาสตร์ 10 วิทยาศาสตร์ 20 และภาษาต่างประเทศ 5"]'::jsonb, 'Portfolio ผลงาน/กิจกรรมด้านวิทยาการคอมพิวเตอร์ พร้อมเหตุผลที่เลือกสาขา',
    '{"portfolio_weight_percent":70,"gpax_weight_percent":10,"interview_weight_percent":20}'::jsonb, '["ผลงานหรือกิจกรรมด้านวิทยาการคอมพิวเตอร์"]'::jsonb, '["ผลการเรียน 4 ภาคเรียน","Portfolio","หลักฐานกิจกรรม/ผลงาน"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":70},{"name":"GPAX","weight_percent":10},{"name":"สัมภาษณ์","weight_percent":20}]'::jsonb, '{"minimum_subject_credits":{"คณิตศาสตร์":10,"วิทยาศาสตร์":20,"ภาษาต่างประเทศ":5},"interview_required":true}'::jsonb, 'GPAX ≥ 3.25; คณิตศาสตร์ 10 วิทยาศาสตร์ 20 ภาษาต่างประเทศ 5 หน่วยกิต และเกรดคณิตศาสตร์ ≥ 2.75; Portfolio 70% GPAX 10% สัมภาษณ์ 20%',
    'https://admission.ku.ac.th/majors/project/107/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-sriracha-computer-science'
where p.code = 'ku-sriracha-expansion-1-1'
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
    p.id, m.id, 3.0, '{"semesters":4}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษา ม.6 หรือเทียบเท่า","หน่วยกิตคณิตศาสตร์ 5 วิทยาศาสตร์ 5 และภาษาต่างประเทศ 7"]'::jsonb, 'Portfolio ผลงาน/กิจกรรมด้านวิทยาการคอมพิวเตอร์ พร้อมเหตุผลที่เลือกสาขา',
    '{"portfolio_weight_percent":80,"gpax_weight_percent":10,"interview_weight_percent":10}'::jsonb, '["ผลงานหรือกิจกรรมด้านวิทยาการคอมพิวเตอร์"]'::jsonb, '["ผลการเรียน 4 ภาคเรียน","Portfolio","หลักฐานกิจกรรม/ผลงาน"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":80},{"name":"GPAX","weight_percent":10},{"name":"สัมภาษณ์","weight_percent":10}]'::jsonb, '{"minimum_subject_credits":{"คณิตศาสตร์":5,"วิทยาศาสตร์":5,"ภาษาต่างประเทศ":7},"interview_required":true}'::jsonb, 'GPAX ≥ 3.00; คณิตศาสตร์ 5 วิทยาศาสตร์ 5 ภาษาต่างประเทศ 7 หน่วยกิต; Portfolio 80% GPAX 10% สัมภาษณ์ 10%',
    'https://admission.ku.ac.th/majors/project/107/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-sriracha-computer-science-special'
where p.code = 'ku-sriracha-expansion-1-1'
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
    p.id, m.id, null, '{"semesters":5}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["มี 2 เส้นทางคุณสมบัติ: ม.6 หรือ ปวช. เทคนิคคอมพิวเตอร์/คอมพิวเตอร์ธุรกิจ","เกณฑ์ GPAX และหน่วยกิตแยกตามวุฒิในหัวข้อเงื่อนไขเพิ่มเติม"]'::jsonb, 'Portfolio แสดงผลงาน/กิจกรรมที่เกี่ยวข้องกับวิศวกรรมคอมพิวเตอร์และสารสนเทศศาสตร์ พร้อมเหตุผลที่เลือกสาขา',
    '{"portfolio_weight_percent":40,"gpax_weight_percent":20,"interview_weight_percent":40}'::jsonb, '["กิจกรรมหรือโครงงานด้านคอมพิวเตอร์และสารสนเทศ"]'::jsonb, '["ผลการเรียน","Portfolio","หลักฐานกิจกรรม/โครงงาน","เอกสารยืนยันวุฒิ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":40},{"name":"GPAX","weight_percent":20},{"name":"สัมภาษณ์","weight_percent":40}]'::jsonb, '{"qualification_paths":[{"qualification":"ม.6","min_gpax":3.25,"minimum_subject_credits":{"คณิตศาสตร์":12,"วิทยาศาสตร์":22,"ภาษาต่างประเทศ":6}},{"qualification":"ปวช. เทคนิคคอมพิวเตอร์/คอมพิวเตอร์ธุรกิจ","min_gpax":3.0}],"interview_required":true}'::jsonb, 'รับ ม.6 หรือ ปวช. ตามสาขาที่กำหนด; ม.6 GPAX ≥ 3.25 และใช้หน่วยกิตตามประกาศ ส่วน ปวช. GPAX ≥ 3.00; Portfolio 40% GPAX 20% สัมภาษณ์ 40%',
    'https://admission.ku.ac.th/majors/project/207/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-sriracha-computer-engineering-information-science'
where p.code = 'ku-sriracha-expansion-1-2'
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
    p.id, m.id, 3.25, '{"semesters":5}'::jsonb, '{"คณิตศาสตร์":2.75}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษา ม.6 หรือเทียบเท่า","หน่วยกิตคณิตศาสตร์ 12 และวิทยาศาสตร์ 22"]'::jsonb, 'Portfolio ผลงาน/กิจกรรมด้านวิทยาการคอมพิวเตอร์ พร้อมเหตุผลที่เลือกสาขา',
    '{"portfolio_weight_percent":70,"gpax_weight_percent":10,"interview_weight_percent":20}'::jsonb, '["ผลงานหรือกิจกรรมด้านวิทยาการคอมพิวเตอร์"]'::jsonb, '["ผลการเรียน 5 ภาคเรียน","Portfolio","หลักฐานกิจกรรม/ผลงาน"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":70},{"name":"GPAX","weight_percent":10},{"name":"สัมภาษณ์","weight_percent":20}]'::jsonb, '{"minimum_subject_credits":{"คณิตศาสตร์":12,"วิทยาศาสตร์":22},"interview_required":true}'::jsonb, 'GPAX ≥ 3.25; ใช้ผลการเรียน 5 ภาคเรียน; คณิตศาสตร์ 12 วิทยาศาสตร์ 22 หน่วยกิต และเกรดคณิตศาสตร์ ≥ 2.75; Portfolio 70% GPAX 10% สัมภาษณ์ 20%',
    'https://admission.ku.ac.th/majors/project/207/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-sriracha-computer-science'
where p.code = 'ku-sriracha-expansion-1-2'
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
    p.id, m.id, 3.0, '{"semesters":5}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษา ม.6 หรือเทียบเท่า","หน่วยกิตคณิตศาสตร์ 6 วิทยาศาสตร์ 6 และภาษาต่างประเทศ 9"]'::jsonb, 'Portfolio ผลงาน/กิจกรรมด้านวิทยาการคอมพิวเตอร์ พร้อมเหตุผลที่เลือกสาขา',
    '{"portfolio_weight_percent":80,"gpax_weight_percent":10,"interview_weight_percent":10}'::jsonb, '["ผลงานหรือกิจกรรมด้านวิทยาการคอมพิวเตอร์"]'::jsonb, '["ผลการเรียน 5 ภาคเรียน","Portfolio","หลักฐานกิจกรรม/ผลงาน"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":80},{"name":"GPAX","weight_percent":10},{"name":"สัมภาษณ์","weight_percent":10}]'::jsonb, '{"minimum_subject_credits":{"คณิตศาสตร์":6,"วิทยาศาสตร์":6,"ภาษาต่างประเทศ":9},"interview_required":true}'::jsonb, 'GPAX ≥ 3.00; ใช้ผลการเรียน 5 ภาคเรียน; คณิตศาสตร์ 6 วิทยาศาสตร์ 6 ภาษาต่างประเทศ 9 หน่วยกิต; Portfolio 80% GPAX 10% สัมภาษณ์ 10%',
    'https://admission.ku.ac.th/majors/project/207/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-sriracha-computer-science-special'
where p.code = 'ku-sriracha-expansion-1-2'
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
    p.id, m.id, 2.75, '{"semesters":4}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษา ม.6 หรือเทียบเท่าในปีการศึกษา 2569","มีผลงานเขียนโปรแกรม/โครงงานที่เข้าประกวดหรือได้รับรางวัล และผู้สมัครมีบทบาทหลักอย่างน้อย 30%","หรือมีประกาศนียบัตรการอบรมด้านการเขียนโปรแกรมอย่างน้อย 3 หัวข้อ","กรณีไม่มีผลงาน ใช้ GPAX และเกรดเฉลี่ยภาษาอังกฤษ/คณิตศาสตร์ตามเส้นทางที่ประกาศกำหนด"]'::jsonb, 'ส่งวิดีโอผลงานความยาวไม่เกิน 2 นาที นำเสนอผลงานเด่นไม่เกิน 3 รายการ อธิบายการออกแบบ การพัฒนา source code และรางวัล; หากใช้ AI ต้องระบุส่วนที่ใช้',
    '{"video_max_minutes":2,"max_featured_awarded_projects":3,"minimum_primary_contribution_percent":30,"ai_usage_disclosure_required":true}'::jsonb, '["ผลงานเขียนโปรแกรมหรือโครงงานที่เข้าประกวด","ผลงานเขียนโปรแกรมหรือโครงงานที่ได้รับรางวัล","ประกาศนียบัตรการอบรมด้านการเขียนโปรแกรมอย่างน้อย 3 หัวข้อ"]'::jsonb, '["ผลการเรียน 4 ภาคเรียน","หลักฐานผลงาน/รางวัล หรือประกาศนียบัตรการอบรม","วิดีโอผลงาน"]'::jsonb,
    '["กรณีมีผลงาน: GPAX 10% + ผลงาน 70% + สัมภาษณ์ 20%","กรณีไม่มีผลงาน: GPAX 40% + ภาษาอังกฤษ 30% + คณิตศาสตร์ 30%"]'::jsonb, '{"interview_required":true,"no_work_path":{"gpax_min":3.5,"english_average_min":3.25,"mathematics_average_min":3.0}}'::jsonb, 'GPAX 4 ภาคเรียน ≥ 2.75; มีผลงานเขียนโปรแกรม/โครงงานที่ทำหลักอย่างน้อย 30% หรือใบอบรมเขียนโปรแกรมอย่างน้อย 3 หัวข้อ; ถ้าไม่มีผลงานต้องมี GPAX ≥ 3.50 และใช้เกรดอังกฤษ/คณิตศาสตร์ตามประกาศ',
    'https://admission.ku.ac.th/majors/project/1/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-computer-science-special'
where p.code = 'ku-bangkhen-white-elephant-1-1'
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
    p.id, m.id, null, '{"semesters":4}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษา ม.6 หรือเทียบเท่า","เป็นนักกีฬาระดับชาติหรือเยาวชนทีมชาติ ตามประเภทและหลักฐานที่ประกาศกำหนด"]'::jsonb, null,
    '{}'::jsonb, '["ผลงาน/หนังสือรับรองการเป็นนักกีฬาระดับชาติหรือเยาวชนทีมชาติ"]'::jsonb, '["ผลการเรียน","หลักฐานสถานะนักกีฬา","Portfolio หรือหลักฐานผลงานตามประกาศ"]'::jsonb,
    '["สัมภาษณ์ 100%"]'::jsonb, '{"minimum_subject_credits":{"คณิตศาสตร์":12,"ภาษาต่างประเทศ":9},"interview_required":true}'::jsonb, 'รับนักกีฬาระดับชาติหรือเยาวชนทีมชาติ; ต้องมีคณิตศาสตร์อย่างน้อย 12 และภาษาต่างประเทศ 9 หน่วยกิต; คัดเลือกด้วยสัมภาษณ์',
    'https://admission.ku.ac.th/majors/project/4/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-computer-science'
where p.code = 'ku-bangkhen-sports-1-1'
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
    p.id, m.id, null, '{"semesters":4}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษา ม.6 หรือเทียบเท่า","เป็นนักกีฬาระดับชาติหรือเยาวชนทีมชาติ ตามประเภทและหลักฐานที่ประกาศกำหนด"]'::jsonb, null,
    '{}'::jsonb, '["ผลงาน/หนังสือรับรองการเป็นนักกีฬาระดับชาติหรือเยาวชนทีมชาติ"]'::jsonb, '["ผลการเรียน","หลักฐานสถานะนักกีฬา","Portfolio หรือหลักฐานผลงานตามประกาศ"]'::jsonb,
    '["สัมภาษณ์ 100%"]'::jsonb, '{"minimum_subject_credits":{"วิทยาศาสตร์":22,"คณิตศาสตร์":12,"ภาษาต่างประเทศ":9},"interview_required":true}'::jsonb, 'รับนักกีฬาระดับชาติหรือเยาวชนทีมชาติ; ต้องมีวิทยาศาสตร์ 22 คณิตศาสตร์ 12 และภาษาต่างประเทศ 9 หน่วยกิต; คัดเลือกด้วยสัมภาษณ์',
    'https://admission.ku.ac.th/majors/project/4/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-computer-engineering'
where p.code = 'ku-bangkhen-sports-1-1'
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
    p.id, m.id, 3.0, '{"semesters":4}'::jsonb, '{"วิทยาศาสตร์":3.25,"คณิตศาสตร์":3.25}'::jsonb, '{}'::jsonb,
    '{"TGAT1":25,"TGAT2":25,"TGAT3":25,"TPAT3":35}'::jsonb, '["นักเรียนโครงการ พสวท. หรือผู้มีความสามารถพิเศษทางวิทยาศาสตร์ตามเงื่อนไขของโครงการ","มีผลการเรียนและคะแนน TGAT/TPAT3 ตามเกณฑ์หน้าโครงการ"]'::jsonb, 'รวบรวมหลักฐานการเข้าค่าย/การแข่งขัน/โครงงานด้านวิทยาศาสตร์หรือคณิตศาสตร์ และจัดทำ Portfolio ไม่เกิน 10 หน้า',
    '{"max_pages":10}'::jsonb, '["การเข้าค่ายหรือผ่านการคัดเลือกโครงการ พสวท.","โครงงาน/การแข่งขันด้านวิทยาศาสตร์หรือคณิตศาสตร์"]'::jsonb, '["ผลการเรียน","Portfolio ไม่เกิน 10 หน้า","หลักฐานค่าย/ผลงาน","ผล TGAT และ TPAT3"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":10},{"name":"ผลการเรียนวิทยาศาสตร์/คณิตศาสตร์","weight_percent":10},{"name":"TGAT","weight_percent":10},{"name":"TPAT3","weight_percent":30},{"name":"สัมภาษณ์","weight_percent":40}]'::jsonb, '{"minimum_subject_credits":{"วิทยาศาสตร์":22,"คณิตศาสตร์":12},"minimum_tgat_each":25,"tpat3_min":35,"interview_required":true}'::jsonb, 'GPAX ≥ 3.00; เกรดเฉลี่ยวิทยาศาสตร์และคณิตศาสตร์ ≥ 3.25; ใช้ TGAT1/2/3 อย่างละ ≥ 25 และ TPAT3 ≥ 35; Portfolio 10% วิชา/เกรด 10% TGAT 10% TPAT3 30% สัมภาษณ์ 40%',
    'https://admission.ku.ac.th/majors/project/8/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-computer-science'
where p.code = 'ku-bangkhen-psw-1-1'
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
    p.id, m.id, 2.75, '{"semesters":4}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาอยู่ชั้นมัธยมศึกษาปีที่ 6 หรือเทียบเท่าในปีการศึกษา 2569","มีประวัติและผลงานตามประเภทศิลปวัฒนธรรมและซอฟต์พาวเวอร์ที่มหาวิทยาลัยกำหนด","หน่วยกิตกลุ่มสาระการเรียนรู้คณิตศาสตร์ไม่ต่ำกว่า 12 หน่วยกิต"]'::jsonb, 'Portfolio และหลักฐานผลงานด้านศิลปวัฒนธรรมหรือซอฟต์พาวเวอร์ ตามประเภทที่มหาวิทยาลัยกำหนด',
    '{}'::jsonb, '["ผลงานศิลปวัฒนธรรม","ผลงานซอฟต์พาวเวอร์","รางวัลหรือหลักฐานความสามารถตามประเภทที่มหาวิทยาลัยกำหนด"]'::jsonb, '["ผลการเรียน 4 ภาคเรียน","Portfolio และหลักฐานผลงาน","ผลคะแนนภาษาอังกฤษ (ถ้ามี/ตามประกาศ)"]'::jsonb,
    '["ผลคะแนนสอบภาษาอังกฤษ","การทดสอบความสามารถด้านศิลปวัฒนธรรมและซอฟต์พาวเวอร์","สอบสัมภาษณ์เป็นภาษาอังกฤษ"]'::jsonb, '{"minimum_subject_credits":{"คณิตศาสตร์":12},"interview_required":true,"interview_language":"อังกฤษ","ability_test_weight_percent":100}'::jsonb, 'GPAX 4 ภาคเรียน ≥ 2.75; คณิตศาสตร์ 12 หน่วยกิต; ต้องมีผลงานศิลปวัฒนธรรมหรือซอฟต์พาวเวอร์ตามประเภทที่กำหนด; มีผลภาษาอังกฤษ การทดสอบความสามารถ และสัมภาษณ์ภาษาอังกฤษ',
    'https://admission.ku.ac.th/majors/project/18/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-computer-engineering'
where p.code = 'ku-bangkhen-culture-soft-power-1-1'
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
    p.id, m.id, null, '{}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '[]'::jsonb, 'หน้ารวม KU-TCAS70 ระบุว่ามีสาขานี้ในโครงการแล้ว แต่ไม่ได้แสดงรายละเอียด Portfolio และคุณสมบัติรายสาขาครบในหน้าที่ตรวจได้',
    '{}'::jsonb, '[]'::jsonb, '["ตรวจประกาศ/เอกสารย่อยของโครงการก่อนสมัคร"]'::jsonb,
    '["ตรวจตามประกาศรายสาขา"]'::jsonb, '{"detail_status":"หน้ารายโครงการระบุวิทยาการคอมพิวเตอร์ภาคปกติเป็นจำนวนรับรวมกับเงื่อนไขอื่น และไม่แสดงเกณฑ์เฉพาะสาขาคอมพิวเตอร์ครบ"}'::jsonb, 'พบชื่อโครงการและสาขาจากหน้ารวม KU-TCAS70 แล้ว แต่เกณฑ์รายสาขายังไม่ครบ จึงไม่สรุป GPAX หรือสัดส่วนคะแนนแทนประกาศ',
    'https://admission.ku.ac.th/majors/project/32/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-computer-science'
where p.code = 'ku-bangkhen-science-network-1-1'
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
    p.id, m.id, null, '{}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '[]'::jsonb, 'หน้ารวม KU-TCAS70 ระบุว่ามีสาขานี้ในโครงการแล้ว แต่ไม่ได้แสดงรายละเอียด Portfolio และคุณสมบัติรายสาขาครบในหน้าที่ตรวจได้',
    '{}'::jsonb, '[]'::jsonb, '["ตรวจประกาศ/เอกสารย่อยของโครงการก่อนสมัคร"]'::jsonb,
    '["ตรวจตามประกาศรายสาขา"]'::jsonb, '{"detail_status":"หน้ารายโครงการระบุวิทยาการคอมพิวเตอร์ภาคพิเศษเป็นจำนวนรับรวมกับเงื่อนไขอื่น และไม่แสดงเกณฑ์เฉพาะสาขาคอมพิวเตอร์ครบ"}'::jsonb, 'พบชื่อโครงการและสาขาจากหน้ารวม KU-TCAS70 แล้ว แต่เกณฑ์รายสาขายังไม่ครบ จึงไม่สรุป GPAX หรือสัดส่วนคะแนนแทนประกาศ',
    'https://admission.ku.ac.th/majors/project/32/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-bangkhen-computer-science-special'
where p.code = 'ku-bangkhen-science-network-1-1'
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
select p.id, 'รับสมัคร', '2026-09-18', '2026-10-14', '18 ก.ย.–14 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-white-elephant-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-11-03', '2026-11-03', '3 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-white-elephant-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-09', '2026-11-09', '9 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-white-elephant-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลสอบสัมภาษณ์', '2026-11-16', '2026-11-16', '16 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-white-elephant-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-09-18', '2026-10-14', '18 ก.ย.–14 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-advanced-placement-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-11-03', '2026-11-03', '3 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-advanced-placement-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-09', '2026-11-09', '9 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-advanced-placement-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลสอบสัมภาษณ์', '2026-11-16', '2026-11-16', '16 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-advanced-placement-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-09-18', '2026-10-14', '18 ก.ย.–14 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-international-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-11-03', '2026-11-03', '3 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-international-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-09', '2026-11-09', '9 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-international-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลสอบสัมภาษณ์', '2026-11-16', '2026-11-16', '16 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-international-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2027-01-04', '2027-02-04', '4 ม.ค.–4 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-international-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2027-03-02', '2027-03-02', '2 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-international-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-03-04', '2027-03-04', '4 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-international-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลสอบสัมภาษณ์', '2027-03-05', '2027-03-05', '5 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-international-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-09-18', '2026-10-14', '18 ก.ย.–14 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-sports-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-11-03', '2026-11-03', '3 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-sports-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-09', '2026-11-09', '9 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-sports-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลสอบสัมภาษณ์', '2026-11-16', '2026-11-16', '16 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-sports-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-09-18', '2026-10-14', '18 ก.ย.–14 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-psw-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-11-03', '2026-11-03', '3 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-psw-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-09', '2026-11-09', '9 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-psw-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลสอบสัมภาษณ์', '2026-11-16', '2026-11-16', '16 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-psw-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-09-18', '2026-10-14', '18 ก.ย.–14 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-culture-soft-power-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-11-03', '2026-11-03', '3 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-culture-soft-power-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-09', '2026-11-09', '9 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-culture-soft-power-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลสอบสัมภาษณ์', '2026-11-16', '2026-11-16', '16 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-culture-soft-power-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-09-18', '2026-10-14', '18 ก.ย.–14 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-science-network-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-11-03', '2026-11-03', '3 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-science-network-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-09', '2026-11-09', '9 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-science-network-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลสอบสัมภาษณ์', '2026-11-16', '2026-11-16', '16 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-science-network-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-09-18', '2026-10-14', '18 ก.ย.–14 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-olympic-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-11-03', '2026-11-03', '3 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-olympic-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-09', '2026-11-09', '9 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-olympic-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลสอบสัมภาษณ์', '2026-11-16', '2026-11-16', '16 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-olympic-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2027-01-04', '2027-02-04', '4 ม.ค.–4 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-olympic-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2027-03-02', '2027-03-02', '2 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-olympic-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-03-04', '2027-03-04', '4 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-olympic-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลสอบสัมภาษณ์', '2027-03-05', '2027-03-05', '5 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-bangkhen-olympic-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-10-01', '2026-11-05', '1 ต.ค.–5 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-kps-advanced-placement-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-11-16', '2026-11-16', '16 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-kps-advanced-placement-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-20', '2026-11-20', '20 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-kps-advanced-placement-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลสอบสัมภาษณ์', '2026-11-24', '2026-11-24', '24 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-kps-advanced-placement-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-10-01', '2026-11-05', '1 ต.ค.–5 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-kps-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-11-16', '2026-11-16', '16 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-kps-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-20', '2026-11-20', '20 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-kps-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลสอบสัมภาษณ์', '2026-11-24', '2026-11-24', '24 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-kps-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2027-02-10', '1 ธ.ค. 2569–10 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-kps-portfolio-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2027-02-22', '2027-02-22', '22 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-kps-portfolio-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-25', '2027-02-26', '25–26 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-kps-portfolio-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลสอบสัมภาษณ์', '2027-03-02', '2027-03-02', '2 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-kps-portfolio-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-08-25', '2026-11-15', '25 ส.ค.–15 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-sriracha-morals-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-12-04', '2026-12-04', '4 ธ.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-sriracha-morals-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-12-13', '2026-12-13', '13 ธ.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-sriracha-morals-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลสอบสัมภาษณ์', '2026-12-18', '2026-12-18', '18 ธ.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-sriracha-morals-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-08-25', '2026-11-15', '25 ส.ค.–15 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-sriracha-youth-leader-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-12-04', '2026-12-04', '4 ธ.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-sriracha-youth-leader-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-12-13', '2026-12-13', '13 ธ.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-sriracha-youth-leader-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลสอบสัมภาษณ์', '2026-12-18', '2026-12-18', '18 ธ.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-sriracha-youth-leader-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-08-25', '2026-11-15', '25 ส.ค.–15 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-sriracha-expansion-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-12-04', '2026-12-04', '4 ธ.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-sriracha-expansion-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-12-13', '2026-12-13', '13 ธ.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-sriracha-expansion-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลสอบสัมภาษณ์', '2026-12-18', '2026-12-18', '18 ธ.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-sriracha-expansion-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

commit;
