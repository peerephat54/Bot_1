-- Generated from datasets/tcas70_admissions.json
-- Run supabase_schema.sql before this file.
begin;

insert into public.faculties_and_majors (
    university_id, campus_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, campus.id, 'tu-science-computer-science-special', 'คณะวิทยาศาสตร์และเทคโนโลยี', 'วิทยาการคอมพิวเตอร์ (โครงการพิเศษ)', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://www.tuadmissions.in.th/img/2026090101500188.pdf#page=61', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'rangsit'
where u.short_name = 'TU'
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
    u.id, campus.id, 'tu-science-network-cybersecurity', 'คณะวิทยาศาสตร์และเทคโนโลยี', 'คอมพิวเตอร์เครือข่ายและความปลอดภัยทางไซเบอร์ (โครงการพิเศษ)', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://www.tuadmissions.in.th/img/2026090101500188.pdf#page=63', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'rangsit'
where u.short_name = 'TU'
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
    u.id, 'tu-direct-cs-special-2570', 'tu-direct-cs-special', 'รับตรง Portfolio — วิทยาการคอมพิวเตอร์ (โครงการพิเศษ)', 2570, 1,
    'Portfolio', '1', 'portfolio', 'official',
    true, null, 200,
    null, 'https://www.tuadmissions.in.th/img/2026090101500188.pdf', 'ประกาศรับตรง รอบ 1 Portfolio ปีการศึกษา 2570 (1 ก.ย. 2569)',
    '2026-09-01', '2026-09-01T20:53+07:00', 'ประกาศทางการลงวันที่ 1 ก.ย. 2569; เปิดระบบรับสมัคร 14 ก.ย. 2569 ถึง 16 ธ.ค. 2569 และยื่น/แก้ไข Portfolio ได้ถึง 22 ธ.ค. 2569', now()
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
    u.id, 'tu-direct-network-cybersecurity-2570', 'tu-direct-network-cybersecurity', 'รับตรง Portfolio — คอมพิวเตอร์เครือข่ายและความปลอดภัยทางไซเบอร์ (โครงการพิเศษ)', 2570, 1,
    'Portfolio', '1', 'portfolio', 'official',
    true, null, 200,
    null, 'https://www.tuadmissions.in.th/img/2026090101500188.pdf', 'ประกาศรับตรง รอบ 1 Portfolio ปีการศึกษา 2570 (1 ก.ย. 2569)',
    '2026-09-01', '2026-09-01T20:53+07:00', 'ประกาศทางการลงวันที่ 1 ก.ย. 2569; เปิดระบบรับสมัคร 14 ก.ย. 2569 ถึง 16 ธ.ค. 2569 และยื่น/แก้ไข Portfolio ได้ถึง 22 ธ.ค. 2569', now()
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

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 20, 'ศูนย์รังสิต รหัส 10050209220201B; หลักสูตรอยู่ระหว่างปรับปรุง'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'tu-science-computer-science-special'
where p.code = 'tu-direct-cs-special-2570'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 20, 'ศูนย์รังสิต รหัส 10050209220202B; โครงการพิเศษ'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'tu-science-network-cybersecurity'
where p.code = 'tu-direct-network-cybersecurity-2570'
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
    p.id, m.id, 3, '{}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{"TGAT1":{"ค่าน้ำหนัก":"15%"},"TGAT2":{"ค่าน้ำหนัก":"15%"},"TGAT3":{"ค่าน้ำหนัก":"5%"},"TPAT3":{"ค่าน้ำหนัก":"15%"}}'::jsonb, '["กำลังเรียนหรือจบ ม.6; ตารางไม่รับ ปวช., กศน. และวุฒิเทียบต่างประเทศ/นานาชาติ","หน่วยกิตข้อ 2.1: วิทยาศาสตร์ 22 และคณิตศาสตร์ 12; ข้อ 2.2: คณิตศาสตร์ 12 และภาษาต่างประเทศ 9 — ไม่ระบุว่าเลือกข้อใดข้อหนึ่ง จึงต้องสอบถามคณะก่อนสรุปสิทธิ์"]'::jsonb, '[''ประวัติส่วนตัว/การศึกษา และ Statement of Purpose'', ''หลักฐานผลงาน กิจกรรม หรือรางวัลที่เกี่ยวข้อง'', ''ตอบวิชาในวิทยาการคอมพิวเตอร์ที่สนใจพร้อมเหตุผล ไม่เกิน 200 ตัวอักษร'']',
    '{"max_pages":10,"max_file_mb":20,"รูปแบบ":"PDF รวม 1 ไฟล์","การนับหน้า":"ไม่เกิน 10 หน้า ไม่ระบุยกเว้นปก"}'::jsonb, '["หลักฐานผลงาน/รางวัล/กิจกรรมที่สัมพันธ์กับสาขา ตามหัวข้อ Portfolio ในประกาศ"]'::jsonb, '["ปพ.1/ระเบียนผลการเรียน หน้า–หลังพร้อมตราโรงเรียน","TCASFolio หรือ Portfolio พร้อมประวัติและ Statement of Purpose","หลักฐานผลงาน/รางวัล/กิจกรรมที่เกี่ยวข้อง","คะแนนภาษาอังกฤษ (ถ้ามี)"]'::jsonb,
    '["Portfolio 50%","TGAT1 15% + TGAT2 15% + TGAT3 5% + TPAT3 15%","ต้องผ่านสัมภาษณ์"]'::jsonb, '["ตรวจหน่วยกิตกับคณะก่อนยืนยันสิทธิ์สมัคร; หลักสูตรอยู่ระหว่างปรับปรุง"]'::jsonb, 'GPAX อย่างน้อย 3.00; Portfolio 50%; TGAT1 15% + TGAT2 15% + TGAT3 5% + TPAT3 15%; ต้องผ่านสัมภาษณ์; GPAX อย่างเดียวไม่รับรองสิทธิ์สมัคร',
    'https://www.tuadmissions.in.th/img/2026090101500188.pdf#page=61', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'tu-science-computer-science-special'
where p.code = 'tu-direct-cs-special-2570'
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
    p.id, m.id, 3, '{}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{"TGAT1":{"ค่าน้ำหนัก":"15%"},"TGAT2":{"ค่าน้ำหนัก":"15%"},"TGAT3":{"ค่าน้ำหนัก":"5%"},"TPAT3":{"ค่าน้ำหนัก":"15%"}}'::jsonb, '["กำลังเรียนหรือจบ ม.6; ตารางไม่รับ ปวช., กศน. และวุฒิเทียบต่างประเทศ/นานาชาติ","หน่วยกิตข้อ 2.1: วิทยาศาสตร์ 22 และคณิตศาสตร์ 12; ข้อ 2.2: คณิตศาสตร์ 12 และภาษาต่างประเทศ 9 — ไม่ระบุว่าเลือกข้อใดข้อหนึ่ง จึงต้องสอบถามคณะก่อนสรุปสิทธิ์"]'::jsonb, '[''ประวัติส่วนตัว/การศึกษา และความสามารถด้านภาษา (ถ้ามี)'', ''Statement of Purpose ไม่เกิน 1,200 ตัวอักษร'', ''ผลงานด้านการพัฒนาโปรแกรม ระบบเครือข่าย ความมั่นคงปลอดภัยไซเบอร์ หรือเทคโนโลยีสารสนเทศ (ถ้ามี)'', ''ประกาศนียบัตร/หนังสือรับรอง/กิจกรรม; ผลงานนวัตกรรม โครงงาน งานวิจัย หรือผลงานสร้างสรรค์; รางวัลการแข่งขัน; การอบรม; กิจกรรมวิชาการ จิตอาสา ภาวะผู้นำ หรือการทำงานเป็นทีม'', ''ไม่มีคำถามเพิ่มเติม'']',
    '{"max_pages":10,"max_file_mb":20,"รูปแบบ":"PDF รวม 1 ไฟล์","การนับหน้า":"ไม่เกิน 10 หน้า ไม่ระบุยกเว้นปก"}'::jsonb, '["ผลงานโปรแกรม ระบบเครือข่าย ความมั่นคงปลอดภัยไซเบอร์ หรือเทคโนโลยีสารสนเทศ (ถ้ามี)","ผลงานนวัตกรรม โครงงาน งานวิจัย ผลงานสร้างสรรค์ หรือรางวัลที่เกี่ยวข้อง (ถ้ามี)"]'::jsonb, '["ปพ.1/ระเบียนผลการเรียน หน้า–หลังพร้อมตราโรงเรียน","TCASFolio หรือ Portfolio พร้อมประวัติและ Statement of Purpose","หลักฐานผลงาน/รางวัล/กิจกรรมที่เกี่ยวข้อง","คะแนนภาษาอังกฤษ (ถ้ามี)"]'::jsonb,
    '["Portfolio 50%","TGAT1 15% + TGAT2 15% + TGAT3 5% + TPAT3 15%","ต้องผ่านสัมภาษณ์"]'::jsonb, '["ตรวจหน่วยกิตกับคณะก่อนยืนยันสิทธิ์สมัคร; หลักสูตรอยู่ระหว่างปรับปรุง"]'::jsonb, 'GPAX อย่างน้อย 3.00; Portfolio 50%; TGAT1 15% + TGAT2 15% + TGAT3 5% + TPAT3 15%; ต้องผ่านสัมภาษณ์; GPAX อย่างเดียวไม่รับรองสิทธิ์สมัคร',
    'https://www.tuadmissions.in.th/img/2026090101500188.pdf#page=63', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'tu-science-network-cybersecurity'
where p.code = 'tu-direct-network-cybersecurity-2570'
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
select p.id, 'รับสมัคร', '2026-09-14', '2026-12-16', '14 ก.ย. 2569 เวลา 09.00 น. – 16 ธ.ค. 2569 เวลา 15.00 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-direct-cs-special-2570'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระค่าสมัคร', '2026-09-14', '2026-12-17', 'วันสุดท้าย 17 ธ.ค. 2569 เวลา 22.00 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-direct-cs-special-2570'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยื่นหรือแก้ไขเอกสาร', '2026-09-14', '2026-12-22', 'ภายใน 22 ธ.ค. 2569 เวลา 15.00 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-direct-cs-special-2570'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2027-03-04', null, '4 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-direct-cs-special-2570'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-03-06', null, 'ออนไลน์ 09.00–12.00 น.; รายงานตัว 08.30 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-direct-cs-special-2570'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้ผ่านการคัดเลือก', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-direct-cs-special-2570'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ผ่าน myTCAS', '2027-03-10', '2027-03-11', '10 มี.ค. 2570 – 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-direct-cs-special-2570'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้ยืนยันสิทธิ์เข้าศึกษา', '2027-03-22', null, '22 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-direct-cs-special-2570'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-09-14', '2026-12-16', '14 ก.ย. 2569 เวลา 09.00 น. – 16 ธ.ค. 2569 เวลา 15.00 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-direct-network-cybersecurity-2570'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระค่าสมัคร', '2026-09-14', '2026-12-17', 'วันสุดท้าย 17 ธ.ค. 2569 เวลา 22.00 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-direct-network-cybersecurity-2570'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยื่นหรือแก้ไขเอกสาร', '2026-09-14', '2026-12-22', 'ภายใน 22 ธ.ค. 2569 เวลา 15.00 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-direct-network-cybersecurity-2570'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2027-03-04', null, '4 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-direct-network-cybersecurity-2570'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-03-06', null, 'ออนไลน์ 09.00–12.00 น.; รายงานตัว 08.30 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-direct-network-cybersecurity-2570'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้ผ่านการคัดเลือก', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-direct-network-cybersecurity-2570'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ผ่าน myTCAS', '2027-03-10', '2027-03-11', '10 มี.ค. 2570 – 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-direct-network-cybersecurity-2570'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้ยืนยันสิทธิ์เข้าศึกษา', '2027-03-22', null, '22 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-direct-network-cybersecurity-2570'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

commit;
