-- Generated from datasets/tcas70_admissions.json
-- Run supabase_schema.sql before this file.
begin;

insert into public.universities (name, short_name, logo_url)
values ('มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ', 'KMUTNB', null)
on conflict (name) do update set
    short_name = excluded.short_name,
    logo_url = excluded.logo_url;

insert into public.faculties_and_majors (
    university_id, campus_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, campus.id, 'kmutnb-engineering-computer-engineering', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', 134, null,
    4, 'https://www.kmutnb.ac.th/faculty-and-agencies/bangkok/faculty-of-engineering/department-of-electrical-and-computer-engineering.aspx?lang=th', '[{"title":"หน้ารับสมัครรอบ 1 ปีการศึกษา 2570","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"ยังไม่พบโครงการ TCAS70 ที่ระบุหลักสูตรนี้ในหน้าทางการ","source_url":"https://admission.kmutnb.ac.th/apply/round/1"}]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'bangkok'
where u.short_name = 'KMUTNB'
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
    u.id, campus.id, 'kmutnb-science-computer-science', 'คณะวิทยาศาสตร์ประยุกต์', 'วิทยาการคอมพิวเตอร์', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', null, null,
    null, 'https://www.kmutnb.ac.th/faculty-and-agencies/bangkok/faculty-of-applied-science/department-of-computer-and-information-science.aspx', '[{"title":"หน้ารับสมัครรอบ 1 ปีการศึกษา 2570","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"ยังไม่พบโครงการ TCAS70 ที่ระบุหลักสูตรนี้ในหน้าทางการ","source_url":"https://admission.kmutnb.ac.th/apply/round/1"}]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'bangkok'
where u.short_name = 'KMUTNB'
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
    u.id, campus.id, 'kmutnb-science-computer-science-bilingual', 'คณะวิทยาศาสตร์ประยุกต์', 'วิทยาการคอมพิวเตอร์ (หลักสูตรสองภาษา)', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทยและอังกฤษ', null, null,
    4, 'https://www.kmutnb.ac.th/faculty-and-agencies/bangkok/faculty-of-applied-science/department-of-computer-and-information-science.aspx', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'bangkok'
where u.short_name = 'KMUTNB'
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
    u.id, campus.id, 'kmutnb-itd-informatics-digital-economy', 'คณะเทคโนโลยีสารสนเทศและนวัตกรรมดิจิทัล', 'วิทยาการสารสนเทศเพื่อเศรษฐกิจดิจิทัล (หลักสูตรนานาชาติ)', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'อังกฤษ', 129, null,
    4, 'https://www.itd.kmutnb.ac.th/bachelor.php', '[{"title":"หน้ารับสมัครรอบ 1 ปีการศึกษา 2570","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"ยังไม่พบโครงการ TCAS70 ที่ระบุหลักสูตรนี้ในหน้าทางการ","source_url":"https://admission.kmutnb.ac.th/apply/round/1"}]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'bangkok'
where u.short_name = 'KMUTNB'
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
    u.id, campus.id, 'kmutnb-fitm-information-technology', 'คณะเทคโนโลยีและการจัดการอุตสาหกรรม (วิทยาเขตปราจีนบุรี)', 'เทคโนโลยีสารสนเทศ', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', null, 2567,
    4, 'https://www.fitm.kmutnb.ac.th/IT.html', '[{"title":"รอบ Portfolio คณะเทคโนโลยีและการจัดการอุตสาหกรรม","reference_academic_year":2569,"round_label":"Portfolio รอบ 2","slots_available":40,"status":"unconfirmed","tuition_fee_per_semester":19000,"selection_summary":"พิจารณา Portfolio และสอบสัมภาษณ์ออนไลน์ โดยไม่มีการสอบข้อเขียน","qualification_summary":"หลักสูตร 4 ปี รับผู้จบหรือกำลังเรียน ม.6 และ ปวช. ในสาขาที่เกี่ยวข้อง ตามคุณวุฒิที่มหาวิทยาลัยกำหนด","portfolio_summary":"ส่งแฟ้มสะสมผลงานเป็น PDF ตามรูปแบบในประกาศ พร้อมหลักฐานการศึกษาและบัตรประจำตัว","application_period":"24 พ.ย. 2568 - 10 ม.ค. 2569 (กำหนดการของ TCAS69)","note":"เป็นประกาศ TCAS69 ของวิทยาเขตปราจีนบุรี ใช้ดูแนวทางและงบประมาณเท่านั้น ไม่ใช่เกณฑ์หรือจำนวนรับ TCAS70","source_url":"https://www.admission.kmutnb.ac.th/sites/default/files/2025-10/FITM-Portfolio2.pdf"}]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'prachinburi'
where u.short_name = 'KMUTNB'
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
    u.id, campus.id, 'kmutnb-fitm-information-network-engineering', 'คณะเทคโนโลยีและการจัดการอุตสาหกรรม (วิทยาเขตปราจีนบุรี)', 'วิศวกรรมสารสนเทศและเครือข่าย (เสริมทักษะภาษาอังกฤษ)', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย (เสริมทักษะภาษาอังกฤษ)', null, 2567,
    4, 'https://www.fitm.kmutnb.ac.th/IT.html', '[{"title":"รอบ Portfolio คณะเทคโนโลยีและการจัดการอุตสาหกรรม","reference_academic_year":2569,"round_label":"Portfolio รอบ 2","slots_available":40,"status":"unconfirmed","tuition_fee_per_semester":25000,"selection_summary":"พิจารณา Portfolio และสอบสัมภาษณ์ออนไลน์ โดยไม่มีการสอบข้อเขียน","qualification_summary":"หลักสูตร 4 ปี รับผู้จบหรือกำลังเรียน ม.6 และ ปวช. ในสาขาที่เกี่ยวข้อง ตามคุณวุฒิที่มหาวิทยาลัยกำหนด","portfolio_summary":"ส่งแฟ้มสะสมผลงานเป็น PDF ตามรูปแบบในประกาศ พร้อมหลักฐานการศึกษาและบัตรประจำตัว","application_period":"24 พ.ย. 2568 - 10 ม.ค. 2569 (กำหนดการของ TCAS69)","note":"เป็นประกาศ TCAS69 ของวิทยาเขตปราจีนบุรี ใช้ดูแนวทางและงบประมาณเท่านั้น ไม่ใช่เกณฑ์หรือจำนวนรับ TCAS70","source_url":"https://www.admission.kmutnb.ac.th/sites/default/files/2025-10/FITM-Portfolio2.pdf"}]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'prachinburi'
where u.short_name = 'KMUTNB'
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
    u.id, 'kmutnb-appsci-portfolio-m6-1', 'kmutnb-appsci-portfolio-m6', 'โควตา Portfolio (ม.6) คณะวิทยาศาสตร์ประยุกต์', 2570, 1,
    '1 Portfolio', '1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.kmutnb.ac.th/sites/default/files/2026-08/Port-M6.pdf', 'ประกาศโควตา Portfolio (ม.6) คณะวิทยาศาสตร์ประยุกต์ ปีการศึกษา 2570',
    '2026-08-27', '2026-08-29T12:00:00+07:00', 'นำเข้าเฉพาะวิทยาการคอมพิวเตอร์หลักสูตรสองภาษา รหัส 04111; ประกาศระบุค่าเทอม 45,000 บาทต่อภาค', now()
from public.universities u
where u.short_name = 'KMUTNB'
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
    u.id, 'kmutnb-fitm-portfolio-1', 'kmutnb-fitm-portfolio', 'โครงการ Portfolio คณะเทคโนโลยีและการจัดการอุตสาหกรรม', 2570, 1,
    '1 Portfolio', '1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.kmutnb.ac.th/sites/default/files/2026-08/Portfolio-R1.pdf', 'ประกาศ Portfolio คณะเทคโนโลยีและการจัดการอุตสาหกรรม ปีการศึกษา 2570',
    null, '2026-08-29T12:00:00+07:00', 'ไม่มีสอบข้อเขียน ใช้ Portfolio และสัมภาษณ์ออนไลน์; ค่าเทอมแตกต่างรายหลักสูตรจึงแสดงในหมายเหตุรายสาขา', now()
from public.universities u
where u.short_name = 'KMUTNB'
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
select p.id, m.id, 10, 'รหัส 04111 รับ 10 คน; GPAX ≥ 3.50; ค่าเทอม 45,000 บาท/ภาค'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutnb-science-computer-science-bilingual'
where p.code = 'kmutnb-appsci-portfolio-m6-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 15, 'รหัส 06101 รับ 15 คน; ภาคแรก 21,700 บาท ภาคต่อไป 19,000 บาท'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutnb-fitm-information-technology'
where p.code = 'kmutnb-fitm-portfolio-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, 'รหัส 06105 รับ 5 คน; ภาคแรก 27,700 บาท ภาคต่อไป 25,000 บาท'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutnb-fitm-information-network-engineering'
where p.code = 'kmutnb-fitm-portfolio-1'
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
    p.id, m.id, 3.5, '{}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษา ม.6 และจะสำเร็จการศึกษาในปีการศึกษา 2569","ต้องอยู่ในแผนการเรียนที่ประกาศอนุญาตสำหรับรหัส 04111"]'::jsonb, 'ยื่นแฟ้มสะสมผลงานตามระบบรับสมัครของมหาวิทยาลัย',
    '{}'::jsonb, '[]'::jsonb, '["ผลการเรียน","Portfolio","เอกสารตามระบบรับสมัคร"]'::jsonb,
    '["ผลการเรียน","Portfolio","สัมภาษณ์"]'::jsonb, '{"program_code_in_announcement":"04111","interview_required":true,"tuition_first_and_later_terms":45000,"selection_limit_within_project":1}'::jsonb, 'กำลังศึกษา ม.6 ตามแผนการเรียนที่ประกาศอนุญาต; GPAX ≥ 3.50; คัดเลือกจากผลการเรียน Portfolio และสัมภาษณ์; ค่าเทอม 45,000 บาท/ภาค',
    'https://admission.kmutnb.ac.th/sites/default/files/2026-08/Port-M6.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutnb-science-computer-science-bilingual'
where p.code = 'kmutnb-appsci-portfolio-m6-1'
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
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 หรือ ปวช. ในสาขาที่เกี่ยวข้องตามคุณวุฒิที่มหาวิทยาลัยกำหนด"]'::jsonb, 'ส่ง Portfolio เป็น PDF ตามระบบรับสมัคร; ประกาศที่ตรวจไม่กำหนดจำนวนหน้าหรือรูปแบบเฉพาะ',
    '{}'::jsonb, '[]'::jsonb, '["Portfolio PDF","ระเบียนผลการเรียน","บัตรประจำตัว","เอกสารตามระบบรับสมัคร"]'::jsonb,
    '["Portfolio","สัมภาษณ์ออนไลน์"]'::jsonb, '{"program_code_in_announcement":"06101","written_exam_required":false,"interview_mode":"ออนไลน์","tuition_first_term":21700,"tuition_later_terms":19000}'::jsonb, 'รับ ม.6 หรือ ปวช. ที่คุณวุฒิตรงตามประกาศ; ไม่มีเกณฑ์ GPAX ขั้นต่ำในประกาศที่ตรวจ; พิจารณา Portfolio และสัมภาษณ์ออนไลน์; ภาคแรก 21,700 บาท ภาคต่อไป 19,000 บาท',
    'https://admission.kmutnb.ac.th/sites/default/files/2026-08/Portfolio-R1.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutnb-fitm-information-technology'
where p.code = 'kmutnb-fitm-portfolio-1'
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
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 หรือ ปวช. ในสาขาที่เกี่ยวข้องตามคุณวุฒิที่มหาวิทยาลัยกำหนด"]'::jsonb, 'ส่ง Portfolio เป็น PDF ตามระบบรับสมัคร; ประกาศที่ตรวจไม่กำหนดจำนวนหน้าหรือรูปแบบเฉพาะ',
    '{}'::jsonb, '[]'::jsonb, '["Portfolio PDF","ระเบียนผลการเรียน","บัตรประจำตัว","เอกสารตามระบบรับสมัคร"]'::jsonb,
    '["Portfolio","สัมภาษณ์ออนไลน์"]'::jsonb, '{"program_code_in_announcement":"06105","written_exam_required":false,"interview_mode":"ออนไลน์","tuition_first_term":27700,"tuition_later_terms":25000}'::jsonb, 'รับ ม.6 หรือ ปวช. ที่คุณวุฒิตรงตามประกาศ; ไม่มีเกณฑ์ GPAX ขั้นต่ำในประกาศที่ตรวจ; พิจารณา Portfolio และสัมภาษณ์ออนไลน์; ภาคแรก 27,700 บาท ภาคต่อไป 25,000 บาท',
    'https://admission.kmutnb.ac.th/sites/default/files/2026-08/Portfolio-R1.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutnb-fitm-information-network-engineering'
where p.code = 'kmutnb-fitm-portfolio-1'
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
select p.id, 'รับสมัคร', '2026-09-01', '2026-10-31', '1 ก.ย.–31 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutnb-appsci-portfolio-m6-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-11-19', '2026-11-19', '19 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutnb-appsci-portfolio-m6-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-28', '2026-11-28', '28 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutnb-appsci-portfolio-m6-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลสอบคัดเลือก', '2026-12-08', '2026-12-08', '8 ธ.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutnb-appsci-portfolio-m6-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ Clearing House', '2027-03-10', '2027-03-11', '10–11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutnb-appsci-portfolio-m6-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-09-01', '2026-11-10', '1 ก.ย.–10 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutnb-fitm-portfolio-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-11-19', '2026-11-19', '19 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutnb-fitm-portfolio-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ส่งเอกสารให้ครบ', '2026-11-19', '2026-11-25', 'ภายใน 25 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutnb-fitm-portfolio-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์ออนไลน์', '2026-11-28', '2026-11-28', '28 พ.ย. 2569 เวลา 09.00–12.00 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutnb-fitm-portfolio-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลสอบคัดเลือก', '2026-12-08', '2026-12-08', '8 ธ.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutnb-fitm-portfolio-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ Clearing House', '2027-03-10', '2027-03-11', '10–11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutnb-fitm-portfolio-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินยืนยันเข้าศึกษา (หลักสูตร 4 ปี)', '2027-03-16', '2027-03-22', '16–22 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutnb-fitm-portfolio-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

commit;
