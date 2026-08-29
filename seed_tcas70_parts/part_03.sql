-- Generated from datasets/tcas70_admissions.json
-- Supabase SQL Editor part 3 of 5; run parts in numeric order.
begin;

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 3, '{"semesters":"4–6","must_have_subject_grades":true}'::jsonb, '{"คณิตศาสตร์":3,"ภาษาต่างประเทศ":3}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 หรือใช้ผล GED","มีหน่วยกิตคณิตศาสตร์อย่างน้อย 12 และวิทยาศาสตร์อย่างน้อย 20"]'::jsonb, 'Portfolio จาก TCASfolio หรือจัดทำเองเป็น PDF ไม่เกิน 12 หน้า (รวมปกหน้า-หลัง) และไม่เกิน 10 MB; เนื้อหาหลักประกอบด้วยประวัติส่วนตัว ประวัติการศึกษา ผลงาน รางวัล และกิจกรรมที่เกี่ยวข้องกับหลักสูตร',
    '{"language":"ไม่กำหนด","max_pages":12,"max_file_mb":10,"includes_cover_and_back_cover":true,"extra_work_via_qr_or_link":true}'::jsonb, '[]'::jsonb, '["รูปถ่ายสุภาพที่ถ่ายไว้ไม่เกิน 6 เดือน","ระเบียนผลการเรียน 4–6 ภาคการศึกษา หรือฉบับสมบูรณ์","Portfolio PDF","ผลคะแนนภาษาอังกฤษ (ถ้ามี)","เอกสารเพิ่มเติมตามที่หลักสูตรกำหนด"]'::jsonb,
    '[{"name":"GPAX","weight_percent":25},{"name":"สัมภาษณ์","weight_percent":50},{"name":"Portfolio","weight_percent":25}]'::jsonb, '{"minimum_subject_credits":{"คณิตศาสตร์":12,"วิทยาศาสตร์":20},"missing_subject_grade_is_ineligible":true}'::jsonb, 'GPAX ≥ 3.00, GPA คณิตศาสตร์ ≥ 3.00 และภาษาต่างประเทศ ≥ 3.00; คัดเลือกจาก GPAX 25% สัมภาษณ์ 50% และ Portfolio 25%',
    'https://drive.google.com/file/d/1FpJICeKrwjegPy6tF_XWDoWKPGg135yn/view?usp=sharing', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-cs'
where p.code = 'kmutt-sit-active-recruitment-1'
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
    p.id, m.id, 2.5, '{"semesters":"4–6","must_have_subject_grades":true}'::jsonb, '{"คณิตศาสตร์":2.75,"ภาษาต่างประเทศ":2.5}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 หรือ ปวช.","มีหน่วยกิตคณิตศาสตร์อย่างน้อย 5 และภาษาต่างประเทศอย่างน้อย 6"]'::jsonb, 'Portfolio จาก TCASfolio หรือจัดทำเองเป็น PDF ไม่เกิน 12 หน้า (รวมปกหน้า-หลัง) และไม่เกิน 10 MB; เนื้อหาหลักประกอบด้วยประวัติส่วนตัว ประวัติการศึกษา ผลงาน รางวัล และกิจกรรมที่เกี่ยวข้องกับหลักสูตร',
    '{"language":"ไม่กำหนด","max_pages":12,"max_file_mb":10,"includes_cover_and_back_cover":true,"extra_work_via_qr_or_link":true}'::jsonb, '[]'::jsonb, '["รูปถ่ายสุภาพที่ถ่ายไว้ไม่เกิน 6 เดือน","ระเบียนผลการเรียน 4–6 ภาคการศึกษา หรือฉบับสมบูรณ์","Portfolio PDF","ผลคะแนนภาษาอังกฤษ (ถ้ามี)","เอกสารเพิ่มเติมตามที่หลักสูตรกำหนด"]'::jsonb,
    '[{"name":"สัมภาษณ์","weight_percent":60},{"name":"Portfolio","weight_percent":40}]'::jsonb, '{"minimum_subject_credits":{"คณิตศาสตร์":5,"ภาษาต่างประเทศ":6},"optional_intro_video_max_minutes":2,"portfolio_focus":"IT/ดิจิทัล หรือบุคลิกภาพและการสื่อสาร"}'::jsonb, 'GPAX ≥ 2.50, GPA คณิตศาสตร์ ≥ 2.75 และภาษาต่างประเทศ ≥ 2.50; สัมภาษณ์ 60% และ Portfolio 40%',
    'https://drive.google.com/file/d/1FpJICeKrwjegPy6tF_XWDoWKPGg135yn/view?usp=sharing', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-dsi'
where p.code = 'kmutt-sit-active-recruitment-1'
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
    p.id, m.id, 2.75, '{"semesters":"4–6","must_have_subject_grades":true,"semester_5_if_missing_submit_by":"วันสัมภาษณ์"}'::jsonb, '{"คณิตศาสตร์":2.75,"ภาษาต่างประเทศ":2.75}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 หรือ ปวช.","ไม่กำหนดหน่วยกิตขั้นต่ำ แต่ต้องมีผลการเรียนในกลุ่มวิชาที่กำหนด"]'::jsonb, 'Portfolio จาก TCASfolio หรือจัดทำเองเป็น PDF ไม่เกิน 12 หน้า (รวมปกหน้า-หลัง) และไม่เกิน 10 MB; เนื้อหาหลักประกอบด้วยประวัติส่วนตัว ประวัติการศึกษา ผลงาน รางวัล และกิจกรรมที่เกี่ยวข้องกับหลักสูตร',
    '{"language":"ไม่กำหนด","max_pages":12,"max_file_mb":10,"includes_cover_and_back_cover":true,"extra_work_via_qr_or_link":true}'::jsonb, '[]'::jsonb, '["รูปถ่ายสุภาพที่ถ่ายไว้ไม่เกิน 6 เดือน","ระเบียนผลการเรียน 4–6 ภาคการศึกษา หรือฉบับสมบูรณ์","Portfolio PDF","ผลคะแนนภาษาอังกฤษ (ถ้ามี)","เอกสารเพิ่มเติมตามที่หลักสูตรกำหนด"]'::jsonb,
    '[{"name":"สัมภาษณ์","weight_percent":50},{"name":"Portfolio","weight_percent":50}]'::jsonb, '{"intro_video_max_minutes":3,"video_access_must_not_require_permission":true,"interview_requires_it_work_presentation":true}'::jsonb, 'GPAX ≥ 2.75, GPA คณิตศาสตร์ ≥ 2.75 และภาษาต่างประเทศ ≥ 2.75; สัมภาษณ์ 50% และ Portfolio 50% พร้อมคลิปแนะนำตัว/ผลงานไม่เกิน 3 นาที',
    'https://drive.google.com/file/d/1FpJICeKrwjegPy6tF_XWDoWKPGg135yn/view?usp=sharing', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-it'
where p.code = 'kmutt-sit-active-recruitment-1'
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
    p.id, m.id, 3, '{"semesters":"4–6","must_have_subject_grades":true}'::jsonb, '{"คณิตศาสตร์":3,"ภาษาต่างประเทศ":3}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 หรือใช้ผล GED","มีหน่วยกิตคณิตศาสตร์อย่างน้อย 12 และวิทยาศาสตร์อย่างน้อย 20"]'::jsonb, 'Portfolio จาก TCASfolio หรือจัดทำเองเป็น PDF ไม่เกิน 12 หน้า (รวมปกหน้า-หลัง) และไม่เกิน 10 MB; เนื้อหาหลักประกอบด้วยประวัติส่วนตัว ประวัติการศึกษา ผลงาน รางวัล และกิจกรรมที่เกี่ยวข้องกับหลักสูตร',
    '{"language":"ไม่กำหนด","max_pages":12,"max_file_mb":10,"includes_cover_and_back_cover":true,"extra_work_via_qr_or_link":true}'::jsonb, '[]'::jsonb, '["รูปถ่ายสุภาพที่ถ่ายไว้ไม่เกิน 6 เดือน","ระเบียนผลการเรียน 4–6 ภาคการศึกษา หรือฉบับสมบูรณ์","Portfolio PDF","ผลคะแนนภาษาอังกฤษ (ถ้ามี)","เอกสารเพิ่มเติมตามที่หลักสูตรกำหนด"]'::jsonb,
    '[{"name":"GPAX","weight_percent":25},{"name":"สัมภาษณ์","weight_percent":50},{"name":"Portfolio","weight_percent":25}]'::jsonb, '{"minimum_subject_credits":{"คณิตศาสตร์":12,"วิทยาศาสตร์":20},"missing_subject_grade_is_ineligible":true}'::jsonb, 'GPAX ≥ 3.00, GPA คณิตศาสตร์ ≥ 3.00 และภาษาต่างประเทศ ≥ 3.00; คัดเลือกจาก GPAX 25% สัมภาษณ์ 50% และ Portfolio 25%',
    'https://drive.google.com/file/d/1XUI1Z93eBOYS9zURjDInmfYAR3V2ytg4/view?usp=sharing', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-cs'
where p.code = 'kmutt-sit-active-recruitment-3'
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
    p.id, m.id, 2.5, '{"semesters":"4–6","must_have_subject_grades":true}'::jsonb, '{"คณิตศาสตร์":2.75,"ภาษาต่างประเทศ":2.5}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 หรือ ปวช.","มีหน่วยกิตคณิตศาสตร์อย่างน้อย 5 และภาษาต่างประเทศอย่างน้อย 6"]'::jsonb, 'Portfolio จาก TCASfolio หรือจัดทำเองเป็น PDF ไม่เกิน 12 หน้า (รวมปกหน้า-หลัง) และไม่เกิน 10 MB; เนื้อหาหลักประกอบด้วยประวัติส่วนตัว ประวัติการศึกษา ผลงาน รางวัล และกิจกรรมที่เกี่ยวข้องกับหลักสูตร',
    '{"language":"ไม่กำหนด","max_pages":12,"max_file_mb":10,"includes_cover_and_back_cover":true,"extra_work_via_qr_or_link":true}'::jsonb, '[]'::jsonb, '["รูปถ่ายสุภาพที่ถ่ายไว้ไม่เกิน 6 เดือน","ระเบียนผลการเรียน 4–6 ภาคการศึกษา หรือฉบับสมบูรณ์","Portfolio PDF","ผลคะแนนภาษาอังกฤษ (ถ้ามี)","เอกสารเพิ่มเติมตามที่หลักสูตรกำหนด"]'::jsonb,
    '[{"name":"สัมภาษณ์","weight_percent":60},{"name":"Portfolio","weight_percent":40}]'::jsonb, '{"minimum_subject_credits":{"คณิตศาสตร์":5,"ภาษาต่างประเทศ":6},"optional_intro_video_max_minutes":2,"portfolio_focus":"IT/ดิจิทัล หรือบุคลิกภาพและการสื่อสาร"}'::jsonb, 'GPAX ≥ 2.50, GPA คณิตศาสตร์ ≥ 2.75 และภาษาต่างประเทศ ≥ 2.50; สัมภาษณ์ 60% และ Portfolio 40%',
    'https://drive.google.com/file/d/1XUI1Z93eBOYS9zURjDInmfYAR3V2ytg4/view?usp=sharing', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-dsi'
where p.code = 'kmutt-sit-active-recruitment-3'
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
    p.id, m.id, 2.75, '{"semesters":"4–6","must_have_subject_grades":true,"semester_5_if_missing_submit_by":"วันสัมภาษณ์"}'::jsonb, '{"คณิตศาสตร์":2.75,"ภาษาต่างประเทศ":2.75}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 หรือ ปวช.","ไม่กำหนดหน่วยกิตขั้นต่ำ แต่ต้องมีผลการเรียนในกลุ่มวิชาที่กำหนด"]'::jsonb, 'Portfolio จาก TCASfolio หรือจัดทำเองเป็น PDF ไม่เกิน 12 หน้า (รวมปกหน้า-หลัง) และไม่เกิน 10 MB; เนื้อหาหลักประกอบด้วยประวัติส่วนตัว ประวัติการศึกษา ผลงาน รางวัล และกิจกรรมที่เกี่ยวข้องกับหลักสูตร',
    '{"language":"ไม่กำหนด","max_pages":12,"max_file_mb":10,"includes_cover_and_back_cover":true,"extra_work_via_qr_or_link":true}'::jsonb, '[]'::jsonb, '["รูปถ่ายสุภาพที่ถ่ายไว้ไม่เกิน 6 เดือน","ระเบียนผลการเรียน 4–6 ภาคการศึกษา หรือฉบับสมบูรณ์","Portfolio PDF","ผลคะแนนภาษาอังกฤษ (ถ้ามี)","เอกสารเพิ่มเติมตามที่หลักสูตรกำหนด"]'::jsonb,
    '[{"name":"สัมภาษณ์","weight_percent":50},{"name":"Portfolio","weight_percent":50}]'::jsonb, '{"intro_video_max_minutes":3,"video_access_must_not_require_permission":true,"interview_requires_it_work_presentation":true}'::jsonb, 'GPAX ≥ 2.75, GPA คณิตศาสตร์ ≥ 2.75 และภาษาต่างประเทศ ≥ 2.75; สัมภาษณ์ 50% และ Portfolio 50% พร้อมคลิปแนะนำตัว/ผลงานไม่เกิน 3 นาที',
    'https://drive.google.com/file/d/1XUI1Z93eBOYS9zURjDInmfYAR3V2ytg4/view?usp=sharing', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-it'
where p.code = 'kmutt-sit-active-recruitment-3'
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
    p.id, m.id, 3.0, '{"semesters":"ตาม Transcript ที่ใช้สมัคร"}'::jsonb, '{"ฟิสิกส์":3.0,"คณิตศาสตร์":3.0,"ภาษาอังกฤษ":3.0}'::jsonb, '{"TOEIC":600,"MU-ELT":84,"TOEFL iBT":64,"IELTS":5.0}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6, Grade 12 หรือ Year 13","แผนการเรียนวิทยาศาสตร์-คณิตศาสตร์หรือแผนที่เกี่ยวข้อง"]'::jsonb, 'Portfolio ไม่เกิน 10 หน้า เน้นโครงงาน/การแข่งขัน/รางวัลด้านวิทยาศาสตร์ คณิตศาสตร์ คอมพิวเตอร์ การเขียนโปรแกรม หุ่นยนต์ ซอฟต์แวร์ หรือนวัตกรรม',
    '{"max_pages":10}'::jsonb, '["โอลิมปิกวิชาการ/สอวน.","โครงงานวิทยาศาสตร์หรือคอมพิวเตอร์","การแข่งขันหุ่นยนต์ ซอฟต์แวร์ หรือนวัตกรรม"]'::jsonb, '["รูปถ่าย","บัตรประชาชน","ทะเบียนบ้าน","Transcript","Portfolio","ใบรับรองการศึกษา","แบบฟอร์มตรวจสุขภาพ"]'::jsonb,
    '[{"name":"GPAX","weight_percent":30},{"name":"GPA ฟิสิกส์ คณิตศาสตร์ และภาษาอังกฤษ","weight_percent":40},{"name":"สัมภาษณ์","weight_percent":30}]'::jsonb, '{"interview_min_percent":70,"english_scores_are_special_consideration":true,"health_exam":"ตรวจสุขภาพทั่วไป"}'::jsonb, 'GPAX ≥ 3.00 และ GPA ฟิสิกส์ คณิตศาสตร์ ภาษาอังกฤษแต่ละวิชา ≥ 3.00; สัมภาษณ์ต้องได้อย่างน้อย 70%',
    'https://www.eg.mahidol.ac.th/egmu/admission/tcas-admission.html', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'mu-computer-engineering'
where p.code = 'mu-computer-engineering-portfolio-1-1'
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
    '{}'::jsonb, '["ม.6 ทุกแผนการเรียน","ผู้ต่ำกว่าเกณฑ์อาจได้รับการพิจารณาจาก Portfolio ตามประกาศ"]'::jsonb, 'อัปโหลด Portfolio เพื่อประกอบการพิจารณาตามระบบรับสมัคร; ประกาศฉบับนี้ไม่กำหนดจำนวนหน้า',
    '{}'::jsonb, '[]'::jsonb, '["ผลการเรียน","Portfolio","เอกสารตามระบบรับสมัคร"]'::jsonb,
    '["GPAX","แผนการเรียน","Portfolio"]'::jsonb, '{"interview_required":false}'::jsonb, 'GPAX ≥ 2.50; พิจารณา GPAX แผนการเรียน และ Portfolio; ไม่มีสอบสัมภาษณ์',
    'https://misreg.csc.ku.ac.th/admission/?page_id=63', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-csc-computer-science'
where p.code = 'ku-csc-education-opportunity-1-1'
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
    p.id, m.id, 3.0, '{}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ม.6 แผนวิทยาศาสตร์ หรือ ปวช. ที่เกี่ยวข้อง","ต้องผ่าน GPAX ขั้นต่ำ 3.00"]'::jsonb, 'อัปโหลด Portfolio เพื่อประกอบการพิจารณาตามระบบรับสมัคร; ประกาศฉบับนี้ไม่กำหนดจำนวนหน้า',
    '{}'::jsonb, '[]'::jsonb, '["ผลการเรียน","Portfolio","เอกสารตามระบบรับสมัคร"]'::jsonb,
    '["GPAX","แผนการเรียน","Portfolio"]'::jsonb, '{"interview_required":false}'::jsonb, 'GPAX ≥ 3.00; พิจารณา GPAX แผนการเรียน และ Portfolio; ไม่มีสอบสัมภาษณ์',
    'https://misreg.csc.ku.ac.th/admission/?page_id=63', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-csc-computer-engineering'
where p.code = 'ku-csc-education-opportunity-1-1'
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
    p.id, m.id, 2.5, '{"studying":"ม.4–ม.5 รวม 4 ภาคการศึกษา","graduated":"เกรดเฉลี่ยสะสมตลอดหลักสูตร"}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษา ม.6 หรือเทียบเท่า หรือสำเร็จมัธยมศึกษาตอนปลาย/เทียบเท่า","GPAX ระบบ 4.00 ไม่ต่ำกว่า 2.50"]'::jsonb, 'ผู้ผ่าน OSP ต้องสมัคร Inter Portfolio 1 ระหว่าง 3 พ.ย.–3 ธ.ค. 2569 โดยไม่ต้องทำแฟ้มสะสมผลงาน',
    '{"portfolio_required":false,"follow_up_round":"Inter Portfolio 1"}'::jsonb, '[]'::jsonb, '["ใบสมัครออนไลน์","เอกสารตามระบบ SIIT Admissions"]'::jsonb,
    '[{"name":"ข้อสอบคณิตศาสตร์","weight_fraction":"2/3"},{"name":"ข้อสอบภาษาอังกฤษ","weight_fraction":"1/3"},"สัมภาษณ์เฉพาะผู้มีสิทธิ์รับทุน"]'::jsonb, '{"scholarships":["Full","Half","Quarter"],"physics_exam_required":false,"must_apply_inter_portfolio_1":true}'::jsonb, 'GPAX ≥ 2.50; กลุ่ม CPE/DE สอบคณิตศาสตร์ 2/3 และอังกฤษ 1/3; ผู้ผ่านต้องสมัคร Inter Portfolio 1 ต่อโดยไม่ต้องทำ Portfolio',
    'https://admissions.siit.tu.ac.th/admission_box/outstanding-student-program-osp/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'tu-siit-computer-engineering'
where p.code = 'tu-siit-osp-2027'
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
    p.id, m.id, 2.5, '{"studying":"ม.4–ม.5 รวม 4 ภาคการศึกษา","graduated":"เกรดเฉลี่ยสะสมตลอดหลักสูตร"}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษา ม.6 หรือเทียบเท่า หรือสำเร็จมัธยมศึกษาตอนปลาย/เทียบเท่า","GPAX ระบบ 4.00 ไม่ต่ำกว่า 2.50"]'::jsonb, 'ผู้ผ่าน OSP ต้องสมัคร Inter Portfolio 1 ระหว่าง 3 พ.ย.–3 ธ.ค. 2569 โดยไม่ต้องทำแฟ้มสะสมผลงาน',
    '{"portfolio_required":false,"follow_up_round":"Inter Portfolio 1"}'::jsonb, '[]'::jsonb, '["ใบสมัครออนไลน์","เอกสารตามระบบ SIIT Admissions"]'::jsonb,
    '[{"name":"ข้อสอบคณิตศาสตร์","weight_fraction":"2/3"},{"name":"ข้อสอบภาษาอังกฤษ","weight_fraction":"1/3"},"สัมภาษณ์เฉพาะผู้มีสิทธิ์รับทุน"]'::jsonb, '{"scholarships":["Full","Half","Quarter"],"physics_exam_required":false,"must_apply_inter_portfolio_1":true}'::jsonb, 'GPAX ≥ 2.50; กลุ่ม CPE/DE สอบคณิตศาสตร์ 2/3 และอังกฤษ 1/3; ผู้ผ่านต้องสมัคร Inter Portfolio 1 ต่อโดยไม่ต้องทำ Portfolio',
    'https://admissions.siit.tu.ac.th/admission_box/outstanding-student-program-osp/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'tu-siit-digital-engineering'
where p.code = 'tu-siit-osp-2027'
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
    p.id, m.id, 3, '{"semesters":"4–6","must_have_subject_grades":true}'::jsonb, '{"คณิตศาสตร์":3,"ภาษาต่างประเทศ":3}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 หรือใช้ผล GED","มีหน่วยกิตคณิตศาสตร์อย่างน้อย 12 และวิทยาศาสตร์อย่างน้อย 20"]'::jsonb, 'Portfolio จาก TCASfolio หรือจัดทำเองเป็น PDF ไม่เกิน 12 หน้า (รวมปกหน้า-หลัง) และไม่เกิน 10 MB; เนื้อหาหลักประกอบด้วยประวัติส่วนตัว ประวัติการศึกษา ผลงาน รางวัล และกิจกรรมที่เกี่ยวข้องกับหลักสูตร',
    '{"language":"ไม่กำหนด","max_pages":12,"max_file_mb":10,"includes_cover_and_back_cover":true,"extra_work_via_qr_or_link":true}'::jsonb, '[]'::jsonb, '["รูปถ่ายสุภาพที่ถ่ายไว้ไม่เกิน 6 เดือน","ระเบียนผลการเรียน 4–6 ภาคการศึกษา หรือฉบับสมบูรณ์","Portfolio PDF","ผลคะแนนภาษาอังกฤษ (ถ้ามี)","เอกสารเพิ่มเติมตามที่หลักสูตรกำหนด"]'::jsonb,
    '[{"name":"GPAX","weight_percent":25},{"name":"สัมภาษณ์","weight_percent":50},{"name":"Portfolio","weight_percent":25}]'::jsonb, '{"minimum_subject_credits":{"คณิตศาสตร์":12,"วิทยาศาสตร์":20},"missing_subject_grade_is_ineligible":true}'::jsonb, 'GPAX ≥ 3.00, GPA คณิตศาสตร์ ≥ 3.00 และภาษาต่างประเทศ ≥ 3.00; คัดเลือกจาก GPAX 25% สัมภาษณ์ 50% และ Portfolio 25%',
    'https://join.kmutt.ac.th/projects/c02bf829-5c3c-408d-8bd9-515baebb80dd', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-cs'
where p.code = 'kmutt-sit-active-recruitment-2'
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
    p.id, m.id, 2.5, '{"semesters":"4–6","must_have_subject_grades":true}'::jsonb, '{"คณิตศาสตร์":2.75,"ภาษาต่างประเทศ":2.5}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 หรือ ปวช.","มีหน่วยกิตคณิตศาสตร์อย่างน้อย 5 และภาษาต่างประเทศอย่างน้อย 6"]'::jsonb, 'Portfolio จาก TCASfolio หรือจัดทำเองเป็น PDF ไม่เกิน 12 หน้า (รวมปกหน้า-หลัง) และไม่เกิน 10 MB; เนื้อหาหลักประกอบด้วยประวัติส่วนตัว ประวัติการศึกษา ผลงาน รางวัล และกิจกรรมที่เกี่ยวข้องกับหลักสูตร',
    '{"language":"ไม่กำหนด","max_pages":12,"max_file_mb":10,"includes_cover_and_back_cover":true,"extra_work_via_qr_or_link":true}'::jsonb, '[]'::jsonb, '["รูปถ่ายสุภาพที่ถ่ายไว้ไม่เกิน 6 เดือน","ระเบียนผลการเรียน 4–6 ภาคการศึกษา หรือฉบับสมบูรณ์","Portfolio PDF","ผลคะแนนภาษาอังกฤษ (ถ้ามี)","เอกสารเพิ่มเติมตามที่หลักสูตรกำหนด"]'::jsonb,
    '[{"name":"สัมภาษณ์","weight_percent":60},{"name":"Portfolio","weight_percent":40}]'::jsonb, '{"minimum_subject_credits":{"คณิตศาสตร์":5,"ภาษาต่างประเทศ":6},"optional_intro_video_max_minutes":2,"portfolio_focus":"IT/ดิจิทัล หรือบุคลิกภาพและการสื่อสาร"}'::jsonb, 'GPAX ≥ 2.50, GPA คณิตศาสตร์ ≥ 2.75 และภาษาต่างประเทศ ≥ 2.50; สัมภาษณ์ 60% และ Portfolio 40%',
    'https://join.kmutt.ac.th/projects/c02bf829-5c3c-408d-8bd9-515baebb80dd', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-dsi'
where p.code = 'kmutt-sit-active-recruitment-2'
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
    p.id, m.id, 2.75, '{"semesters":"4–6","must_have_subject_grades":true,"semester_5_if_missing_submit_by":"วันสัมภาษณ์"}'::jsonb, '{"คณิตศาสตร์":2.75,"ภาษาต่างประเทศ":2.75}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 หรือ ปวช.","ไม่กำหนดหน่วยกิตขั้นต่ำ แต่ต้องมีผลการเรียนในกลุ่มวิชาที่กำหนด"]'::jsonb, 'Portfolio จาก TCASfolio หรือจัดทำเองเป็น PDF ไม่เกิน 12 หน้า (รวมปกหน้า-หลัง) และไม่เกิน 10 MB; เนื้อหาหลักประกอบด้วยประวัติส่วนตัว ประวัติการศึกษา ผลงาน รางวัล และกิจกรรมที่เกี่ยวข้องกับหลักสูตร',
    '{"language":"ไม่กำหนด","max_pages":12,"max_file_mb":10,"includes_cover_and_back_cover":true,"extra_work_via_qr_or_link":true}'::jsonb, '[]'::jsonb, '["รูปถ่ายสุภาพที่ถ่ายไว้ไม่เกิน 6 เดือน","ระเบียนผลการเรียน 4–6 ภาคการศึกษา หรือฉบับสมบูรณ์","Portfolio PDF","ผลคะแนนภาษาอังกฤษ (ถ้ามี)","เอกสารเพิ่มเติมตามที่หลักสูตรกำหนด"]'::jsonb,
    '[{"name":"สัมภาษณ์","weight_percent":50},{"name":"Portfolio","weight_percent":50}]'::jsonb, '{"intro_video_max_minutes":3,"video_access_must_not_require_permission":true,"interview_requires_it_work_presentation":true}'::jsonb, 'GPAX ≥ 2.75, GPA คณิตศาสตร์ ≥ 2.75 และภาษาต่างประเทศ ≥ 2.75; สัมภาษณ์ 50% และ Portfolio 50% พร้อมคลิปแนะนำตัว/ผลงานไม่เกิน 3 นาที',
    'https://join.kmutt.ac.th/projects/c02bf829-5c3c-408d-8bd9-515baebb80dd', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-it'
where p.code = 'kmutt-sit-active-recruitment-2'
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
    p.id, m.id, 3.0, '{"semesters":"4–6"}'::jsonb, '{"คณิตศาสตร์":3.5,"วิทยาศาสตร์":3.5,"ภาษาต่างประเทศ":3.0}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ม.6 หรือวุฒิเทียบเท่าตามรายละเอียดเฉพาะหลักสูตร"]'::jsonb, 'Portfolio จาก TCASfolio หรือจัดทำเองเป็น PDF ไม่เกิน 12 หน้า (รวมปกหน้า-หลัง) และไม่เกิน 10 MB; ระบุสาขาบนหน้าปก พร้อมประวัติ การศึกษา ผลงาน รางวัล และกิจกรรมที่เกี่ยวข้อง',
    '{"max_pages":12,"max_file_mb":10,"includes_cover_and_back_cover":true,"extra_work_via_qr_or_link":true}'::jsonb, '["ผลงานวิชาชีพ/การแข่งขัน","โอลิมปิกวิชาการ","โครงงานวิทยาศาสตร์หรือคณิตศาสตร์"]'::jsonb, '["รูปถ่ายสุภาพที่ถ่ายไว้ไม่เกิน 6 เดือน","ระเบียนผลการเรียน 4–6 ภาคการศึกษา หรือฉบับสมบูรณ์","Portfolio PDF","เอกสารเพิ่มเติมตามที่หลักสูตรกำหนด"]'::jsonb,
    '["Portfolio","สัมภาษณ์"]'::jsonb, '{"minimum_subject_credits":{"คณิตศาสตร์":8,"วิทยาศาสตร์":20,"ภาษาต่างประเทศ":6}}'::jsonb, 'GPAX ≥ 3.00; GPA คณิตศาสตร์และวิทยาศาสตร์ ≥ 3.50 และภาษาต่างประเทศ ≥ 3.00',
    'https://join.kmutt.ac.th/projects/b82694a9-f0a6-4a3a-b18f-0de4f1e8bbfc', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-cpe'
where p.code = 'kmutt-active-recruitment-general'
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
    p.id, m.id, 2.75, '{"semesters":"4–6"}'::jsonb, '{"คณิตศาสตร์":2.75,"วิทยาศาสตร์":2.75,"ภาษาต่างประเทศ":2.75}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ม.6 หรือวุฒิเทียบเท่าตามรายละเอียดเฉพาะหลักสูตร"]'::jsonb, 'Portfolio จาก TCASfolio หรือจัดทำเองเป็น PDF ไม่เกิน 12 หน้า (รวมปกหน้า-หลัง) และไม่เกิน 10 MB; ระบุสาขาบนหน้าปก พร้อมประวัติ การศึกษา ผลงาน รางวัล และกิจกรรมที่เกี่ยวข้อง',
    '{"max_pages":12,"max_file_mb":10,"includes_cover_and_back_cover":true,"extra_work_via_qr_or_link":true}'::jsonb, '["ผลงานวิชาชีพ/การแข่งขัน","โอลิมปิกวิชาการ","โครงงานวิทยาศาสตร์หรือคณิตศาสตร์"]'::jsonb, '["รูปถ่ายสุภาพที่ถ่ายไว้ไม่เกิน 6 เดือน","ระเบียนผลการเรียน 4–6 ภาคการศึกษา หรือฉบับสมบูรณ์","Portfolio PDF","เอกสารเพิ่มเติมตามที่หลักสูตรกำหนด"]'::jsonb,
    '["Portfolio","สัมภาษณ์"]'::jsonb, '{"minimum_subject_credits":{"คณิตศาสตร์":8,"วิทยาศาสตร์":20,"ภาษาต่างประเทศ":6},"english_score_optional":true}'::jsonb, 'GPAX และ GPA คณิตศาสตร์ วิทยาศาสตร์ ภาษาต่างประเทศแต่ละกลุ่ม ≥ 2.75',
    'https://join.kmutt.ac.th/projects/b82694a9-f0a6-4a3a-b18f-0de4f1e8bbfc', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-cpe-international'
where p.code = 'kmutt-active-recruitment-general'
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
    p.id, m.id, 2.5, '{"semesters":"4–6"}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ม.6 หรือวุฒิเทียบเท่าตามรายละเอียดเฉพาะหลักสูตร"]'::jsonb, 'Portfolio จาก TCASfolio หรือจัดทำเองเป็น PDF ไม่เกิน 12 หน้า (รวมปกหน้า-หลัง) และไม่เกิน 10 MB; ระบุสาขาบนหน้าปก พร้อมประวัติ การศึกษา ผลงาน รางวัล และกิจกรรมที่เกี่ยวข้อง',
    '{"max_pages":12,"max_file_mb":10,"includes_cover_and_back_cover":true,"extra_work_via_qr_or_link":true}'::jsonb, '["ผลงานที่เกี่ยวข้องกับเทคโนโลยีมีเดีย","รางวัลระดับเขต จังหวัด หรือประเทศ"]'::jsonb, '["รูปถ่ายสุภาพที่ถ่ายไว้ไม่เกิน 6 เดือน","ระเบียนผลการเรียน 4–6 ภาคการศึกษา หรือฉบับสมบูรณ์","Portfolio PDF","เอกสารเพิ่มเติมตามที่หลักสูตรกำหนด"]'::jsonb,
    '[{"name":"สัมภาษณ์","weight_percent":50},{"name":"Portfolio","weight_percent":50}]'::jsonb, '{"subject_grades_must_exist":true}'::jsonb, 'GPAX ≥ 2.50; สัมภาษณ์ 50% และ Portfolio 50% โดยเน้นผลงานเกี่ยวกับสาขา',
    'https://join.kmutt.ac.th/projects/b82694a9-f0a6-4a3a-b18f-0de4f1e8bbfc', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-media-technology'
where p.code = 'kmutt-active-recruitment-general'
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
    p.id, m.id, 2.5, '{"semesters":"4–6"}'::jsonb, '{}'::jsonb, '{"TOEFL iBT":{"operator":">","score":61},"TOEFL PBT":{"operator":">","score":500,"note":"ไม่รับ ITP"},"TOEFL CBT":{"operator":">","score":173},"TOEFL Home Edition":{"operator":">","score":72},"IELTS":{"operator":">","score":5.5},"TU-GET":{"operator":">","score":63},"CU-TEP":{"operator":">","score":61},"Duolingo":{"operator":">","score":85}}'::jsonb,
    '{}'::jsonb, '["ม.6 หรือวุฒิเทียบเท่าตามรายละเอียดเฉพาะหลักสูตร"]'::jsonb, 'Portfolio จาก TCASfolio หรือจัดทำเองเป็น PDF ไม่เกิน 12 หน้า (รวมปกหน้า-หลัง) และไม่เกิน 10 MB; ระบุสาขาบนหน้าปก พร้อมประวัติ การศึกษา ผลงาน รางวัล และกิจกรรมที่เกี่ยวข้อง',
    '{"max_pages":12,"max_file_mb":10,"includes_cover_and_back_cover":true,"extra_work_via_qr_or_link":true}'::jsonb, '[]'::jsonb, '["รูปถ่ายสุภาพที่ถ่ายไว้ไม่เกิน 6 เดือน","ระเบียนผลการเรียน 4–6 ภาคการศึกษา หรือฉบับสมบูรณ์","Portfolio PDF","เอกสารเพิ่มเติมตามที่หลักสูตรกำหนด"]'::jsonb,
    '[{"name":"สัมภาษณ์","weight_percent":100}]'::jsonb, '{"english_score_comparison":"มากกว่า","game_analysis_essay_words":"500–1,000"}'::jsonb, 'GPAX ≥ 2.50; ต้องมีคะแนนอังกฤษตามเกณฑ์และ Game Analysis Essay 500–1,000 คำ; สัมภาษณ์ 100%',
    'https://join.kmutt.ac.th/projects/b82694a9-f0a6-4a3a-b18f-0de4f1e8bbfc', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-game-design'
where p.code = 'kmutt-active-recruitment-general'
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
    p.id, m.id, 2.75, '{"semesters":"4–6"}'::jsonb, '{"คณิตศาสตร์":2.75,"วิทยาศาสตร์":2.75,"ภาษาต่างประเทศ":2.75}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ม.6 หรือวุฒิเทียบเท่าตามรายละเอียดเฉพาะหลักสูตร"]'::jsonb, 'Portfolio จาก TCASfolio หรือจัดทำเองเป็น PDF ไม่เกิน 12 หน้า (รวมปกหน้า-หลัง) และไม่เกิน 10 MB; ระบุสาขาบนหน้าปก พร้อมประวัติ การศึกษา ผลงาน รางวัล และกิจกรรมที่เกี่ยวข้อง',
    '{"max_pages":12,"max_file_mb":10,"includes_cover_and_back_cover":true,"extra_work_via_qr_or_link":true}'::jsonb, '["โครงงานวิทยาศาสตร์ คณิตศาสตร์ คอมพิวเตอร์ หรือหุ่นยนต์"]'::jsonb, '["รูปถ่ายสุภาพที่ถ่ายไว้ไม่เกิน 6 เดือน","ระเบียนผลการเรียน 4–6 ภาคการศึกษา หรือฉบับสมบูรณ์","Portfolio PDF","เอกสารเพิ่มเติมตามที่หลักสูตรกำหนด"]'::jsonb,
    '[{"name":"GPAX","weight_percent":10},{"name":"GPA คณิตศาสตร์","weight_percent":10},{"name":"GPA วิทยาศาสตร์","weight_percent":10},{"name":"GPA ภาษาต่างประเทศ","weight_percent":10},{"name":"สัมภาษณ์","weight_percent":30},{"name":"Portfolio","weight_percent":30}]'::jsonb, '{"minimum_subject_credits_m6":{"คณิตศาสตร์":8,"วิทยาศาสตร์":18,"ภาษาต่างประเทศ":6},"minimum_subject_credits_vocational":{"คณิตศาสตร์":6,"วิทยาศาสตร์":6,"ภาษาต่างประเทศ":6}}'::jsonb, 'GPAX และ GPA คณิตศาสตร์ วิทยาศาสตร์ ภาษาต่างประเทศ ≥ 2.75; สัมภาษณ์ 30% Portfolio 30%',
    'https://join.kmutt.ac.th/projects/b82694a9-f0a6-4a3a-b18f-0de4f1e8bbfc', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-ai-systems'
where p.code = 'kmutt-active-recruitment-general'
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
    p.id, m.id, 3.0, '{"semesters":"4–6"}'::jsonb, '{"คณิตศาสตร์":3.0,"วิทยาศาสตร์":3.0,"ภาษาต่างประเทศ":2.75}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 หรือเทียบเท่าตามเกณฑ์เฉพาะหลักสูตร"]'::jsonb, 'Portfolio จาก TCASfolio หรือจัดทำเองเป็น PDF ไม่เกิน 12 หน้า (รวมปกหน้า-หลัง) และไม่เกิน 10 MB; ระบุสาขาบนหน้าปก พร้อมประวัติ การศึกษา ผลงาน รางวัล และกิจกรรมที่เกี่ยวข้อง',
    '{"max_pages":12,"max_file_mb":10,"includes_cover_and_back_cover":true,"extra_work_via_qr_or_link":true}'::jsonb, '[]'::jsonb, '["รูปถ่ายสุภาพที่ถ่ายไว้ไม่เกิน 6 เดือน","ระเบียนผลการเรียน 4–6 ภาคการศึกษา หรือฉบับสมบูรณ์","Portfolio PDF","เอกสารเพิ่มเติมตามที่หลักสูตรกำหนด"]'::jsonb,
    '[{"name":"สัมภาษณ์","weight_percent":80},{"name":"Portfolio","weight_percent":20}]'::jsonb, '{"called_for_selection":63,"call_weights":{"คณิตศาสตร์":40,"วิทยาศาสตร์":40,"ภาษาต่างประเทศ":20}}'::jsonb, 'GPAX ≥ 3.00; GPA คณิตศาสตร์/วิทยาศาสตร์ ≥ 3.00 และภาษาต่างประเทศ ≥ 2.75; สัมภาษณ์ 80% Portfolio 20%',
    'https://join.kmutt.ac.th/projects/fe4b52a7-d942-4807-9b59-1527675dad89', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-cpe'
where p.code = 'kmutt-direct-good-grade'
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
    p.id, m.id, 2.75, '{"semesters":"4–6"}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 หรือเทียบเท่าตามเกณฑ์เฉพาะหลักสูตร"]'::jsonb, 'Portfolio จาก TCASfolio หรือจัดทำเองเป็น PDF ไม่เกิน 12 หน้า (รวมปกหน้า-หลัง) และไม่เกิน 10 MB; ระบุสาขาบนหน้าปก พร้อมประวัติ การศึกษา ผลงาน รางวัล และกิจกรรมที่เกี่ยวข้อง',
    '{"max_pages":12,"max_file_mb":10,"includes_cover_and_back_cover":true,"extra_work_via_qr_or_link":true}'::jsonb, '[]'::jsonb, '["รูปถ่ายสุภาพที่ถ่ายไว้ไม่เกิน 6 เดือน","ระเบียนผลการเรียน 4–6 ภาคการศึกษา หรือฉบับสมบูรณ์","Portfolio PDF","เอกสารเพิ่มเติมตามที่หลักสูตรกำหนด"]'::jsonb,
    '[{"name":"สัมภาษณ์","weight_percent":100}]'::jsonb, '{"called_for_selection":50,"minimum_subject_credits":{"คณิตศาสตร์":6,"วิทยาศาสตร์":6,"ภาษาต่างประเทศ":6},"call_weights":{"GPAX":40,"คณิตศาสตร์":20,"วิทยาศาสตร์":20,"ภาษาต่างประเทศ":20}}'::jsonb, 'GPAX ≥ 2.75; ใช้ GPAX/ผลการเรียนรายกลุ่มเรียกสอบ และสัมภาษณ์ 100%',
    'https://join.kmutt.ac.th/projects/fe4b52a7-d942-4807-9b59-1527675dad89', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-media-technology'
where p.code = 'kmutt-direct-good-grade'
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
    p.id, m.id, 3.0, '{"semesters":"4–6"}'::jsonb, '{"คณิตศาสตร์":2.75,"ภาษาต่างประเทศ":2.5}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 หรือเทียบเท่าตามเกณฑ์เฉพาะหลักสูตร"]'::jsonb, 'Portfolio จาก TCASfolio หรือจัดทำเองเป็น PDF ไม่เกิน 12 หน้า (รวมปกหน้า-หลัง) และไม่เกิน 10 MB; ระบุสาขาบนหน้าปก พร้อมประวัติ การศึกษา ผลงาน รางวัล และกิจกรรมที่เกี่ยวข้อง',
    '{"max_pages":12,"max_file_mb":10,"includes_cover_and_back_cover":true,"extra_work_via_qr_or_link":true}'::jsonb, '[]'::jsonb, '["รูปถ่ายสุภาพที่ถ่ายไว้ไม่เกิน 6 เดือน","ระเบียนผลการเรียน 4–6 ภาคการศึกษา หรือฉบับสมบูรณ์","Portfolio PDF","เอกสารเพิ่มเติมตามที่หลักสูตรกำหนด"]'::jsonb,
    '[{"name":"สัมภาษณ์","weight_percent":100}]'::jsonb, '{"called_for_selection":30,"minimum_subject_credits":{"คณิตศาสตร์":5,"ภาษาต่างประเทศ":6},"optional_intro_video_max_minutes":2}'::jsonb, 'GPAX ≥ 3.00; GPA คณิตศาสตร์ ≥ 2.75 และภาษาต่างประเทศ ≥ 2.50; สัมภาษณ์ 100%',
    'https://join.kmutt.ac.th/projects/fe4b52a7-d942-4807-9b59-1527675dad89', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-dsi'
where p.code = 'kmutt-direct-good-grade'
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
    p.id, m.id, 3.25, '{"semesters":"4–6"}'::jsonb, '{"คณิตศาสตร์":3.0,"ภาษาต่างประเทศ":3.0}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 หรือเทียบเท่าตามเกณฑ์เฉพาะหลักสูตร"]'::jsonb, 'Portfolio จาก TCASfolio หรือจัดทำเองเป็น PDF ไม่เกิน 12 หน้า (รวมปกหน้า-หลัง) และไม่เกิน 10 MB; ระบุสาขาบนหน้าปก พร้อมประวัติ การศึกษา ผลงาน รางวัล และกิจกรรมที่เกี่ยวข้อง',
    '{"max_pages":12,"max_file_mb":10,"includes_cover_and_back_cover":true,"extra_work_via_qr_or_link":true}'::jsonb, '[]'::jsonb, '["รูปถ่ายสุภาพที่ถ่ายไว้ไม่เกิน 6 เดือน","ระเบียนผลการเรียน 4–6 ภาคการศึกษา หรือฉบับสมบูรณ์","Portfolio PDF","เอกสารเพิ่มเติมตามที่หลักสูตรกำหนด"]'::jsonb,
    '[{"name":"สัมภาษณ์","weight_percent":100}]'::jsonb, '{"minimum_subject_credits_either":{"คณิตศาสตร์":10,"วิทยาศาสตร์และเทคโนโลยี":5},"intro_video_max_minutes":3,"interview_requires_it_work_presentation":true}'::jsonb, 'GPAX ≥ 3.25; GPA คณิตศาสตร์และภาษาต่างประเทศ ≥ 3.00; Portfolio คลิปไม่เกิน 3 นาที และนำเสนอผลงาน IT วันสัมภาษณ์',
    'https://join.kmutt.ac.th/projects/fe4b52a7-d942-4807-9b59-1527675dad89', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-it'
where p.code = 'kmutt-direct-good-grade'
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
    p.id, m.id, 3.25, '{"semesters":"4–6"}'::jsonb, '{"คณิตศาสตร์":3.0,"ภาษาต่างประเทศ":3.0}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 หรือเทียบเท่าตามเกณฑ์เฉพาะหลักสูตร"]'::jsonb, 'Portfolio จาก TCASfolio หรือจัดทำเองเป็น PDF ไม่เกิน 12 หน้า (รวมปกหน้า-หลัง) และไม่เกิน 10 MB; ระบุสาขาบนหน้าปก พร้อมประวัติ การศึกษา ผลงาน รางวัล และกิจกรรมที่เกี่ยวข้อง',
    '{"max_pages":12,"max_file_mb":10,"includes_cover_and_back_cover":true,"extra_work_via_qr_or_link":true}'::jsonb, '[]'::jsonb, '["รูปถ่ายสุภาพที่ถ่ายไว้ไม่เกิน 6 เดือน","ระเบียนผลการเรียน 4–6 ภาคการศึกษา หรือฉบับสมบูรณ์","Portfolio PDF","เอกสารเพิ่มเติมตามที่หลักสูตรกำหนด"]'::jsonb,
    '[{"name":"สัมภาษณ์","weight_percent":100}]'::jsonb, '{"called_for_selection":30,"minimum_subject_credits":{"คณิตศาสตร์":12,"วิทยาศาสตร์":20},"call_weights":{"GPAX":30,"คณิตศาสตร์":30,"ภาษาต่างประเทศ":40}}'::jsonb, 'GPAX ≥ 3.25; GPA คณิตศาสตร์และภาษาต่างประเทศ ≥ 3.00; สัมภาษณ์ 100%',
    'https://join.kmutt.ac.th/projects/fe4b52a7-d942-4807-9b59-1527675dad89', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-cs'
where p.code = 'kmutt-direct-good-grade'
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
    p.id, m.id, 2.75, '{"semesters":"4–6"}'::jsonb, '{"คณิตศาสตร์":2.75,"วิทยาศาสตร์":2.75,"ภาษาต่างประเทศ":2.75}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ม.6, ปวช., GED หรือวุฒินานาชาติตามรายละเอียดเฉพาะหลักสูตร"]'::jsonb, 'Portfolio จาก TCASfolio หรือจัดทำเองเป็น PDF ไม่เกิน 12 หน้า (รวมปกหน้า-หลัง) และไม่เกิน 10 MB; ระบุสาขาบนหน้าปก พร้อมประวัติ การศึกษา ผลงาน รางวัล และกิจกรรมที่เกี่ยวข้อง',
    '{"max_pages":12,"max_file_mb":10,"includes_cover_and_back_cover":true,"extra_work_via_qr_or_link":true}'::jsonb, '[]'::jsonb, '["รูปถ่ายสุภาพที่ถ่ายไว้ไม่เกิน 6 เดือน","ระเบียนผลการเรียน 4–6 ภาคการศึกษา หรือฉบับสมบูรณ์","Portfolio PDF","เอกสารเพิ่มเติมตามที่หลักสูตรกำหนด"]'::jsonb,
    '[{"name":"สัมภาษณ์","weight_percent":80},{"name":"Portfolio","weight_percent":20}]'::jsonb, '{"called_for_selection":70,"minimum_subject_credits":{"คณิตศาสตร์":8,"วิทยาศาสตร์":20,"ภาษาต่างประเทศ":6},"call_weights":{"GPAX":10,"คณิตศาสตร์":30,"วิทยาศาสตร์":30,"ภาษาต่างประเทศ":30}}'::jsonb, 'GPAX และ GPA คณิตศาสตร์ วิทยาศาสตร์ ภาษาต่างประเทศ ≥ 2.75; สัมภาษณ์ 80% Portfolio 20%',
    'https://join.kmutt.ac.th/projects/b44debb2-6551-4eca-9e65-8ed7a7a3a179', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-cpe-international'
where p.code = 'kmutt-international-admission-1'
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
    p.id, m.id, 3.0, '{"semesters":"4–6"}'::jsonb, '{"คณิตศาสตร์":3.0,"ภาษาต่างประเทศ":3.0}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ม.6, ปวช., GED หรือวุฒินานาชาติตามรายละเอียดเฉพาะหลักสูตร"]'::jsonb, 'Portfolio จาก TCASfolio หรือจัดทำเองเป็น PDF ไม่เกิน 12 หน้า (รวมปกหน้า-หลัง) และไม่เกิน 10 MB; ระบุสาขาบนหน้าปก พร้อมประวัติ การศึกษา ผลงาน รางวัล และกิจกรรมที่เกี่ยวข้อง',
    '{"max_pages":12,"max_file_mb":10,"includes_cover_and_back_cover":true,"extra_work_via_qr_or_link":true}'::jsonb, '[]'::jsonb, '["รูปถ่ายสุภาพที่ถ่ายไว้ไม่เกิน 6 เดือน","ระเบียนผลการเรียน 4–6 ภาคการศึกษา หรือฉบับสมบูรณ์","Portfolio PDF","เอกสารเพิ่มเติมตามที่หลักสูตรกำหนด"]'::jsonb,
    '[{"name":"GPAX","weight_percent":25},{"name":"สัมภาษณ์","weight_percent":50},{"name":"Portfolio","weight_percent":25}]'::jsonb, '{"minimum_subject_credits":{"คณิตศาสตร์":12,"วิทยาศาสตร์":20}}'::jsonb, 'GPAX ≥ 3.00; GPA คณิตศาสตร์และภาษาต่างประเทศ ≥ 3.00; GPAX 25% สัมภาษณ์ 50% Portfolio 25%',
    'https://join.kmutt.ac.th/projects/b44debb2-6551-4eca-9e65-8ed7a7a3a179', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-cs'
where p.code = 'kmutt-international-admission-1'
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
    p.id, m.id, 2.5, '{"semesters":"4–6"}'::jsonb, '{}'::jsonb, '{"TOEFL iBT":{"operator":">","score":61},"TOEFL PBT":{"operator":">","score":500,"note":"ไม่รับ ITP"},"TOEFL CBT":{"operator":">","score":173},"TOEFL Home Edition":{"operator":">","score":72},"IELTS":{"operator":">","score":5.5},"TU-GET":{"operator":">","score":63},"CU-TEP":{"operator":">","score":61},"Duolingo":{"operator":">","score":85}}'::jsonb,
    '{}'::jsonb, '["ม.6, ปวช., GED หรือวุฒินานาชาติตามรายละเอียดเฉพาะหลักสูตร"]'::jsonb, 'Portfolio จาก TCASfolio หรือจัดทำเองเป็น PDF ไม่เกิน 12 หน้า (รวมปกหน้า-หลัง) และไม่เกิน 10 MB; ระบุสาขาบนหน้าปก พร้อมประวัติ การศึกษา ผลงาน รางวัล และกิจกรรมที่เกี่ยวข้อง',
    '{"max_pages":12,"max_file_mb":10,"includes_cover_and_back_cover":true,"extra_work_via_qr_or_link":true}'::jsonb, '[]'::jsonb, '["รูปถ่ายสุภาพที่ถ่ายไว้ไม่เกิน 6 เดือน","ระเบียนผลการเรียน 4–6 ภาคการศึกษา หรือฉบับสมบูรณ์","Portfolio PDF","เอกสารเพิ่มเติมตามที่หลักสูตรกำหนด"]'::jsonb,
    '[{"name":"สัมภาษณ์","weight_percent":100}]'::jsonb, '{"english_score_comparison":"มากกว่า","game_analysis_essay_words":"500–1,000"}'::jsonb, 'GPAX ≥ 2.50; ต้องมีคะแนนอังกฤษตามเกณฑ์และ Game Analysis Essay 500–1,000 คำ; สัมภาษณ์ 100%',
    'https://join.kmutt.ac.th/projects/b44debb2-6551-4eca-9e65-8ed7a7a3a179', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-game-design'
where p.code = 'kmutt-international-admission-1'
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
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00","รับเฉพาะแผนการเรียนวิทยาศาสตร์-คณิตศาสตร์หรือเทียบเท่า","เป็นผู้มีร่างกายแข็งแรงและไม่เป็นโรคหรือภาวะอันเป็นอุปสรรคในการศึกษา","เป็นผู้มีความบกพร่องอย่างใดอย่างหนึ่ง ดังต่อไปนี้","เป็นผู้บกพร่องทางการได้ยิน (หูตึงใช้เครื่องช่วยฟัง)","เป็นผู้บกพร่องทางการเห็น (สายตาเลือนรางสามารถอ่านหนังสือได้ด้วยตนเองในระยะ 30 เซนติเมตร)","เป็นผู้บกพร่องทางร่างกาย หรือการเคลื่อนไหว แต่สามารถช่วยเหลือตัวเองได้","เป็นผู้พิการที่มีบัตรประจำตัวผู้พิการตามกฎหมายว่าด้วยการส่งเสริมและพัฒนาคุณภาพชีวิตผู้พิการ","ผลการตัดสินของคณะกรรมการทุกขั้นตอนถือเป็นที่สิ้นสุด"]'::jsonb, 'Portfolio ไม่เกิน 15 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":15}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":50},{"name":"สัมภาษณ์","weight_percent":50}]'::jsonb, '{"official_project_code":"00410507106011","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00410507106011\nคณะวิทยาศาสตร์ สาขา วิทยาการคอมพิวเตอร์\nหลักสูตร ไทย รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ การรับนักเรียนพิการ\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 18,000 บาท\nแนวทางการประกอบอาชีพ\nนักพัฒนาระบบคอมพิวเตอร์, นักวิชาการคอมพิวเตอร์, นักวิเคราะห์และออกแบบระบบ, โปรแกรมเมอร์, ผู้ดูแลระบบเครือข่าย,ระบบฐานข้อมูล,พัฒนาซอฟต์แวร์,พัฒนาและดูแลเว็บไซต์, รอบที่ 1 Portfolio แบบ 1.1: 1\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00\nรับเฉพาะแผนการเรียนวิทยาศาสตร์-คณิตศาสตร์หรือเทียบเท่า\nเป็นผู้มีร่างกายแข็งแรงและไม่เป็นโรคหรือภาวะอันเป็นอุปสรรคในการศึกษา\nเป็นผู้มีความบกพร่องอย่างใดอย่างหนึ่ง ดังต่อไปนี้\nเป็นผู้บกพร่องทางการได้ยิน (หูตึงใช้เครื่องช่วยฟัง)\nเป็นผู้บกพร่องทางการเห็น (สายตาเลือนรางสามารถอ่านหนังสือได้ด้วยตนเองในระยะ 30 เซนติเมตร)\nเป็นผู้บกพร่องทางร่างกาย หรือการเคลื่อนไหว แต่สามารถช่วยเหลือตัวเองได้\nเป็นผู้พิการที่มีบัตรประจำตัวผู้พิการตามกฎหมายว่าด้วยการส่งเสริมและพัฒนาคุณภาพชีวิตผู้พิการ\nผลการตัดสินของคณะกรรมการทุกขั้นตอนถือเป็นที่สิ้นสุด\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nสำเนาบัตรประจำตัวผู้พิการ\nใบแสดงผลการเรียน\nหลักฐานการชำระเงิน\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 15 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 50 และ การสัมภาษณ์ ร้อยละ 50\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nข้อมูลพื้นฐาน ข้อมูลส่วนตัว\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nไม่มี\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nสำเนาบัตรประจำตัวผู้พิการ\nหมวดที่ 4 : กิจกรรม/รางวัล\nเกียรติบัตร (Certificate) รางวัล หรือ กิจกรรมเข้าร่วม\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\n0"}'::jsonb, 'GPAX ≥ 3.00; Portfolio ไม่เกิน 15 หน้า; Portfolio 50% และสัมภาษณ์ 50%',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cs'
where p.code = 'cmu-00410507106011-1-1'
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
    p.id, m.id, null, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '[]'::jsonb, 'Portfolio ตามรายละเอียดในประกาศทางการของ มช.',
    '{}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[]'::jsonb, '{"official_project_code":"00410507107010","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00410507107010\nคณะวิทยาศาสตร์ สาขา วิทยาการคอมพิวเตอร์\nหลักสูตร ไทย รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ การรับนักเรียนที่ดำเนินการโดยคณะ (โครงการสานฝันปั้นนักวิทยาศาสตร์ )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 18,000 บาท\nแนวทางการประกอบอาชีพ\nนักพัฒนาระบบคอมพิวเตอร์, นักวิชาการคอมพิวเตอร์, นักวิเคราะห์และออกแบบระบบ, โปรแกรมเมอร์, ผู้ดูแลระบบเครือข่าย,ระบบฐานข้อมูล,พัฒนาซอฟต์แวร์,พัฒนาและดูแลเว็บไซต์, รอบที่ 1 Portfolio แบบ 1.1: 5\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nการรับนักเรียนที่ดำเนินการโดยคณะ\nเป็นผู้มีคุณสมบัติตามประกาศของคณะ ดูรายละเอียดเพิ่มเติมได้ที่เว็บไซต์ของคณะ\nhttps://tcas.science.cmu.ac.th/\n0"}'::jsonb, 'ใช้คุณสมบัติและผลงานตามประกาศทางการของ มช.',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cs'
where p.code = 'cmu-00410507107010-1-1'
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
    p.id, m.id, null, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '[]'::jsonb, 'Portfolio ตามรายละเอียดในประกาศทางการของ มช.',
    '{}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[]'::jsonb, '{"official_project_code":"00410507107020","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00410507107020\nคณะวิทยาศาสตร์ สาขา วิทยาการคอมพิวเตอร์\nหลักสูตร ไทย รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ การรับนักเรียนที่ดำเนินการโดยคณะ (โครงการสนับสนุนการจัดตั้งห้องเรียนวิทยาศาสตร์ในโรงเรียนฯ (วมว.) )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 18,000 บาท\nแนวทางการประกอบอาชีพ\nนักพัฒนาระบบคอมพิวเตอร์, นักวิชาการคอมพิวเตอร์, นักวิเคราะห์และออกแบบระบบ, โปรแกรมเมอร์, ผู้ดูแลระบบเครือข่าย,ระบบฐานข้อมูล,พัฒนาซอฟต์แวร์,พัฒนาและดูแลเว็บไซต์, รอบที่ 1 Portfolio แบบ 1.1: 2\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nการรับนักเรียนที่ดำเนินการโดยคณะ\nเป็นผู้มีคุณสมบัติตามประกาศของคณะ ดูรายละเอียดเพิ่มเติมได้ที่เว็บไซต์ของคณะ\nhttps://tcas.science.cmu.ac.th/\n0"}'::jsonb, 'ใช้คุณสมบัติและผลงานตามประกาศทางการของ มช.',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cs'
where p.code = 'cmu-00410507107020-1-1'
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
    p.id, m.id, null, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '[]'::jsonb, 'Portfolio ตามรายละเอียดในประกาศทางการของ มช.',
    '{}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[]'::jsonb, '{"official_project_code":"00410507107030","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00410507107030\nคณะวิทยาศาสตร์ สาขา วิทยาการคอมพิวเตอร์\nหลักสูตร ไทย รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ การรับนักเรียนที่ดำเนินการโดยคณะ (โครงการรับนักเรียนจากค่ายโอลิมปิกวิชาการ )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 18,000 บาท\nแนวทางการประกอบอาชีพ\nนักพัฒนาระบบคอมพิวเตอร์, นักวิชาการคอมพิวเตอร์, นักวิเคราะห์และออกแบบระบบ, โปรแกรมเมอร์, ผู้ดูแลระบบเครือข่าย,ระบบฐานข้อมูล,พัฒนาซอฟต์แวร์,พัฒนาและดูแลเว็บไซต์, รอบที่ 1 Portfolio แบบ 1.1: 4\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nการรับนักเรียนที่ดำเนินการโดยคณะ\nเป็นผู้มีคุณสมบัติตามประกาศของคณะ ดูรายละเอียดเพิ่มเติมได้ที่เว็บไซต์ของคณะ\nhttps://tcas.science.cmu.ac.th/\n0"}'::jsonb, 'ใช้คุณสมบัติและผลงานตามประกาศทางการของ มช.',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cs'
where p.code = 'cmu-00410507107030-1-1'
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
    p.id, m.id, null, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '[]'::jsonb, 'Portfolio ตามรายละเอียดในประกาศทางการของ มช.',
    '{}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[]'::jsonb, '{"official_project_code":"00410507107040","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00410507107040\nคณะวิทยาศาสตร์ สาขา วิทยาการคอมพิวเตอร์\nหลักสูตร ไทย รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ การรับนักเรียนที่ดำเนินการโดยคณะ (โครงการพัฒนาอัจฉริยภาพสำหรับเด็กและเยาวชน (ร่วมกับ สวทช.) )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 18,000 บาท\nแนวทางการประกอบอาชีพ\nนักพัฒนาระบบคอมพิวเตอร์, นักวิชาการคอมพิวเตอร์, นักวิเคราะห์และออกแบบระบบ, โปรแกรมเมอร์, ผู้ดูแลระบบเครือข่าย,ระบบฐานข้อมูล,พัฒนาซอฟต์แวร์,พัฒนาและดูแลเว็บไซต์, รอบที่ 1 Portfolio แบบ 1.1: 1\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nการรับนักเรียนที่ดำเนินการโดยคณะ\nเป็นผู้มีคุณสมบัติตามประกาศของคณะ ดูรายละเอียดเพิ่มเติมได้ที่เว็บไซต์ของคณะ\nhttps://tcas.science.cmu.ac.th/\n0"}'::jsonb, 'ใช้คุณสมบัติและผลงานตามประกาศทางการของ มช.',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cs'
where p.code = 'cmu-00410507107040-1-1'
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
    p.id, m.id, null, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '[]'::jsonb, 'Portfolio ตามรายละเอียดในประกาศทางการของ มช.',
    '{}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[]'::jsonb, '{"official_project_code":"00410507107050","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00410507107050\nคณะวิทยาศาสตร์ สาขา วิทยาการคอมพิวเตอร์\nหลักสูตร ไทย รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ การรับนักเรียนที่ดำเนินการโดยคณะ (โครงการรับผู้มีความสามารถพิเศษทางวิทยาศาสตร์และเทคโนโลยี )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 18,000 บาท\nแนวทางการประกอบอาชีพ\nนักพัฒนาระบบคอมพิวเตอร์, นักวิชาการคอมพิวเตอร์, นักวิเคราะห์และออกแบบระบบ, โปรแกรมเมอร์, ผู้ดูแลระบบเครือข่าย,ระบบฐานข้อมูล,พัฒนาซอฟต์แวร์,พัฒนาและดูแลเว็บไซต์, รอบที่ 1 Portfolio แบบ 1.1: 10\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nการรับนักเรียนที่ดำเนินการโดยคณะ\nเป็นผู้มีคุณสมบัติตามประกาศของคณะ ดูรายละเอียดเพิ่มเติมได้ที่เว็บไซต์ของคณะ\nhttps://tcas.science.cmu.ac.th/\n0"}'::jsonb, 'ใช้คุณสมบัติและผลงานตามประกาศทางการของ มช.',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cs'
where p.code = 'cmu-00410507107050-1-1'
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
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00","รับเฉพาะแผนการเรียนวิทยาศาสตร์-คณิตศาสตร์หรือเทียบเท่า","เป็นผู้มีร่างกายแข็งแรงและไม่เป็นโรคหรือภาวะอันเป็นอุปสรรคในการศึกษา","เป็นผู้มีความบกพร่องอย่างใดอย่างหนึ่ง ดังต่อไปนี้","เป็นผู้บกพร่องทางการได้ยิน (หูตึงใช้เครื่องช่วยฟัง)","เป็นผู้บกพร่องทางการเห็น (สายตาเลือนรางสามารถอ่านหนังสือได้ด้วยตนเองในระยะ 30 เซนติเมตร)","เป็นผู้บกพร่องทางร่างกาย หรือการเคลื่อนไหว แต่สามารถช่วยเหลือตัวเองได้","เป็นผู้พิการที่มีบัตรประจำตัวผู้พิการตามกฎหมายว่าด้วยการส่งเสริมและพัฒนาคุณภาพชีวิตผู้พิการ","ผลการตัดสินของคณะกรรมการทุกขั้นตอนถือเป็นที่สิ้นสุด"]'::jsonb, 'Portfolio ไม่เกิน 15 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":15}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":50},{"name":"สัมภาษณ์","weight_percent":50}]'::jsonb, '{"official_project_code":"00410508106011","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00410508106011\nคณะวิทยาศาสตร์ สาขา วิทยาการข้อมูล\nหลักสูตร ไทย รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ การรับนักเรียนพิการ\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 18,000 บาท\nแนวทางการประกอบอาชีพ\nนักวิทยาศาสตร์ข้อมูล, วิศวกรข้อมูล, นักวิเคราะห์และวางแผน, ผู้ประกอบการอิสระด้านเทคโนโลยีสารสนเทศ, ผู้บริหารด้านเทคโนโลยีสารสนเทศ, รอบที่ 1 Portfolio แบบ 1.1: 1\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00\nรับเฉพาะแผนการเรียนวิทยาศาสตร์-คณิตศาสตร์หรือเทียบเท่า\nเป็นผู้มีร่างกายแข็งแรงและไม่เป็นโรคหรือภาวะอันเป็นอุปสรรคในการศึกษา\nเป็นผู้มีความบกพร่องอย่างใดอย่างหนึ่ง ดังต่อไปนี้\nเป็นผู้บกพร่องทางการได้ยิน (หูตึงใช้เครื่องช่วยฟัง)\nเป็นผู้บกพร่องทางการเห็น (สายตาเลือนรางสามารถอ่านหนังสือได้ด้วยตนเองในระยะ 30 เซนติเมตร)\nเป็นผู้บกพร่องทางร่างกาย หรือการเคลื่อนไหว แต่สามารถช่วยเหลือตัวเองได้\nเป็นผู้พิการที่มีบัตรประจำตัวผู้พิการตามกฎหมายว่าด้วยการส่งเสริมและพัฒนาคุณภาพชีวิตผู้พิการ\nผลการตัดสินของคณะกรรมการทุกขั้นตอนถือเป็นที่สิ้นสุด\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nสำเนาบัตรประจำตัวผู้พิการ\nใบแสดงผลการเรียน\nหลักฐานการชำระเงิน\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 15 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 50 และ การสัมภาษณ์ ร้อยละ 50\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nข้อมูลพื้นฐาน ข้อมูลส่วนตัว\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nไม่มี\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nสำเนาบัตรประจำตัวผู้พิการ\nหมวดที่ 4 : กิจกรรม/รางวัล\nเกียรติบัตร (Certificate) รางวัล หรือ กิจกรรมเข้าร่วม\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\n0"}'::jsonb, 'GPAX ≥ 3.00; Portfolio ไม่เกิน 15 หน้า; Portfolio 50% และสัมภาษณ์ 50%',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-data-science'
where p.code = 'cmu-00410508106011-1-1'
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
    p.id, m.id, null, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '[]'::jsonb, 'Portfolio ตามรายละเอียดในประกาศทางการของ มช.',
    '{}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[]'::jsonb, '{"official_project_code":"00410508107010","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00410508107010\nคณะวิทยาศาสตร์ สาขา วิทยาการข้อมูล\nหลักสูตร ไทย รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ การรับนักเรียนที่ดำเนินการโดยคณะ (โครงการรับนักเรียนจากค่ายโอลิมปิกวิชาการ )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 18,000 บาท\nแนวทางการประกอบอาชีพ\nนักวิทยาศาสตร์ข้อมูล, วิศวกรข้อมูล, นักวิเคราะห์และวางแผน, ผู้ประกอบการอิสระด้านเทคโนโลยีสารสนเทศ, ผู้บริหารด้านเทคโนโลยีสารสนเทศ, รอบที่ 1 Portfolio แบบ 1.1: 1\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nการรับนักเรียนที่ดำเนินการโดยคณะ\nเป็นผู้มีคุณสมบัติตามประกาศของคณะ ดูรายละเอียดเพิ่มเติมได้ที่เว็บไซต์ของคณะ\nhttps://tcas.science.cmu.ac.th/\n0"}'::jsonb, 'ใช้คุณสมบัติและผลงานตามประกาศทางการของ มช.',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-data-science'
where p.code = 'cmu-00410508107010-1-1'
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
    p.id, m.id, null, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '[]'::jsonb, 'Portfolio ตามรายละเอียดในประกาศทางการของ มช.',
    '{}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[]'::jsonb, '{"official_project_code":"00410508107020","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00410508107020\nคณะวิทยาศาสตร์ สาขา วิทยาการข้อมูล\nหลักสูตร ไทย รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ การรับนักเรียนที่ดำเนินการโดยคณะ (โครงการพัฒนาอัจฉริยภาพสำหรับเด็กและเยาวชน (ร่วมกับ สวทช.) )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 18,000 บาท\nแนวทางการประกอบอาชีพ\nนักวิทยาศาสตร์ข้อมูล, วิศวกรข้อมูล, นักวิเคราะห์และวางแผน, ผู้ประกอบการอิสระด้านเทคโนโลยีสารสนเทศ, ผู้บริหารด้านเทคโนโลยีสารสนเทศ, รอบที่ 1 Portfolio แบบ 1.1: 1\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nการรับนักเรียนที่ดำเนินการโดยคณะ\nเป็นผู้มีคุณสมบัติตามประกาศของคณะ ดูรายละเอียดเพิ่มเติมได้ที่เว็บไซต์ของคณะ\nhttps://tcas.science.cmu.ac.th/\n0"}'::jsonb, 'ใช้คุณสมบัติและผลงานตามประกาศทางการของ มช.',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-data-science'
where p.code = 'cmu-00410508107020-1-1'
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
    p.id, m.id, null, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '[]'::jsonb, 'Portfolio ตามรายละเอียดในประกาศทางการของ มช.',
    '{}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[]'::jsonb, '{"official_project_code":"00410508107030","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00410508107030\nคณะวิทยาศาสตร์ สาขา วิทยาการข้อมูล\nหลักสูตร ไทย รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ การรับนักเรียนที่ดำเนินการโดยคณะ (โครงการสนับสนุนการจัดตั้งห้องเรียนวิทยาศาสตร์ในโรงเรียนฯ (วมว.) )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 18,000 บาท\nแนวทางการประกอบอาชีพ\nนักวิทยาศาสตร์ข้อมูล, วิศวกรข้อมูล, นักวิเคราะห์และวางแผน, ผู้ประกอบการอิสระด้านเทคโนโลยีสารสนเทศ, ผู้บริหารด้านเทคโนโลยีสารสนเทศ, รอบที่ 1 Portfolio แบบ 1.1: 1\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nการรับนักเรียนที่ดำเนินการโดยคณะ\nเป็นผู้มีคุณสมบัติตามประกาศของคณะ ดูรายละเอียดเพิ่มเติมได้ที่เว็บไซต์ของคณะ\nhttps://tcas.science.cmu.ac.th/\n0"}'::jsonb, 'ใช้คุณสมบัติและผลงานตามประกาศทางการของ มช.',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-data-science'
where p.code = 'cmu-00410508107030-1-1'
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
    p.id, m.id, null, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '[]'::jsonb, 'Portfolio ตามรายละเอียดในประกาศทางการของ มช.',
    '{}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[]'::jsonb, '{"official_project_code":"00410508107040","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00410508107040\nคณะวิทยาศาสตร์ สาขา วิทยาการข้อมูล\nหลักสูตร ไทย รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ การรับนักเรียนที่ดำเนินการโดยคณะ (โครงการสานฝันปั้นนักวิทยาศาสตร์ )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 18,000 บาท\nแนวทางการประกอบอาชีพ\nนักวิทยาศาสตร์ข้อมูล, วิศวกรข้อมูล, นักวิเคราะห์และวางแผน, ผู้ประกอบการอิสระด้านเทคโนโลยีสารสนเทศ, ผู้บริหารด้านเทคโนโลยีสารสนเทศ, รอบที่ 1 Portfolio แบบ 1.1: 5\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nการรับนักเรียนที่ดำเนินการโดยคณะ\nเป็นผู้มีคุณสมบัติตามประกาศของคณะ ดูรายละเอียดเพิ่มเติมได้ที่เว็บไซต์ของคณะ\nhttps://tcas.science.cmu.ac.th/\n0"}'::jsonb, 'ใช้คุณสมบัติและผลงานตามประกาศทางการของ มช.',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-data-science'
where p.code = 'cmu-00410508107040-1-1'
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
    p.id, m.id, 3.0, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{"ภาษาอังกฤษ":3.0,"คณิตศาสตร์":3.25,"ฟิสิกส์":3.25}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.00","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) คณิตศาสตร์ ไม่น้อยกว่า 3.25","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ฟิสิกส์ ไม่น้อยกว่า 3.25","สำหรับหลักสูตรการศึกษาตามอัธยาศัย (กศน.)","เป็นผู้กำลังศึกษานอกระบบ/อัธยาศัย ระดับมัธยมศึกษาตอนปลาย","เป็นผู้ที่ได้รับรางวัลชนะเลิศ รองชนะเลิศ หรือรองชนะเลิศอันดับสอง จากโครงการความร่วมมือสร้างสังคมแห่งการเรียนรู้นวัตกรรมด้านพลังงานและสิ่งแวดล้อม"]'::jsonb, 'Portfolio ไม่เกิน 15 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":15}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":80},{"name":"สัมภาษณ์","weight_percent":20}]'::jsonb, '{"official_project_code":"00410608108040","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00410608108040\nคณะวิศวกรรมศาสตร์ สาขา วิศวกรรมคอมพิวเตอร์\nหลักสูตร ไทย รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ โครงการพิเศษอื่นๆ (โครงการความร่วมมือสร้างสังคมแห่งการเรียนรู้นวัตกรรมด้านพลังงานและสิ่งแวดล้อม )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 23,000 บาท\nแนวทางการประกอบอาชีพ\nSoftware Engineer / Full Stack Developer, Computer Hardware Engineer, Data Analyst / Data Engineer / Database Administrator, Software Tester / Quality Assurance Engineer, Game Developer, รอบที่ 1 Portfolio แบบ 1.1: 3\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.00\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) คณิตศาสตร์ ไม่น้อยกว่า 3.25\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ฟิสิกส์ ไม่น้อยกว่า 3.25\nสำหรับหลักสูตรการศึกษาตามอัธยาศัย (กศน.)\nเป็นผู้กำลังศึกษานอกระบบ/อัธยาศัย ระดับมัธยมศึกษาตอนปลาย\nเป็นผู้ที่ได้รับรางวัลชนะเลิศ รองชนะเลิศ หรือรองชนะเลิศอันดับสอง จากโครงการความร่วมมือสร้างสังคมแห่งการเรียนรู้นวัตกรรมด้านพลังงานและสิ่งแวดล้อม\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nหลักฐานการชำระเงิน\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 15 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 80 และ การสัมภาษณ์ ร้อยละ 20\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nประวัติส่วนตัวของนักเรียน\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nเรียงความ ความยาวไม่เกิน 2 หน้า A4 จากหัวข้อที่กำหนดในเว็บไซต์ https://cmu.to/cpe-tcas-essay\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบแสดงผลการเรียน (ปพ.1) ด้านหน้าและด้านหลัง\nหมวดที่ 4 : กิจกรรม/รางวัล\nสรุปผลงานในระดับมัธยมศึกษาที่แสดงถึงความรู้ ความสามารถและทักษะของผู้สมัคร สิ่งประดิษฐ์ที่เกี่ยวข้องกับสาขาวิชา การเข้าร่วมกิจกรรมต่าง ๆ ทั้งในและนอกหลักสูตร รวมถึงรางวัลที่ผู้สมัครได้รับตามที่โครงการกำหนด พร้อมอธิบายรายละเอียดประกอบ โดยนักเรียนสามารถใส่รูปภาพในแต่ละหน้าได้ไม่เกิน 6 รูป\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nบัตรประจำตัวประชาชน\n0"}'::jsonb, 'GPAX ≥ 3.00; Portfolio ไม่เกิน 15 หน้า; Portfolio 80% และสัมภาษณ์ 20%',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cpe'
where p.code = 'cmu-00410608108040-1-1'
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
    p.id, m.id, 3.0, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{"ภาษาอังกฤษ":3.0,"คณิตศาสตร์":3.25,"ฟิสิกส์":3.25}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.00","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) คณิตศาสตร์ ไม่น้อยกว่า 3.25","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ฟิสิกส์ ไม่น้อยกว่า 3.25","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 3.00","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.00","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) คณิตศาสตร์ ไม่น้อยกว่า 3.25","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ฟิสิกส์ ไม่น้อยกว่า 3.25","มีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้","IELTS 5.5","IELTS indicator 5.5","TOEFL PBT/ITP 500","TOEFL CBT 173","TOEFL iBT 46-59","TOEIC 650","SAT EBRW 430","CMU TEGS 60","CU-TEP 65","TU-GET PBT 500","TU-GET CBT 60","Duolingo (DET) 95","Oxford Test of English (OTE)/ OTE Advanced 111","PTE-Academic (overall) 40","เป็นผู้กำลังศึกษา หรือสำเร็จการศึกษาแล้ว ในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร","ต้องแนบ Letters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน","สำหรับหลักสูตรการศึกษาตามอัธยาศัย (กศน.)","เป็นผู้กำลังศึกษานอกระบบ/อัธยาศัย ระดับมัธยมศึกษาตอนปลาย","เป็นผู้สำเร็จการศึกษานอกระบบ/อัธยาศัย ระดับมัธยมศึกษาตอนปลาย","มีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้","IELTS 5.5","IELTS indicator 5.5","TOEFL PBT/ITP 500","TOEFL CBT 173","TOEFL iBT 46-59","TOEIC 650","SAT EBRW 430","CMU TEGS 60","CU-TEP 65","TU-GET PBT 500","TU-GET CBT 60","Duolingo (DET) 95","Oxford Test of English (OTE)/ OTE Advanced 111","PTE-Academic (overall) 40","สำหรับหลักสูตรเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลาง (เช่น GED)","เป็นไปตามประกาศสมาคมที่ประชุมอธิการบดีฯ เรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา","มีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้","IELTS 5.5","IELTS indicator 5.5","TOEFL PBT/ITP 500","TOEFL CBT 173","TOEFL iBT 46-59","TOEIC 650","SAT EBRW 430","CMU TEGS 60","CU-TEP 65","TU-GET PBT 500","TU-GET CBT 60","Duolingo (DET) 95","Oxford Test of English (OTE)/ OTE Advanced 111","PTE-Academic (overall) 40","เป็นผู้ที่ได้รับรางวัล","เป็นผู้ที่ได้รับรางวัล (ระดับประเทศ) การแข่งขันโครงการพัฒนาโปรแกรมคอมพิวเตอร์แห่งประเทศไทย (NSC) หรือ","เป็นผู้ที่ได้รับรางวัล (ระดับประเทศ) การประกวดโครงงานของนักวิทยาศาสตร์รุ่นเยาว์ สาขาวิชาวิทยาการคอมพิวเตอร์และวิศวกรรมคอมพิวเตอร์ (YDC.CS & YSC.EN) หรือโครงการอื่นที่เทียบเท่า หรือ","เป็นนักเรียนจากโครงการคอมพิวเตอร์โอลิมปิกที่ผ่านเข้าค่าย 2 จากศูนย์ สอวน. ทั่วประเทศ หรือ","เป็นผู้ที่ได้รับรางวัลจากการแข่งขันวิชาการในระดับเดียวกันตามดุลยพินิจของคณะกรรมการคัดเลือก โดยสามารถสอบถามข้อมูลการแข่งขันที่เทียบเท่า ทาง E-mail: cpe@eng.cmu.ac.th หรือทางโทรศัพท์ 053-942023"]'::jsonb, 'Portfolio ไม่เกิน 15 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":15}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":80},{"name":"สัมภาษณ์","weight_percent":20}]'::jsonb, '{"official_project_code":"00410666108010","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00410666108010\nคณะวิศวกรรมศาสตร์ สาขา ระบบสารสนเทศและความมั่นคงปลอดภัยไซเบอร์ (นานาชาติ ช่องทาง TCAS)\nหลักสูตร นานาชาติ รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ โครงการพิเศษอื่นๆ (โครงการรับนักเรียนที่มีอัจฉริยภาพทางคอมพิวเตอร์ )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 80,000 บาท\nแนวทางการประกอบอาชีพ\nInformation Systems Administrator, IT Consultant / IT Engineer, System Engineer / System Analyst, Network Engineer / Computer Network Architect, Cybersecurity Professionals, รอบที่ 1 Portfolio แบบ 1.1: 2\nแบบ 1.2: 1 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.00\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) คณิตศาสตร์ ไม่น้อยกว่า 3.25\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ฟิสิกส์ ไม่น้อยกว่า 3.25\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 3.00\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.00\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) คณิตศาสตร์ ไม่น้อยกว่า 3.25\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ฟิสิกส์ ไม่น้อยกว่า 3.25\nมีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้\nIELTS 5.5\nIELTS indicator 5.5\nTOEFL PBT/ITP 500\nTOEFL CBT 173\nTOEFL iBT 46-59\nTOEIC 650\nSAT EBRW 430\nCMU TEGS 60\nCU-TEP 65\nTU-GET PBT 500\nTU-GET CBT 60\nDuolingo (DET) 95\nOxford Test of English (OTE)/ OTE Advanced 111\nPTE-Academic (overall) 40\nสำหรับหลักสูตรนานาชาติ\nเป็นผู้กำลังศึกษา หรือสำเร็จการศึกษาแล้ว ในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร\nต้องแนบ Letters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน\nสำหรับหลักสูตรการศึกษาตามอัธยาศัย (กศน.)\nเป็นผู้กำลังศึกษานอกระบบ/อัธยาศัย ระดับมัธยมศึกษาตอนปลาย\nเป็นผู้สำเร็จการศึกษานอกระบบ/อัธยาศัย ระดับมัธยมศึกษาตอนปลาย\nมีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้\nIELTS 5.5\nIELTS indicator 5.5\nTOEFL PBT/ITP 500\nTOEFL CBT 173\nTOEFL iBT 46-59\nTOEIC 650\nSAT EBRW 430\nCMU TEGS 60\nCU-TEP 65\nTU-GET PBT 500\nTU-GET CBT 60\nDuolingo (DET) 95\nOxford Test of English (OTE)/ OTE Advanced 111\nPTE-Academic (overall) 40\nสำหรับหลักสูตรเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลาง (เช่น GED)\nเป็นไปตามประกาศสมาคมที่ประชุมอธิการบดีฯ เรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา\nมีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้\nIELTS 5.5\nIELTS indicator 5.5\nTOEFL PBT/ITP 500\nTOEFL CBT 173\nTOEFL iBT 46-59\nTOEIC 650\nSAT EBRW 430\nCMU TEGS 60\nCU-TEP 65\nTU-GET PBT 500\nTU-GET CBT 60\nDuolingo (DET) 95\nOxford Test of English (OTE)/ OTE Advanced 111\nPTE-Academic (overall) 40\nเป็นผู้ที่ได้รับรางวัล\nเป็นผู้ที่ได้รับรางวัล (ระดับประเทศ) การแข่งขันโครงการพัฒนาโปรแกรมคอมพิวเตอร์แห่งประเทศไทย (NSC) หรือ\nเป็นผู้ที่ได้รับรางวัล (ระดับประเทศ) การประกวดโครงงานของนักวิทยาศาสตร์รุ่นเยาว์ สาขาวิชาวิทยาการคอมพิวเตอร์และวิศวกรรมคอมพิวเตอร์ (YDC.CS & YSC.EN) หรือโครงการอื่นที่เทียบเท่า หรือ\nเป็นนักเรียนจากโครงการคอมพิวเตอร์โอลิมปิกที่ผ่านเข้าค่าย 2 จากศูนย์ สอวน. ทั่วประเทศ หรือ\nเป็นผู้ที่ได้รับรางวัลจากการแข่งขันวิชาการในระดับเดียวกันตามดุลยพินิจของคณะกรรมการคัดเลือก โดยสามารถสอบถามข้อมูลการแข่งขันที่เทียบเท่า ทาง E-mail: cpe@eng.cmu.ac.th หรือทางโทรศัพท์ 053-942023\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nหลักฐานผลคะแนนที่ใช้คัดเลือก\nหลักฐานการชำระเงิน\nอื่น ๆ\nกรณีนักเรียนเป็นผู้กำลังศึกษา หรือสำเร็จการศึกษาแล้ว ในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร ต้องแนบเอกสารเพิ่มเติม ดังนี้\nLetters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 15 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 80 และ การสัมภาษณ์ ร้อยละ 20\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nประวัติส่วนตัวของนักเรียน\nผลคะแนนสอบภาษาอังกฤษอย่างใดอย่างหนึ่ง ตามที่โครงการกำหนด\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nเรียงความ ความยาวไม่เกิน 2 หน้า A4 จากหัวข้อที่กำหนดในเว็บไซต์ https://cmu.to/isne-tcas-essay\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบแสดงผลการเรียน (ปพ.1) ด้านหน้าและด้านหลัง\nกรณีนักเรียนเป็นผู้กำลังศึกษา หรือสำเร็จการศึกษาแล้ว ในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร ต้องแนบเอกสารเพิ่มเติม ดังนี้\nLetters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน\nหลักฐานผลคะแนนสอบภาษาอังกฤษอย่างใดอย่างหนึ่ง ตามที่โครงการกำหนด\nหมวดที่ 4 : กิจกรรม/รางวัล\nสรุปผลงานในระดับมัธยมศึกษาที่แสดงถึงความรู้ ความสามารถและทักษะของผู้สมัคร สิ่งประดิษฐ์ที่เกี่ยวข้องกับสาขาวิชา การเข้าร่วมกิจกรรมต่าง ๆ ทั้งในและนอกหลักสูตร รวมถึงรางวัลที่ผู้สมัครได้รับตามที่โครงการกำหนด พร้อมอธิบายรายละเอียดประกอบ โดยนักเรียนสามารถใส่รูปภาพในแต่ละหน้าได้ไม่เกิน 6 รูป\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nบัตรประจำตัวประชาชน\nคุณสมบัติเพิ่มเติมแบบ 1.2\nเกณฑ์ขั้นต่ำ\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ไม่น้อยกว่า 40 คะแนน\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTPAT 3 ความถนัดทางวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์ (รหัสวิชา 30) T-SCORE ไม่น้อยกว่า 45\nสัดส่วนที่ใช้ในการคัดเลือก\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ค่าน้ำหนักร้อยละ 76\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTGAT 1 การสื่อสารภาษาอังกฤษ (รหัสวิชา 91) ค่าน้ำหนักร้อยละ 4\nTGAT 2 การคิดอย่างมีเหตุผล (รหัสวิชา 92) ค่าน้ำหนักร้อยละ 4\nTGAT 3 สมรรถนะการทำงาน (รหัสวิชา 93) ค่าน้ำหนักร้อยละ 4\nTPAT 3 ความถนัดทางวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์ (รหัสวิชา 30) ค่าน้ำหนักร้อยละ 12\n0"}'::jsonb, 'GPAX ≥ 3.00; Portfolio ไม่เกิน 15 หน้า; Portfolio 80% และสัมภาษณ์ 20%',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cyber'
where p.code = 'cmu-00410666108010-1-1'
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
    p.id, m.id, 3.0, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{"ภาษาอังกฤษ":3.0,"คณิตศาสตร์":3.25,"ฟิสิกส์":3.25}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.00","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) คณิตศาสตร์ ไม่น้อยกว่า 3.25","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ฟิสิกส์ ไม่น้อยกว่า 3.25","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 3.00","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.00","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) คณิตศาสตร์ ไม่น้อยกว่า 3.25","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ฟิสิกส์ ไม่น้อยกว่า 3.25","มีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้","IELTS 5.5","IELTS indicator 5.5","TOEFL PBT/ITP 500","TOEFL CBT 173","TOEFL iBT 46-59","TOEIC 650","SAT EBRW 430","CMU TEGS 60","CU-TEP 65","TU-GET PBT 500","TU-GET CBT 60","Duolingo (DET) 95","Oxford Test of English (OTE)/ OTE Advanced 111","PTE-Academic (overall) 40","เป็นผู้กำลังศึกษา หรือสำเร็จการศึกษาแล้ว ในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร","ต้องแนบ Letters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน","สำหรับหลักสูตรการศึกษาตามอัธยาศัย (กศน.)","เป็นผู้กำลังศึกษานอกระบบ/อัธยาศัย ระดับมัธยมศึกษาตอนปลาย","เป็นผู้สำเร็จการศึกษานอกระบบ/อัธยาศัย ระดับมัธยมศึกษาตอนปลาย","มีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้","IELTS 5.5","IELTS indicator 5.5","TOEFL PBT/ITP 500","TOEFL CBT 173","TOEFL iBT 46-59","TOEIC 650","SAT EBRW 430","CMU TEGS 60","CU-TEP 65","TU-GET PBT 500","TU-GET CBT 60","Duolingo (DET) 95","Oxford Test of English (OTE)/ OTE Advanced 111","PTE-Academic (overall) 40","สำหรับหลักสูตรเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลาง (เช่น GED)","เป็นไปตามประกาศสมาคมที่ประชุมอธิการบดีฯ เรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา","มีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้","IELTS 5.5","IELTS indicator 5.5","TOEFL PBT/ITP 500","TOEFL CBT 173","TOEFL iBT 46-59","TOEIC 650","SAT EBRW 430","CMU TEGS 60","CU-TEP 65","TU-GET PBT 500","TU-GET CBT 60","Duolingo (DET) 95","Oxford Test of English (OTE)/ OTE Advanced 111","PTE-Academic (overall) 40","เป็นผู้ที่ได้รับรางวัล","เป็นผู้ที่ได้รับรางวัล (ระดับประเทศ) การแข่งขันโครงการพัฒนาโปรแกรมคอมพิวเตอร์แห่งประเทศไทย (NSC) หรือ","เป็นผู้ที่ได้รับรางวัล (ระดับประเทศ) การประกวดโครงงานของนักวิทยาศาสตร์รุ่นเยาว์ สาขาวิชาวิทยาการคอมพิวเตอร์และวิศวกรรมคอมพิวเตอร์ (YDC.CS & YSC.EN) หรือโครงการอื่นที่เทียบเท่า หรือ","เป็นนักเรียนจากโครงการคอมพิวเตอร์โอลิมปิกที่ผ่านเข้าค่าย 2 จากศูนย์ สอวน. ทั่วประเทศ หรือ","เป็นผู้ที่ได้รับรางวัลจากการแข่งขันวิชาการในระดับเดียวกันตามดุลยพินิจของคณะกรรมการคัดเลือก โดยสามารถสอบถามข้อมูลการแข่งขันที่เทียบเท่า ทาง E-mail: cpe@eng.cmu.ac.th หรือทางโทรศัพท์ 053-942023"]'::jsonb, 'Portfolio ไม่เกิน 15 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":15}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":80},{"name":"สัมภาษณ์","weight_percent":20},"TGAT/TPAT ตามเกณฑ์แบบ 1.2"]'::jsonb, '{"official_project_code":"00410666108010","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00410666108010\nคณะวิศวกรรมศาสตร์ สาขา ระบบสารสนเทศและความมั่นคงปลอดภัยไซเบอร์ (นานาชาติ ช่องทาง TCAS)\nหลักสูตร นานาชาติ รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ โครงการพิเศษอื่นๆ (โครงการรับนักเรียนที่มีอัจฉริยภาพทางคอมพิวเตอร์ )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 80,000 บาท\nแนวทางการประกอบอาชีพ\nInformation Systems Administrator, IT Consultant / IT Engineer, System Engineer / System Analyst, Network Engineer / Computer Network Architect, Cybersecurity Professionals, รอบที่ 1 Portfolio แบบ 1.1: 2\nแบบ 1.2: 1 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.00\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) คณิตศาสตร์ ไม่น้อยกว่า 3.25\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ฟิสิกส์ ไม่น้อยกว่า 3.25\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 3.00\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.00\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) คณิตศาสตร์ ไม่น้อยกว่า 3.25\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ฟิสิกส์ ไม่น้อยกว่า 3.25\nมีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้\nIELTS 5.5\nIELTS indicator 5.5\nTOEFL PBT/ITP 500\nTOEFL CBT 173\nTOEFL iBT 46-59\nTOEIC 650\nSAT EBRW 430\nCMU TEGS 60\nCU-TEP 65\nTU-GET PBT 500\nTU-GET CBT 60\nDuolingo (DET) 95\nOxford Test of English (OTE)/ OTE Advanced 111\nPTE-Academic (overall) 40\nสำหรับหลักสูตรนานาชาติ\nเป็นผู้กำลังศึกษา หรือสำเร็จการศึกษาแล้ว ในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร\nต้องแนบ Letters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน\nสำหรับหลักสูตรการศึกษาตามอัธยาศัย (กศน.)\nเป็นผู้กำลังศึกษานอกระบบ/อัธยาศัย ระดับมัธยมศึกษาตอนปลาย\nเป็นผู้สำเร็จการศึกษานอกระบบ/อัธยาศัย ระดับมัธยมศึกษาตอนปลาย\nมีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้\nIELTS 5.5\nIELTS indicator 5.5\nTOEFL PBT/ITP 500\nTOEFL CBT 173\nTOEFL iBT 46-59\nTOEIC 650\nSAT EBRW 430\nCMU TEGS 60\nCU-TEP 65\nTU-GET PBT 500\nTU-GET CBT 60\nDuolingo (DET) 95\nOxford Test of English (OTE)/ OTE Advanced 111\nPTE-Academic (overall) 40\nสำหรับหลักสูตรเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลาง (เช่น GED)\nเป็นไปตามประกาศสมาคมที่ประชุมอธิการบดีฯ เรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา\nมีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้\nIELTS 5.5\nIELTS indicator 5.5\nTOEFL PBT/ITP 500\nTOEFL CBT 173\nTOEFL iBT 46-59\nTOEIC 650\nSAT EBRW 430\nCMU TEGS 60\nCU-TEP 65\nTU-GET PBT 500\nTU-GET CBT 60\nDuolingo (DET) 95\nOxford Test of English (OTE)/ OTE Advanced 111\nPTE-Academic (overall) 40\nเป็นผู้ที่ได้รับรางวัล\nเป็นผู้ที่ได้รับรางวัล (ระดับประเทศ) การแข่งขันโครงการพัฒนาโปรแกรมคอมพิวเตอร์แห่งประเทศไทย (NSC) หรือ\nเป็นผู้ที่ได้รับรางวัล (ระดับประเทศ) การประกวดโครงงานของนักวิทยาศาสตร์รุ่นเยาว์ สาขาวิชาวิทยาการคอมพิวเตอร์และวิศวกรรมคอมพิวเตอร์ (YDC.CS & YSC.EN) หรือโครงการอื่นที่เทียบเท่า หรือ\nเป็นนักเรียนจากโครงการคอมพิวเตอร์โอลิมปิกที่ผ่านเข้าค่าย 2 จากศูนย์ สอวน. ทั่วประเทศ หรือ\nเป็นผู้ที่ได้รับรางวัลจากการแข่งขันวิชาการในระดับเดียวกันตามดุลยพินิจของคณะกรรมการคัดเลือก โดยสามารถสอบถามข้อมูลการแข่งขันที่เทียบเท่า ทาง E-mail: cpe@eng.cmu.ac.th หรือทางโทรศัพท์ 053-942023\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nหลักฐานผลคะแนนที่ใช้คัดเลือก\nหลักฐานการชำระเงิน\nอื่น ๆ\nกรณีนักเรียนเป็นผู้กำลังศึกษา หรือสำเร็จการศึกษาแล้ว ในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร ต้องแนบเอกสารเพิ่มเติม ดังนี้\nLetters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 15 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 80 และ การสัมภาษณ์ ร้อยละ 20\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nประวัติส่วนตัวของนักเรียน\nผลคะแนนสอบภาษาอังกฤษอย่างใดอย่างหนึ่ง ตามที่โครงการกำหนด\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nเรียงความ ความยาวไม่เกิน 2 หน้า A4 จากหัวข้อที่กำหนดในเว็บไซต์ https://cmu.to/isne-tcas-essay\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบแสดงผลการเรียน (ปพ.1) ด้านหน้าและด้านหลัง\nกรณีนักเรียนเป็นผู้กำลังศึกษา หรือสำเร็จการศึกษาแล้ว ในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร ต้องแนบเอกสารเพิ่มเติม ดังนี้\nLetters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน\nหลักฐานผลคะแนนสอบภาษาอังกฤษอย่างใดอย่างหนึ่ง ตามที่โครงการกำหนด\nหมวดที่ 4 : กิจกรรม/รางวัล\nสรุปผลงานในระดับมัธยมศึกษาที่แสดงถึงความรู้ ความสามารถและทักษะของผู้สมัคร สิ่งประดิษฐ์ที่เกี่ยวข้องกับสาขาวิชา การเข้าร่วมกิจกรรมต่าง ๆ ทั้งในและนอกหลักสูตร รวมถึงรางวัลที่ผู้สมัครได้รับตามที่โครงการกำหนด พร้อมอธิบายรายละเอียดประกอบ โดยนักเรียนสามารถใส่รูปภาพในแต่ละหน้าได้ไม่เกิน 6 รูป\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nบัตรประจำตัวประชาชน\nคุณสมบัติเพิ่มเติมแบบ 1.2\nเกณฑ์ขั้นต่ำ\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ไม่น้อยกว่า 40 คะแนน\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTPAT 3 ความถนัดทางวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์ (รหัสวิชา 30) T-SCORE ไม่น้อยกว่า 45\nสัดส่วนที่ใช้ในการคัดเลือก\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ค่าน้ำหนักร้อยละ 76\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTGAT 1 การสื่อสารภาษาอังกฤษ (รหัสวิชา 91) ค่าน้ำหนักร้อยละ 4\nTGAT 2 การคิดอย่างมีเหตุผล (รหัสวิชา 92) ค่าน้ำหนักร้อยละ 4\nTGAT 3 สมรรถนะการทำงาน (รหัสวิชา 93) ค่าน้ำหนักร้อยละ 4\nTPAT 3 ความถนัดทางวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์ (รหัสวิชา 30) ค่าน้ำหนักร้อยละ 12\n0","variant_1_2_requirements":"เกณฑ์ขั้นต่ำ\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ไม่น้อยกว่า 40 คะแนน\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTPAT 3 ความถนัดทางวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์ (รหัสวิชา 30) T-SCORE ไม่น้อยกว่า 45\nสัดส่วนที่ใช้ในการคัดเลือก\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ค่าน้ำหนักร้อยละ 76\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTGAT 1 การสื่อสารภาษาอังกฤษ (รหัสวิชา 91) ค่าน้ำหนักร้อยละ 4\nTGAT 2 การคิดอย่างมีเหตุผล (รหัสวิชา 92) ค่าน้ำหนักร้อยละ 4\nTGAT 3 สมรรถนะการทำงาน (รหัสวิชา 93) ค่าน้ำหนักร้อยละ 4\nTPAT 3 ความถนัดทางวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์ (รหัสวิชา 30) ค่าน้ำหนักร้อยละ 12\n0"}'::jsonb, 'GPAX ≥ 3.00; Portfolio ไม่เกิน 15 หน้า; Portfolio 80% และสัมภาษณ์ 20%; แบบ 1.2 มีเกณฑ์ TGAT/TPAT เพิ่มตามประกาศ',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cyber'
where p.code = 'cmu-00410666108010-1-2'
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
    p.id, m.id, 3.0, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{"ภาษาอังกฤษ":3.5,"คณิตศาสตร์":3.25,"ฟิสิกส์":3.25}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.50","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) คณิตศาสตร์ ไม่น้อยกว่า 3.25","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ฟิสิกส์ ไม่น้อยกว่า 3.25","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 3.00","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.50","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) คณิตศาสตร์ ไม่น้อยกว่า 3.25","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ฟิสิกส์ ไม่น้อยกว่า 3.25","เป็นผู้ที่สามารถใช้ภาษาอังกฤษได้ดี","ผู้สมัครที่ไปศึกษาในโครงการแลกเปลี่ยน ณ ต่างประเทศในช่วงระยะเวลาหนึ่ง ให้คำนวณผลการเรียนเฉลี่ยสะสมเฉพาะภาคการศึกษาที่ได้ศึกษาในประเทศไทย ทั้งนี้ต้องส่งสำเนาเอกสารแสดงการไปศึกษาต่างประเทศ (พร้อมลงนามรับรองสำเนาถูกต้อง) และหนังสือรับรองจากโรงเรียนด้วย","มีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้","IELTS 6","IELTS indicator 6","TOEFL PBT/ITP 520","TOEFL CBT 190","TOEFL iBT 61","TOEIC 700","SAT EBRW 460","CMU TEGS 65","CU-TEP 73","TU-GET PBT 600","TU-GET CBT 68","Duolingo (DET) 105","Oxford Test of English (OTE)/ OTE Advanced 126","PTE-Academic (overall) 47","เป็นผู้กำลังศึกษา หรือสำเร็จการศึกษาแล้ว ในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร","ต้องแนบ Letters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน"]'::jsonb, 'Portfolio ไม่เกิน 15 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":15}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":80},{"name":"สัมภาษณ์","weight_percent":20}]'::jsonb, '{"official_project_code":"00410666108020","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00410666108020\nคณะวิศวกรรมศาสตร์ สาขา ระบบสารสนเทศและความมั่นคงปลอดภัยไซเบอร์ (นานาชาติ ช่องทาง TCAS)\nหลักสูตร นานาชาติ รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ โครงการพิเศษอื่นๆ (โครงการรับนักเรียนผู้มีความสามารถทางภาษาอังกฤษ )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 80,000 บาท\nแนวทางการประกอบอาชีพ\nInformation Systems Administrator, IT Consultant / IT Engineer, System Engineer / System Analyst, Network Engineer / Computer Network Architect, Cybersecurity Professionals, รอบที่ 1 Portfolio แบบ 1.1: 2\nแบบ 1.2: 1 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.50\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) คณิตศาสตร์ ไม่น้อยกว่า 3.25\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ฟิสิกส์ ไม่น้อยกว่า 3.25\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 3.00\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.50\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) คณิตศาสตร์ ไม่น้อยกว่า 3.25\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ฟิสิกส์ ไม่น้อยกว่า 3.25\nเป็นผู้ที่สามารถใช้ภาษาอังกฤษได้ดี\nผู้สมัครที่ไปศึกษาในโครงการแลกเปลี่ยน ณ ต่างประเทศในช่วงระยะเวลาหนึ่ง ให้คำนวณผลการเรียนเฉลี่ยสะสมเฉพาะภาคการศึกษาที่ได้ศึกษาในประเทศไทย ทั้งนี้ต้องส่งสำเนาเอกสารแสดงการไปศึกษาต่างประเทศ (พร้อมลงนามรับรองสำเนาถูกต้อง) และหนังสือรับรองจากโรงเรียนด้วย\nมีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้\nIELTS 6\nIELTS indicator 6\nTOEFL PBT/ITP 520\nTOEFL CBT 190\nTOEFL iBT 61\nTOEIC 700\nSAT EBRW 460\nCMU TEGS 65\nCU-TEP 73\nTU-GET PBT 600\nTU-GET CBT 68\nDuolingo (DET) 105\nOxford Test of English (OTE)/ OTE Advanced 126\nPTE-Academic (overall) 47\nสำหรับหลักสูตรนานาชาติ\nเป็นผู้กำลังศึกษา หรือสำเร็จการศึกษาแล้ว ในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร\nต้องแนบ Letters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nหลักฐานผลคะแนนที่ใช้คัดเลือก\nหลักฐานการชำระเงิน\nอื่น ๆ\nกรณีผู้สมัครไปศึกษาในโครงการแลกเปลี่ยน ณ ต่างประเทศ จะต้องแนบ\nสำเนาเอกสารแสดงการไปศึกษาต่างประเทศ\nหนังสือรับรองจากโรงเรียน\nอื่น ๆ\nกรณีนักเรียนเป็นผู้กำลังศึกษา หรือสำเร็จการศึกษาแล้ว ในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร ต้องแนบเอกสารเพิ่มเติม ดังนี้\nLetters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 15 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 80 และ การสัมภาษณ์ ร้อยละ 20\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nประวัติส่วนตัวของนักเรียน\nผลคะแนนสอบภาษาอังกฤษอย่างใดอย่างหนึ่ง ตามที่โครงการกำหนด\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nเรียงความ ความยาวไม่เกิน 2 หน้า A4 จากหัวข้อที่กำหนดในเว็บไซต์ https://cmu.to/isne-tcas-essay\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบแสดงผลการเรียน (ปพ.1) ด้านหน้าและด้านหลัง\nกรณีนักเรียนเป็นผู้กำลังศึกษา หรือสำเร็จการศึกษาแล้ว ในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร ต้องแนบเอกสารเพิ่มเติม ดังนี้\nLetters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน\nกรณีผู้สมัครไปศึกษาในโครงการแลกเปลี่ยน ณ ต่างประเทศ จะต้องแนบ\nสำเนาเอกสารแสดงการไปศึกษาต่างประเทศ\nหนังสือรับรองจากโรงเรียน\nหลักฐานผลคะแนนสอบภาษาอังกฤษอย่างใดอย่างหนึ่ง ตามที่โครงการกำหนด\nหมวดที่ 4 : กิจกรรม/รางวัล\nสรุปผลงานในระดับมัธยมศึกษาที่แสดงถึงความรู้ ความสามารถและทักษะของผู้สมัคร สิ่งประดิษฐ์ที่เกี่ยวข้องกับสาขาวิชา การเข้าร่วมกิจกรรมต่าง ๆ ทั้งในและนอกหลักสูตร รวมถึงรางวัลที่ผู้สมัครได้รับตามที่โครงการกำหนด พร้อมอธิบายรายละเอียดประกอบ โดยนักเรียนสามารถใส่รูปภาพในแต่ละหน้าได้ไม่เกิน 6 รูป\nวิดีโอแนะนำตนเอง ความยาวไม่เกิน 5 นาที โดยแนะนำตนเองและแสดงแนวคิดความตั้งใจในการเข้าศึกษาต่อเป็นภาษาอังกฤษ ให้ผู้สมัครอัปโหลดวิดีโอบนอินเทอร์เน็ต แล้วแนบลิงก์ในรูปแบบ URL และ QR code เพื่อเข้าถึงวิดีโอดังกล่าวมาใน Portfolio\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nบัตรประจำตัวประชาชน\nคุณสมบัติเพิ่มเติมแบบ 1.2\nเกณฑ์ขั้นต่ำ\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ไม่น้อยกว่า 40 คะแนน\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTPAT 3 ความถนัดทางวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์ (รหัสวิชา 30) T-SCORE ไม่น้อยกว่า 45\nสัดส่วนที่ใช้ในการคัดเลือก\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ค่าน้ำหนักร้อยละ 76\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTGAT 1 การสื่อสารภาษาอังกฤษ (รหัสวิชา 91) ค่าน้ำหนักร้อยละ 4\nTGAT 2 การคิดอย่างมีเหตุผล (รหัสวิชา 92) ค่าน้ำหนักร้อยละ 4\nTGAT 3 สมรรถนะการทำงาน (รหัสวิชา 93) ค่าน้ำหนักร้อยละ 4\nTPAT 3 ความถนัดทางวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์ (รหัสวิชา 30) ค่าน้ำหนักร้อยละ 12\n0"}'::jsonb, 'GPAX ≥ 3.00; Portfolio ไม่เกิน 15 หน้า; Portfolio 80% และสัมภาษณ์ 20%',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cyber'
where p.code = 'cmu-00410666108020-1-1'
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
    p.id, m.id, 3.0, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{"ภาษาอังกฤษ":3.5,"คณิตศาสตร์":3.25,"ฟิสิกส์":3.25}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.50","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) คณิตศาสตร์ ไม่น้อยกว่า 3.25","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ฟิสิกส์ ไม่น้อยกว่า 3.25","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 3.00","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.50","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) คณิตศาสตร์ ไม่น้อยกว่า 3.25","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ฟิสิกส์ ไม่น้อยกว่า 3.25","เป็นผู้ที่สามารถใช้ภาษาอังกฤษได้ดี","ผู้สมัครที่ไปศึกษาในโครงการแลกเปลี่ยน ณ ต่างประเทศในช่วงระยะเวลาหนึ่ง ให้คำนวณผลการเรียนเฉลี่ยสะสมเฉพาะภาคการศึกษาที่ได้ศึกษาในประเทศไทย ทั้งนี้ต้องส่งสำเนาเอกสารแสดงการไปศึกษาต่างประเทศ (พร้อมลงนามรับรองสำเนาถูกต้อง) และหนังสือรับรองจากโรงเรียนด้วย","มีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้","IELTS 6","IELTS indicator 6","TOEFL PBT/ITP 520","TOEFL CBT 190","TOEFL iBT 61","TOEIC 700","SAT EBRW 460","CMU TEGS 65","CU-TEP 73","TU-GET PBT 600","TU-GET CBT 68","Duolingo (DET) 105","Oxford Test of English (OTE)/ OTE Advanced 126","PTE-Academic (overall) 47","เป็นผู้กำลังศึกษา หรือสำเร็จการศึกษาแล้ว ในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร","ต้องแนบ Letters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน"]'::jsonb, 'Portfolio ไม่เกิน 15 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":15}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":80},{"name":"สัมภาษณ์","weight_percent":20},"TGAT/TPAT ตามเกณฑ์แบบ 1.2"]'::jsonb, '{"official_project_code":"00410666108020","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00410666108020\nคณะวิศวกรรมศาสตร์ สาขา ระบบสารสนเทศและความมั่นคงปลอดภัยไซเบอร์ (นานาชาติ ช่องทาง TCAS)\nหลักสูตร นานาชาติ รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ โครงการพิเศษอื่นๆ (โครงการรับนักเรียนผู้มีความสามารถทางภาษาอังกฤษ )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 80,000 บาท\nแนวทางการประกอบอาชีพ\nInformation Systems Administrator, IT Consultant / IT Engineer, System Engineer / System Analyst, Network Engineer / Computer Network Architect, Cybersecurity Professionals, รอบที่ 1 Portfolio แบบ 1.1: 2\nแบบ 1.2: 1 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.50\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) คณิตศาสตร์ ไม่น้อยกว่า 3.25\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ฟิสิกส์ ไม่น้อยกว่า 3.25\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 3.00\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.50\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) คณิตศาสตร์ ไม่น้อยกว่า 3.25\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ฟิสิกส์ ไม่น้อยกว่า 3.25\nเป็นผู้ที่สามารถใช้ภาษาอังกฤษได้ดี\nผู้สมัครที่ไปศึกษาในโครงการแลกเปลี่ยน ณ ต่างประเทศในช่วงระยะเวลาหนึ่ง ให้คำนวณผลการเรียนเฉลี่ยสะสมเฉพาะภาคการศึกษาที่ได้ศึกษาในประเทศไทย ทั้งนี้ต้องส่งสำเนาเอกสารแสดงการไปศึกษาต่างประเทศ (พร้อมลงนามรับรองสำเนาถูกต้อง) และหนังสือรับรองจากโรงเรียนด้วย\nมีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้\nIELTS 6\nIELTS indicator 6\nTOEFL PBT/ITP 520\nTOEFL CBT 190\nTOEFL iBT 61\nTOEIC 700\nSAT EBRW 460\nCMU TEGS 65\nCU-TEP 73\nTU-GET PBT 600\nTU-GET CBT 68\nDuolingo (DET) 105\nOxford Test of English (OTE)/ OTE Advanced 126\nPTE-Academic (overall) 47\nสำหรับหลักสูตรนานาชาติ\nเป็นผู้กำลังศึกษา หรือสำเร็จการศึกษาแล้ว ในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร\nต้องแนบ Letters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nหลักฐานผลคะแนนที่ใช้คัดเลือก\nหลักฐานการชำระเงิน\nอื่น ๆ\nกรณีผู้สมัครไปศึกษาในโครงการแลกเปลี่ยน ณ ต่างประเทศ จะต้องแนบ\nสำเนาเอกสารแสดงการไปศึกษาต่างประเทศ\nหนังสือรับรองจากโรงเรียน\nอื่น ๆ\nกรณีนักเรียนเป็นผู้กำลังศึกษา หรือสำเร็จการศึกษาแล้ว ในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร ต้องแนบเอกสารเพิ่มเติม ดังนี้\nLetters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 15 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 80 และ การสัมภาษณ์ ร้อยละ 20\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nประวัติส่วนตัวของนักเรียน\nผลคะแนนสอบภาษาอังกฤษอย่างใดอย่างหนึ่ง ตามที่โครงการกำหนด\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nเรียงความ ความยาวไม่เกิน 2 หน้า A4 จากหัวข้อที่กำหนดในเว็บไซต์ https://cmu.to/isne-tcas-essay\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบแสดงผลการเรียน (ปพ.1) ด้านหน้าและด้านหลัง\nกรณีนักเรียนเป็นผู้กำลังศึกษา หรือสำเร็จการศึกษาแล้ว ในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร ต้องแนบเอกสารเพิ่มเติม ดังนี้\nLetters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน\nกรณีผู้สมัครไปศึกษาในโครงการแลกเปลี่ยน ณ ต่างประเทศ จะต้องแนบ\nสำเนาเอกสารแสดงการไปศึกษาต่างประเทศ\nหนังสือรับรองจากโรงเรียน\nหลักฐานผลคะแนนสอบภาษาอังกฤษอย่างใดอย่างหนึ่ง ตามที่โครงการกำหนด\nหมวดที่ 4 : กิจกรรม/รางวัล\nสรุปผลงานในระดับมัธยมศึกษาที่แสดงถึงความรู้ ความสามารถและทักษะของผู้สมัคร สิ่งประดิษฐ์ที่เกี่ยวข้องกับสาขาวิชา การเข้าร่วมกิจกรรมต่าง ๆ ทั้งในและนอกหลักสูตร รวมถึงรางวัลที่ผู้สมัครได้รับตามที่โครงการกำหนด พร้อมอธิบายรายละเอียดประกอบ โดยนักเรียนสามารถใส่รูปภาพในแต่ละหน้าได้ไม่เกิน 6 รูป\nวิดีโอแนะนำตนเอง ความยาวไม่เกิน 5 นาที โดยแนะนำตนเองและแสดงแนวคิดความตั้งใจในการเข้าศึกษาต่อเป็นภาษาอังกฤษ ให้ผู้สมัครอัปโหลดวิดีโอบนอินเทอร์เน็ต แล้วแนบลิงก์ในรูปแบบ URL และ QR code เพื่อเข้าถึงวิดีโอดังกล่าวมาใน Portfolio\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nบัตรประจำตัวประชาชน\nคุณสมบัติเพิ่มเติมแบบ 1.2\nเกณฑ์ขั้นต่ำ\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ไม่น้อยกว่า 40 คะแนน\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTPAT 3 ความถนัดทางวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์ (รหัสวิชา 30) T-SCORE ไม่น้อยกว่า 45\nสัดส่วนที่ใช้ในการคัดเลือก\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ค่าน้ำหนักร้อยละ 76\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTGAT 1 การสื่อสารภาษาอังกฤษ (รหัสวิชา 91) ค่าน้ำหนักร้อยละ 4\nTGAT 2 การคิดอย่างมีเหตุผล (รหัสวิชา 92) ค่าน้ำหนักร้อยละ 4\nTGAT 3 สมรรถนะการทำงาน (รหัสวิชา 93) ค่าน้ำหนักร้อยละ 4\nTPAT 3 ความถนัดทางวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์ (รหัสวิชา 30) ค่าน้ำหนักร้อยละ 12\n0","variant_1_2_requirements":"เกณฑ์ขั้นต่ำ\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ไม่น้อยกว่า 40 คะแนน\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTPAT 3 ความถนัดทางวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์ (รหัสวิชา 30) T-SCORE ไม่น้อยกว่า 45\nสัดส่วนที่ใช้ในการคัดเลือก\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ค่าน้ำหนักร้อยละ 76\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTGAT 1 การสื่อสารภาษาอังกฤษ (รหัสวิชา 91) ค่าน้ำหนักร้อยละ 4\nTGAT 2 การคิดอย่างมีเหตุผล (รหัสวิชา 92) ค่าน้ำหนักร้อยละ 4\nTGAT 3 สมรรถนะการทำงาน (รหัสวิชา 93) ค่าน้ำหนักร้อยละ 4\nTPAT 3 ความถนัดทางวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์ (รหัสวิชา 30) ค่าน้ำหนักร้อยละ 12\n0"}'::jsonb, 'GPAX ≥ 3.00; Portfolio ไม่เกิน 15 หน้า; Portfolio 80% และสัมภาษณ์ 20%; แบบ 1.2 มีเกณฑ์ TGAT/TPAT เพิ่มตามประกาศ',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cyber'
where p.code = 'cmu-00410666108020-1-2'
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
    p.id, m.id, 3.0, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{"ภาษาอังกฤษ":3.0,"คณิตศาสตร์":3.25,"ฟิสิกส์":3.25}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.00","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) คณิตศาสตร์ ไม่น้อยกว่า 3.25","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ฟิสิกส์ ไม่น้อยกว่า 3.25","มีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้","IELTS 5.5","IELTS indicator 5.5","TOEFL PBT/ITP 500","TOEFL CBT 173","TOEFL iBT 46-59","TOEIC 650","SAT EBRW 430","CMU TEGS 60","CU-TEP 65","TU-GET PBT 500","TU-GET CBT 60","Duolingo (DET) 95","Oxford Test of English (OTE)/ OTE Advanced 111","PTE-Academic (overall) 40","เป็นผู้กำลังศึกษาในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร","ต้องแนบ Letters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน"]'::jsonb, 'Portfolio ไม่เกิน 15 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":15}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":80},{"name":"สัมภาษณ์","weight_percent":20}]'::jsonb, '{"official_project_code":"00410666108030","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00410666108030\nคณะวิศวกรรมศาสตร์ สาขา ระบบสารสนเทศและความมั่นคงปลอดภัยไซเบอร์ (นานาชาติ ช่องทาง TCAS)\nหลักสูตร นานาชาติ รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ โครงการพิเศษอื่นๆ (โครงการรับนักเรียนผู้มีผลการเรียนดีเด่น )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 80,000 บาท\nแนวทางการประกอบอาชีพ\nInformation Systems Administrator, IT Consultant / IT Engineer, System Engineer / System Analyst, Network Engineer / Computer Network Architect, Cybersecurity Professionals, รอบที่ 1 Portfolio แบบ 1.1: 2\nแบบ 1.2: 1 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.00\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) คณิตศาสตร์ ไม่น้อยกว่า 3.25\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ฟิสิกส์ ไม่น้อยกว่า 3.25\nมีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้\nIELTS 5.5\nIELTS indicator 5.5\nTOEFL PBT/ITP 500\nTOEFL CBT 173\nTOEFL iBT 46-59\nTOEIC 650\nSAT EBRW 430\nCMU TEGS 60\nCU-TEP 65\nTU-GET PBT 500\nTU-GET CBT 60\nDuolingo (DET) 95\nOxford Test of English (OTE)/ OTE Advanced 111\nPTE-Academic (overall) 40\nสำหรับหลักสูตรนานาชาติ\nเป็นผู้กำลังศึกษาในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร\nต้องแนบ Letters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nหลักฐานผลคะแนนที่ใช้คัดเลือก\nหลักฐานการชำระเงิน\nอื่น ๆ\nกรณีนักเรียนเป็นผู้กำลังศึกษาในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร ต้องแนบเอกสารเพิ่มเติม ดังนี้\nLetters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 15 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 80 และ การสัมภาษณ์ ร้อยละ 20\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nประวัติส่วนตัวของนักเรียน\nผลคะแนนสอบภาษาอังกฤษอย่างใดอย่างหนึ่ง ตามที่โครงการกำหนด\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nเรียงความ ความยาวไม่เกิน 2 หน้า A4 จากหัวข้อที่กำหนดในเว็บไซต์ https://cmu.to/isne-tcas-essay\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบแสดงผลการเรียน (ปพ.1) ด้านหน้าและด้านหลัง\nกรณีเรียนหลักสูตรนานาชาติในระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร ต้องแนบเอกสารเพิ่มเติม ดังนี้\nLetters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน\nหลักฐานผลคะแนนสอบภาษาอังกฤษอย่างใดอย่างหนึ่ง ตามที่โครงการกำหนด\nหมวดที่ 4 : กิจกรรม/รางวัล\nสรุปผลงานในระดับมัธยมศึกษาที่แสดงถึงความรู้ ความสามารถและทักษะของผู้สมัคร สิ่งประดิษฐ์ที่เกี่ยวข้องกับสาขาวิชา การเข้าร่วมกิจกรรมต่าง ๆ ทั้งในและนอกหลักสูตร รวมถึงรางวัลที่ผู้สมัครได้รับตามที่โครงการกำหนด พร้อมอธิบายรายละเอียดประกอบ โดยนักเรียนสามารถใส่รูปภาพในแต่ละหน้าได้ไม่เกิน 6 รูป\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nบัตรประจำตัวประชาชน\nคุณสมบัติเพิ่มเติมแบบ 1.2\nเกณฑ์ขั้นต่ำ\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ไม่น้อยกว่า 40 คะแนน\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTPAT 3 ความถนัดทางวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์ (รหัสวิชา 30) T-SCORE ไม่น้อยกว่า 45\nสัดส่วนที่ใช้ในการคัดเลือก\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ค่าน้ำหนักร้อยละ 76\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTGAT 1 การสื่อสารภาษาอังกฤษ (รหัสวิชา 91) ค่าน้ำหนักร้อยละ 4\nTGAT 2 การคิดอย่างมีเหตุผล (รหัสวิชา 92) ค่าน้ำหนักร้อยละ 4\nTGAT 3 สมรรถนะการทำงาน (รหัสวิชา 93) ค่าน้ำหนักร้อยละ 4\nTPAT 3 ความถนัดทางวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์ (รหัสวิชา 30) ค่าน้ำหนักร้อยละ 12\n0"}'::jsonb, 'GPAX ≥ 3.00; Portfolio ไม่เกิน 15 หน้า; Portfolio 80% และสัมภาษณ์ 20%',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cyber'
where p.code = 'cmu-00410666108030-1-1'
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
    p.id, m.id, 3.0, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{"ภาษาอังกฤษ":3.0,"คณิตศาสตร์":3.25,"ฟิสิกส์":3.25}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.00","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) คณิตศาสตร์ ไม่น้อยกว่า 3.25","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ฟิสิกส์ ไม่น้อยกว่า 3.25","มีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้","IELTS 5.5","IELTS indicator 5.5","TOEFL PBT/ITP 500","TOEFL CBT 173","TOEFL iBT 46-59","TOEIC 650","SAT EBRW 430","CMU TEGS 60","CU-TEP 65","TU-GET PBT 500","TU-GET CBT 60","Duolingo (DET) 95","Oxford Test of English (OTE)/ OTE Advanced 111","PTE-Academic (overall) 40","เป็นผู้กำลังศึกษาในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร","ต้องแนบ Letters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน"]'::jsonb, 'Portfolio ไม่เกิน 15 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":15}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":80},{"name":"สัมภาษณ์","weight_percent":20},"TGAT/TPAT ตามเกณฑ์แบบ 1.2"]'::jsonb, '{"official_project_code":"00410666108030","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00410666108030\nคณะวิศวกรรมศาสตร์ สาขา ระบบสารสนเทศและความมั่นคงปลอดภัยไซเบอร์ (นานาชาติ ช่องทาง TCAS)\nหลักสูตร นานาชาติ รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ โครงการพิเศษอื่นๆ (โครงการรับนักเรียนผู้มีผลการเรียนดีเด่น )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 80,000 บาท\nแนวทางการประกอบอาชีพ\nInformation Systems Administrator, IT Consultant / IT Engineer, System Engineer / System Analyst, Network Engineer / Computer Network Architect, Cybersecurity Professionals, รอบที่ 1 Portfolio แบบ 1.1: 2\nแบบ 1.2: 1 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.00\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) คณิตศาสตร์ ไม่น้อยกว่า 3.25\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ฟิสิกส์ ไม่น้อยกว่า 3.25\nมีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้\nIELTS 5.5\nIELTS indicator 5.5\nTOEFL PBT/ITP 500\nTOEFL CBT 173\nTOEFL iBT 46-59\nTOEIC 650\nSAT EBRW 430\nCMU TEGS 60\nCU-TEP 65\nTU-GET PBT 500\nTU-GET CBT 60\nDuolingo (DET) 95\nOxford Test of English (OTE)/ OTE Advanced 111\nPTE-Academic (overall) 40\nสำหรับหลักสูตรนานาชาติ\nเป็นผู้กำลังศึกษาในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร\nต้องแนบ Letters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nหลักฐานผลคะแนนที่ใช้คัดเลือก\nหลักฐานการชำระเงิน\nอื่น ๆ\nกรณีนักเรียนเป็นผู้กำลังศึกษาในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร ต้องแนบเอกสารเพิ่มเติม ดังนี้\nLetters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 15 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 80 และ การสัมภาษณ์ ร้อยละ 20\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nประวัติส่วนตัวของนักเรียน\nผลคะแนนสอบภาษาอังกฤษอย่างใดอย่างหนึ่ง ตามที่โครงการกำหนด\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nเรียงความ ความยาวไม่เกิน 2 หน้า A4 จากหัวข้อที่กำหนดในเว็บไซต์ https://cmu.to/isne-tcas-essay\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบแสดงผลการเรียน (ปพ.1) ด้านหน้าและด้านหลัง\nกรณีเรียนหลักสูตรนานาชาติในระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร ต้องแนบเอกสารเพิ่มเติม ดังนี้\nLetters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน\nหลักฐานผลคะแนนสอบภาษาอังกฤษอย่างใดอย่างหนึ่ง ตามที่โครงการกำหนด\nหมวดที่ 4 : กิจกรรม/รางวัล\nสรุปผลงานในระดับมัธยมศึกษาที่แสดงถึงความรู้ ความสามารถและทักษะของผู้สมัคร สิ่งประดิษฐ์ที่เกี่ยวข้องกับสาขาวิชา การเข้าร่วมกิจกรรมต่าง ๆ ทั้งในและนอกหลักสูตร รวมถึงรางวัลที่ผู้สมัครได้รับตามที่โครงการกำหนด พร้อมอธิบายรายละเอียดประกอบ โดยนักเรียนสามารถใส่รูปภาพในแต่ละหน้าได้ไม่เกิน 6 รูป\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nบัตรประจำตัวประชาชน\nคุณสมบัติเพิ่มเติมแบบ 1.2\nเกณฑ์ขั้นต่ำ\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ไม่น้อยกว่า 40 คะแนน\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTPAT 3 ความถนัดทางวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์ (รหัสวิชา 30) T-SCORE ไม่น้อยกว่า 45\nสัดส่วนที่ใช้ในการคัดเลือก\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ค่าน้ำหนักร้อยละ 76\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTGAT 1 การสื่อสารภาษาอังกฤษ (รหัสวิชา 91) ค่าน้ำหนักร้อยละ 4\nTGAT 2 การคิดอย่างมีเหตุผล (รหัสวิชา 92) ค่าน้ำหนักร้อยละ 4\nTGAT 3 สมรรถนะการทำงาน (รหัสวิชา 93) ค่าน้ำหนักร้อยละ 4\nTPAT 3 ความถนัดทางวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์ (รหัสวิชา 30) ค่าน้ำหนักร้อยละ 12\n0","variant_1_2_requirements":"เกณฑ์ขั้นต่ำ\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ไม่น้อยกว่า 40 คะแนน\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTPAT 3 ความถนัดทางวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์ (รหัสวิชา 30) T-SCORE ไม่น้อยกว่า 45\nสัดส่วนที่ใช้ในการคัดเลือก\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ค่าน้ำหนักร้อยละ 76\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTGAT 1 การสื่อสารภาษาอังกฤษ (รหัสวิชา 91) ค่าน้ำหนักร้อยละ 4\nTGAT 2 การคิดอย่างมีเหตุผล (รหัสวิชา 92) ค่าน้ำหนักร้อยละ 4\nTGAT 3 สมรรถนะการทำงาน (รหัสวิชา 93) ค่าน้ำหนักร้อยละ 4\nTPAT 3 ความถนัดทางวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์ (รหัสวิชา 30) ค่าน้ำหนักร้อยละ 12\n0"}'::jsonb, 'GPAX ≥ 3.00; Portfolio ไม่เกิน 15 หน้า; Portfolio 80% และสัมภาษณ์ 20%; แบบ 1.2 มีเกณฑ์ TGAT/TPAT เพิ่มตามประกาศ',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cyber'
where p.code = 'cmu-00410666108030-1-2'
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
    p.id, m.id, 3.0, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{"ภาษาอังกฤษ":3.0,"คณิตศาสตร์":3.25,"ฟิสิกส์":3.25}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.00","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) คณิตศาสตร์ ไม่น้อยกว่า 3.25","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ฟิสิกส์ ไม่น้อยกว่า 3.25","รับเฉพาะแผนการเรียนวิทยาศาสตร์-คณิตศาสตร์หรือเทียบเท่า","มีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้","IELTS 5.5","IELTS indicator 5.5","TOEFL PBT/ITP 500","TOEFL CBT 173","TOEFL iBT 46-59","TOEIC 650","SAT EBRW 430","CMU TEGS 60","CU-TEP 65","TU-GET PBT 500","TU-GET CBT 60","Duolingo (DET) 95","Oxford Test of English (OTE)/ OTE Advanced 111","PTE-Academic (overall) 40","เป็นผู้กำลังศึกษาในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลายในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร","ต้องแนบ Letters of recommendation ที่เขียนเป็นภาษาอังกฤษ โดยอาจารย์ผู้สอน จำนวน 2 ท่าน","สำหรับหลักสูตรการศึกษาตามอัธยาศัย (กศน.)","เป็นผู้กำลังศึกษานอกระบบ/อัธยาศัย ระดับมัธยมศึกษาตอนปลาย","มีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้","IELTS 5.5","IELTS indicator 5.5","TOEFL PBT/ITP 500","TOEFL CBT 173","TOEFL iBT 46-59","TOEIC 650","SAT EBRW 430","CMU TEGS 60","CU-TEP 65","TU-GET PBT 500","TU-GET CBT 60","Duolingo (DET) 95","Oxford Test of English (OTE)/ OTE Advanced 111","PTE-Academic (overall) 40","มีผลงานในระดับมัธยมศึกษาที่แสดงถึงความรู้ ความสามารถและทักษะของผู้สมัคร สิ่งประดิษฐ์ที่เกี่ยวข้องกับสาขาวิชา การเข้าร่วมกิจกรรมต่าง ๆ ทั้งในและนอกหลักสูตร รวมถึงรางวัลที่ผู้สมัครได้รับตามที่โครงการกำหนด พร้อมอธิบายรายละเอียดประกอบ","มีเรียงความ ตามหัวข้อที่กำหนดในเว็บไซต์ https://cmu.to/isne-tcas-essay","เป็นนักเรียนเพศหญิง"]'::jsonb, 'Portfolio ไม่เกิน 15 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":15}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":80},{"name":"สัมภาษณ์","weight_percent":20}]'::jsonb, '{"official_project_code":"00410666108041","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00410666108041\nคณะวิศวกรรมศาสตร์ สาขา ระบบสารสนเทศและความมั่นคงปลอดภัยไซเบอร์ (นานาชาติ ช่องทาง TCAS)\nหลักสูตร นานาชาติ รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ โครงการพิเศษอื่นๆ (โครงการ Women in Engineering )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 80,000 บาท\nแนวทางการประกอบอาชีพ\nInformation Systems Administrator, IT Consultant / IT Engineer, System Engineer / System Analyst, Network Engineer / Computer Network Architect, Cybersecurity Professionals, รอบที่ 1 Portfolio แบบ 1.1: 2\nแบบ 1.2: 1 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.00\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) คณิตศาสตร์ ไม่น้อยกว่า 3.25\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ฟิสิกส์ ไม่น้อยกว่า 3.25\nรับเฉพาะแผนการเรียนวิทยาศาสตร์-คณิตศาสตร์หรือเทียบเท่า\nมีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้\nIELTS 5.5\nIELTS indicator 5.5\nTOEFL PBT/ITP 500\nTOEFL CBT 173\nTOEFL iBT 46-59\nTOEIC 650\nSAT EBRW 430\nCMU TEGS 60\nCU-TEP 65\nTU-GET PBT 500\nTU-GET CBT 60\nDuolingo (DET) 95\nOxford Test of English (OTE)/ OTE Advanced 111\nPTE-Academic (overall) 40\nสำหรับหลักสูตรนานาชาติ\nเป็นผู้กำลังศึกษาในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลายในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร\nต้องแนบ Letters of recommendation ที่เขียนเป็นภาษาอังกฤษ โดยอาจารย์ผู้สอน จำนวน 2 ท่าน\nสำหรับหลักสูตรการศึกษาตามอัธยาศัย (กศน.)\nเป็นผู้กำลังศึกษานอกระบบ/อัธยาศัย ระดับมัธยมศึกษาตอนปลาย\nมีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้\nIELTS 5.5\nIELTS indicator 5.5\nTOEFL PBT/ITP 500\nTOEFL CBT 173\nTOEFL iBT 46-59\nTOEIC 650\nSAT EBRW 430\nCMU TEGS 60\nCU-TEP 65\nTU-GET PBT 500\nTU-GET CBT 60\nDuolingo (DET) 95\nOxford Test of English (OTE)/ OTE Advanced 111\nPTE-Academic (overall) 40\nมีผลงานในระดับมัธยมศึกษาที่แสดงถึงความรู้ ความสามารถและทักษะของผู้สมัคร สิ่งประดิษฐ์ที่เกี่ยวข้องกับสาขาวิชา การเข้าร่วมกิจกรรมต่าง ๆ ทั้งในและนอกหลักสูตร รวมถึงรางวัลที่ผู้สมัครได้รับตามที่โครงการกำหนด พร้อมอธิบายรายละเอียดประกอบ\nมีเรียงความ ตามหัวข้อที่กำหนดในเว็บไซต์ https://cmu.to/isne-tcas-essay\nเป็นนักเรียนเพศหญิง\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nหลักฐานผลคะแนนที่ใช้คัดเลือก\nหลักฐานการชำระเงิน\nอื่น ๆ\nกรณีนักเรียนเป็นผู้กำลังศึกษาในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร ต้องแนบเอกสารเพิ่มเติม ดังนี้\nLetters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 15 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 80 และ การสัมภาษณ์ ร้อยละ 20\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nประวัติส่วนตัวของนักเรียน\nผลคะแนนสอบภาษาอังกฤษอย่างใดอย่างหนึ่ง ตามที่โครงการกำหนด\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nเรียงความ ความยาวไม่เกิน 2 หน้า A4 จากหัวข้อที่กำหนดในเว็บไซต์ https://cmu.to/isne-tcas-essay\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบแสดงผลการเรียน (ปพ.1) ด้านหน้าและด้านหลัง\nกรณีเรียนหลักสูตรนานาชาติในระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร ต้องแนบเอกสารเพิ่มเติม ดังนี้\nLetters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน\nหลักฐานผลคะแนนสอบภาษาอังกฤษอย่างใดอย่างหนึ่ง ตามที่โครงการกำหนด\nหมวดที่ 4 : กิจกรรม/รางวัล\nสรุปผลงานในระดับมัธยมศึกษาที่แสดงถึงความรู้ ความสามารถและทักษะของผู้สมัคร สิ่งประดิษฐ์ที่เกี่ยวข้องกับสาขาวิชา การเข้าร่วมกิจกรรมต่าง ๆ ทั้งในและนอกหลักสูตร รวมถึงรางวัลที่ผู้สมัครได้รับตามที่โครงการกำหนด พร้อมอธิบายรายละเอียดประกอบ โดยนักเรียนสามารถใส่รูปภาพในแต่ละหน้าได้ไม่เกิน 6 รูป\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nบัตรประจำตัวประชาชน\nคุณสมบัติเพิ่มเติมแบบ 1.2\nเกณฑ์ขั้นต่ำ\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ไม่น้อยกว่า 40 คะแนน\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTPAT 3 ความถนัดทางวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์ (รหัสวิชา 30) T-SCORE ไม่น้อยกว่า 45\nสัดส่วนที่ใช้ในการคัดเลือก\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ค่าน้ำหนักร้อยละ 76\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTGAT 1 การสื่อสารภาษาอังกฤษ (รหัสวิชา 91) ค่าน้ำหนักร้อยละ 4\nTGAT 2 การคิดอย่างมีเหตุผล (รหัสวิชา 92) ค่าน้ำหนักร้อยละ 4\nTGAT 3 สมรรถนะการทำงาน (รหัสวิชา 93) ค่าน้ำหนักร้อยละ 4\nTPAT 3 ความถนัดทางวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์ (รหัสวิชา 30) ค่าน้ำหนักร้อยละ 12\n0"}'::jsonb, 'GPAX ≥ 3.00; Portfolio ไม่เกิน 15 หน้า; Portfolio 80% และสัมภาษณ์ 20%',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cyber'
where p.code = 'cmu-00410666108041-1-1'
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
    p.id, m.id, 3.0, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{"ภาษาอังกฤษ":3.0,"คณิตศาสตร์":3.25,"ฟิสิกส์":3.25}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.00","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) คณิตศาสตร์ ไม่น้อยกว่า 3.25","เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ฟิสิกส์ ไม่น้อยกว่า 3.25","รับเฉพาะแผนการเรียนวิทยาศาสตร์-คณิตศาสตร์หรือเทียบเท่า","มีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้","IELTS 5.5","IELTS indicator 5.5","TOEFL PBT/ITP 500","TOEFL CBT 173","TOEFL iBT 46-59","TOEIC 650","SAT EBRW 430","CMU TEGS 60","CU-TEP 65","TU-GET PBT 500","TU-GET CBT 60","Duolingo (DET) 95","Oxford Test of English (OTE)/ OTE Advanced 111","PTE-Academic (overall) 40","เป็นผู้กำลังศึกษาในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลายในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร","ต้องแนบ Letters of recommendation ที่เขียนเป็นภาษาอังกฤษ โดยอาจารย์ผู้สอน จำนวน 2 ท่าน","สำหรับหลักสูตรการศึกษาตามอัธยาศัย (กศน.)","เป็นผู้กำลังศึกษานอกระบบ/อัธยาศัย ระดับมัธยมศึกษาตอนปลาย","มีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้","IELTS 5.5","IELTS indicator 5.5","TOEFL PBT/ITP 500","TOEFL CBT 173","TOEFL iBT 46-59","TOEIC 650","SAT EBRW 430","CMU TEGS 60","CU-TEP 65","TU-GET PBT 500","TU-GET CBT 60","Duolingo (DET) 95","Oxford Test of English (OTE)/ OTE Advanced 111","PTE-Academic (overall) 40","มีผลงานในระดับมัธยมศึกษาที่แสดงถึงความรู้ ความสามารถและทักษะของผู้สมัคร สิ่งประดิษฐ์ที่เกี่ยวข้องกับสาขาวิชา การเข้าร่วมกิจกรรมต่าง ๆ ทั้งในและนอกหลักสูตร รวมถึงรางวัลที่ผู้สมัครได้รับตามที่โครงการกำหนด พร้อมอธิบายรายละเอียดประกอบ","มีเรียงความ ตามหัวข้อที่กำหนดในเว็บไซต์ https://cmu.to/isne-tcas-essay","เป็นนักเรียนเพศหญิง"]'::jsonb, 'Portfolio ไม่เกิน 15 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":15}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":80},{"name":"สัมภาษณ์","weight_percent":20},"TGAT/TPAT ตามเกณฑ์แบบ 1.2"]'::jsonb, '{"official_project_code":"00410666108041","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00410666108041\nคณะวิศวกรรมศาสตร์ สาขา ระบบสารสนเทศและความมั่นคงปลอดภัยไซเบอร์ (นานาชาติ ช่องทาง TCAS)\nหลักสูตร นานาชาติ รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ โครงการพิเศษอื่นๆ (โครงการ Women in Engineering )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 80,000 บาท\nแนวทางการประกอบอาชีพ\nInformation Systems Administrator, IT Consultant / IT Engineer, System Engineer / System Analyst, Network Engineer / Computer Network Architect, Cybersecurity Professionals, รอบที่ 1 Portfolio แบบ 1.1: 2\nแบบ 1.2: 1 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.00\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) คณิตศาสตร์ ไม่น้อยกว่า 3.25\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ฟิสิกส์ ไม่น้อยกว่า 3.25\nรับเฉพาะแผนการเรียนวิทยาศาสตร์-คณิตศาสตร์หรือเทียบเท่า\nมีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้\nIELTS 5.5\nIELTS indicator 5.5\nTOEFL PBT/ITP 500\nTOEFL CBT 173\nTOEFL iBT 46-59\nTOEIC 650\nSAT EBRW 430\nCMU TEGS 60\nCU-TEP 65\nTU-GET PBT 500\nTU-GET CBT 60\nDuolingo (DET) 95\nOxford Test of English (OTE)/ OTE Advanced 111\nPTE-Academic (overall) 40\nสำหรับหลักสูตรนานาชาติ\nเป็นผู้กำลังศึกษาในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลายในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร\nต้องแนบ Letters of recommendation ที่เขียนเป็นภาษาอังกฤษ โดยอาจารย์ผู้สอน จำนวน 2 ท่าน\nสำหรับหลักสูตรการศึกษาตามอัธยาศัย (กศน.)\nเป็นผู้กำลังศึกษานอกระบบ/อัธยาศัย ระดับมัธยมศึกษาตอนปลาย\nมีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้\nIELTS 5.5\nIELTS indicator 5.5\nTOEFL PBT/ITP 500\nTOEFL CBT 173\nTOEFL iBT 46-59\nTOEIC 650\nSAT EBRW 430\nCMU TEGS 60\nCU-TEP 65\nTU-GET PBT 500\nTU-GET CBT 60\nDuolingo (DET) 95\nOxford Test of English (OTE)/ OTE Advanced 111\nPTE-Academic (overall) 40\nมีผลงานในระดับมัธยมศึกษาที่แสดงถึงความรู้ ความสามารถและทักษะของผู้สมัคร สิ่งประดิษฐ์ที่เกี่ยวข้องกับสาขาวิชา การเข้าร่วมกิจกรรมต่าง ๆ ทั้งในและนอกหลักสูตร รวมถึงรางวัลที่ผู้สมัครได้รับตามที่โครงการกำหนด พร้อมอธิบายรายละเอียดประกอบ\nมีเรียงความ ตามหัวข้อที่กำหนดในเว็บไซต์ https://cmu.to/isne-tcas-essay\nเป็นนักเรียนเพศหญิง\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nหลักฐานผลคะแนนที่ใช้คัดเลือก\nหลักฐานการชำระเงิน\nอื่น ๆ\nกรณีนักเรียนเป็นผู้กำลังศึกษาในหลักสูตรนานาชาติระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร ต้องแนบเอกสารเพิ่มเติม ดังนี้\nLetters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 15 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 80 และ การสัมภาษณ์ ร้อยละ 20\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nประวัติส่วนตัวของนักเรียน\nผลคะแนนสอบภาษาอังกฤษอย่างใดอย่างหนึ่ง ตามที่โครงการกำหนด\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nเรียงความ ความยาวไม่เกิน 2 หน้า A4 จากหัวข้อที่กำหนดในเว็บไซต์ https://cmu.to/isne-tcas-essay\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบแสดงผลการเรียน (ปพ.1) ด้านหน้าและด้านหลัง\nกรณีเรียนหลักสูตรนานาชาติในระดับเทียบเท่ามัธยมศึกษาตอนปลาย ในประเทศไทยหรือต่างประเทศ โดยใช้ภาษาอังกฤษสื่อสารเป็นหลักในหลักสูตร ต้องแนบเอกสารเพิ่มเติม ดังนี้\nLetters of recommendation ที่เขียนเป็นภาษาอังกฤษโดยอาจารย์ผู้สอน จำนวน 2 ท่าน\nหลักฐานผลคะแนนสอบภาษาอังกฤษอย่างใดอย่างหนึ่ง ตามที่โครงการกำหนด\nหมวดที่ 4 : กิจกรรม/รางวัล\nสรุปผลงานในระดับมัธยมศึกษาที่แสดงถึงความรู้ ความสามารถและทักษะของผู้สมัคร สิ่งประดิษฐ์ที่เกี่ยวข้องกับสาขาวิชา การเข้าร่วมกิจกรรมต่าง ๆ ทั้งในและนอกหลักสูตร รวมถึงรางวัลที่ผู้สมัครได้รับตามที่โครงการกำหนด พร้อมอธิบายรายละเอียดประกอบ โดยนักเรียนสามารถใส่รูปภาพในแต่ละหน้าได้ไม่เกิน 6 รูป\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nบัตรประจำตัวประชาชน\nคุณสมบัติเพิ่มเติมแบบ 1.2\nเกณฑ์ขั้นต่ำ\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ไม่น้อยกว่า 40 คะแนน\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTPAT 3 ความถนัดทางวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์ (รหัสวิชา 30) T-SCORE ไม่น้อยกว่า 45\nสัดส่วนที่ใช้ในการคัดเลือก\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ค่าน้ำหนักร้อยละ 76\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTGAT 1 การสื่อสารภาษาอังกฤษ (รหัสวิชา 91) ค่าน้ำหนักร้อยละ 4\nTGAT 2 การคิดอย่างมีเหตุผล (รหัสวิชา 92) ค่าน้ำหนักร้อยละ 4\nTGAT 3 สมรรถนะการทำงาน (รหัสวิชา 93) ค่าน้ำหนักร้อยละ 4\nTPAT 3 ความถนัดทางวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์ (รหัสวิชา 30) ค่าน้ำหนักร้อยละ 12\n0","variant_1_2_requirements":"เกณฑ์ขั้นต่ำ\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ไม่น้อยกว่า 40 คะแนน\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTPAT 3 ความถนัดทางวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์ (รหัสวิชา 30) T-SCORE ไม่น้อยกว่า 45\nสัดส่วนที่ใช้ในการคัดเลือก\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ค่าน้ำหนักร้อยละ 76\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTGAT 1 การสื่อสารภาษาอังกฤษ (รหัสวิชา 91) ค่าน้ำหนักร้อยละ 4\nTGAT 2 การคิดอย่างมีเหตุผล (รหัสวิชา 92) ค่าน้ำหนักร้อยละ 4\nTGAT 3 สมรรถนะการทำงาน (รหัสวิชา 93) ค่าน้ำหนักร้อยละ 4\nTPAT 3 ความถนัดทางวิทยาศาสตร์ เทคโนโลยี วิศวกรรมศาสตร์ (รหัสวิชา 30) ค่าน้ำหนักร้อยละ 12\n0"}'::jsonb, 'GPAX ≥ 3.00; Portfolio ไม่เกิน 15 หน้า; Portfolio 80% และสัมภาษณ์ 20%; แบบ 1.2 มีเกณฑ์ TGAT/TPAT เพิ่มตามประกาศ',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cyber'
where p.code = 'cmu-00410666108041-1-2'
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
    p.id, m.id, 3.5, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{"ภาษาอังกฤษ":3.5}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.50","เป็นผู้สำเร็จการศึกษาผ่านหลักสูตรอบรมระยะสั้นพื้นฐานวิศวกรรมศาสตร์ จาก Entaneer Academy เท่านั้น โดยได้รับอักษรลำดับขั้น A จำนวน 2 กระบวนวิชา คือ 259201 261111 และได้รับอักษรลำดับขั้นไม่น้อยกว่า B จำนวน 1 กระบวนวิชา คือ 206161","มีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้","IELTS 5.5","IELTS indicator 5.5","TOEFL PBT/ITP 500","TOEFL CBT 173","TOEFL iBT 46-59","TOEIC 650","SAT EBRW 430","CMU TEGS 60","CU-TEP 65","TU-GET PBT 500","TU-GET CBT 60","Duolingo (DET) 95","OTE (Oxford Test of English)/ OTE Advanced 111"]'::jsonb, 'Portfolio ไม่เกิน 15 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":15}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":80},{"name":"สัมภาษณ์","weight_percent":20}]'::jsonb, '{"official_project_code":"00410666108050","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00410666108050\nคณะวิศวกรรมศาสตร์ สาขา ระบบสารสนเทศและความมั่นคงปลอดภัยไซเบอร์ (นานาชาติ ช่องทาง TCAS)\nหลักสูตร นานาชาติ รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ โครงการพิเศษอื่นๆ (โครงการรับนักเรียนผู้มีความรู้ ความสามารถทางวิศวกรรม )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 80,000 บาท\nแนวทางการประกอบอาชีพ\nInformation Systems Administrator, IT Consultant / IT Engineer, System Engineer / System Analyst, Network Engineer / Computer Network Architect, Cybersecurity Professionals, รอบที่ 1 Portfolio แบบ 1.1: 2\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมวิชาในชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ภาษาอังกฤษ ไม่น้อยกว่า 3.50\nเป็นผู้สำเร็จการศึกษาผ่านหลักสูตรอบรมระยะสั้นพื้นฐานวิศวกรรมศาสตร์ จาก Entaneer Academy เท่านั้น โดยได้รับอักษรลำดับขั้น A จำนวน 2 กระบวนวิชา คือ 259201 261111 และได้รับอักษรลำดับขั้นไม่น้อยกว่า B จำนวน 1 กระบวนวิชา คือ 206161\nมีผลคะแนนสอบภาษาอังกฤษตามเกณฑ์อย่างใดอย่างหนึ่ง ไม่น้อยกว่าคะแนนดังต่อไปนี้\nIELTS 5.5\nIELTS indicator 5.5\nTOEFL PBT/ITP 500\nTOEFL CBT 173\nTOEFL iBT 46-59\nTOEIC 650\nSAT EBRW 430\nCMU TEGS 60\nCU-TEP 65\nTU-GET PBT 500\nTU-GET CBT 60\nDuolingo (DET) 95\nOTE (Oxford Test of English)/ OTE Advanced 111\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nหลักฐานผลคะแนนที่ใช้คัดเลือก\nหลักฐานการชำระเงิน\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 15 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 80 และ การสัมภาษณ์ ร้อยละ 20\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nประวัติส่วนตัวของนักเรียน\nผลคะแนนสอบภาษาอังกฤษอย่างใดอย่างหนึ่ง ตามที่โครงการกำหนด\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nไม่มี\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบแสดงผลการเรียน (ปพ.1) ด้านหน้าและด้านหลัง\nหลักฐานผลคะแนนสอบภาษาอังกฤษอย่างใดอย่างหนึ่ง ตามที่โครงการกำหนด\nหมวดที่ 4 : กิจกรรม/รางวัล\nใบแสดงผลการเรียนของหลักสูตรอบรมระยะสั้นพื้นฐานวิศวกรรมศาสตร์ โดยนักเรียนสามารถใส่รูปภาพในแต่ละหน้าได้ไม่เกิน 6 รูป\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nบัตรประจำตัวประชาชน\n0"}'::jsonb, 'GPAX ≥ 3.50; Portfolio ไม่เกิน 15 หน้า; Portfolio 80% และสัมภาษณ์ 20%',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cyber'
where p.code = 'cmu-00410666108050-1-1'
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
    p.id, m.id, 2.25, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 2.25","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 2.25","คุณสมบัติด้านผลงานทางกีฬา","1. มีประสบการณ์เข้าร่วมการแข่งขันในฐานะนักกีฬาในระดับโปรลีก ไม่น้อยกว่า 1 ฤดูกาล","2. มีผลงานได้รับรางวัลจากการแข่งขันกีฬา E-Sports ในระดับชาติขึ้นไป โดยสามารถแสดงหลักฐานรับรองผลงานได้อย่างชัดเจนและตรวจสอบได้","ชนิดกีฬาที่รับ : กีฬา E-Sports เท่านั้น"]'::jsonb, 'Portfolio ไม่เกิน 10 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":10}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":30},{"name":"สัมภาษณ์","weight_percent":70}]'::jsonb, '{"official_project_code":"00412102102010","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00412102102010\nวิทยาลัยศิลปะ สื่อ และเทคโนโลยี สาขา การจัดการสมัยใหม่และเทคโนโลยีสารสนเทศ\nหลักสูตร สองภาษา รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ การรับนักเรียนผู้มีผลด้านกีฬาดีเด่น\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 33,000 บาท\nแนวทางการประกอบอาชีพ\nผู้ดูแลระบบฐานข้อมูลธุรกิจ (Database Business Administrator), นักปฏิบัติงานสายสนับสนุนด้านเทคโนโลยีสารสนเทศ (IT Support), นักพัฒนาโปรแกรมประยุกต์เว็บไซต์ (Web Application Developer), นักพัฒนาระบบอัตโนมัติ (RPA Developer), นักวิเคราะห์ธุรกิจ (Business Analyst), รอบที่ 1 Portfolio แบบ 1.1: 5\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 2.25\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 2.25\nคุณสมบัติด้านผลงานทางกีฬา\n1. มีประสบการณ์เข้าร่วมการแข่งขันในฐานะนักกีฬาในระดับโปรลีก ไม่น้อยกว่า 1 ฤดูกาล\n2. มีผลงานได้รับรางวัลจากการแข่งขันกีฬา E-Sports ในระดับชาติขึ้นไป โดยสามารถแสดงหลักฐานรับรองผลงานได้อย่างชัดเจนและตรวจสอบได้\nชนิดกีฬาที่รับ : กีฬา E-Sports เท่านั้น\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nใบแสดงผลการเรียน ปพ.1 (ทั้งด้านหน้าและด้านหลัง)\nหลักฐานการชำระเงิน\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 10 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 30 และ การสัมภาษณ์ ร้อยละ 70\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nข้อมูลประวัติส่วนตัว\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nการบริหารธุรกิจและปัญญาประดิษฐ์ ไม่เกิน 300 คำ\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบแสดงผลการเรียน ปพ.1 (ทั้งด้านหน้าและด้านหลัง)\nหนังสือรับรองการเป็นนักกีฬาและการเข้าร่วมการแข่งขันกีฬา E-Sport จากต้นสังกัด\nหมวดที่ 4 : กิจกรรม/รางวัล\nผลงานของผู้สมัครทางด้านที่เกี่ยวข้องกับการกีฬา E-Sport\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nบัตรประจำตัวประชาชน\nผู้เข้ารับการสัมภาษณ์ ต้องแสดงบัตรประจำตัวประชาชน หรือ บัตรประจำตัวนักเรียน เพื่อแสดงว่า เป็นตัวจริง ที่เข้ารับการสัมภาษณ์\nอื่น ๆ\nผลงานของผู้สมัครทางด้านที่เกี่ยวข้องกับการกีฬา E-Sport\n0"}'::jsonb, 'GPAX ≥ 2.25; Portfolio ไม่เกิน 10 หน้า; Portfolio 30% และสัมภาษณ์ 70%',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-modern-it'
where p.code = 'cmu-00412102102010-1-1'
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

commit;
