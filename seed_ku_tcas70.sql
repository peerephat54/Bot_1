-- Generated from datasets/tcas70_admissions.json
-- Run supabase_schema.sql before this file.
begin;

insert into public.universities (name, short_name, logo_url)
values ('มหาวิทยาลัยเกษตรศาสตร์', 'KU', null)
on conflict (name) do update set
    short_name = excluded.short_name,
    logo_url = excluded.logo_url;

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
    null, '2026-08-29T12:00:00+07:00', 'เกณฑ์และจำนวนรับมาจากหน้ารวมเกณฑ์ KU-TCAS70 โดยตรง; ค่าสมัครและค่าเทอมเว้นว่างเพราะหน้าที่ตรวจไม่ได้ระบุตัวเลข', now()
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
    null, '2026-08-29T12:00:00+07:00', 'เกณฑ์และจำนวนรับมาจากหน้ารวมเกณฑ์ KU-TCAS70 โดยตรง; ค่าสมัครและค่าเทอมเว้นว่างเพราะหน้าที่ตรวจไม่ได้ระบุตัวเลข', now()
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
    null, '2026-08-29T12:00:00+07:00', 'เกณฑ์และจำนวนรับมาจากหน้ารวมเกณฑ์ KU-TCAS70 โดยตรง; ค่าสมัครและค่าเทอมเว้นว่างเพราะหน้าที่ตรวจไม่ได้ระบุตัวเลข', now()
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
    null, '2026-08-29T12:00:00+07:00', 'เกณฑ์และจำนวนรับมาจากหน้ารวมเกณฑ์ KU-TCAS70 โดยตรง; ค่าสมัครและค่าเทอมเว้นว่างเพราะหน้าที่ตรวจไม่ได้ระบุตัวเลข', now()
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

commit;
