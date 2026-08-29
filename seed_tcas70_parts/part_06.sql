-- Generated from datasets/tcas70_admissions.json
-- Supabase SQL Editor part 6 of 7; run parts in numeric order.
begin;

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
select p.id, 'รับสมัคร', '2026-09-14', '2026-12-16', '14 ก.ย. 2569 เวลา 09.00 น. – 16 ธ.ค. 2569 เวลา 15.00 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-direct-cpe-2570'
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
where p.code = 'tu-direct-cpe-2570'
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
where p.code = 'tu-direct-cpe-2570'
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
where p.code = 'tu-direct-cpe-2570'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-03-07', null, 'รายงานตัว 08.30 น. ศูนย์รังสิต', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-direct-cpe-2570'
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
where p.code = 'tu-direct-cpe-2570'
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
where p.code = 'tu-direct-cpe-2570'
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
where p.code = 'tu-direct-cpe-2570'
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
where p.code = 'tu-direct-software-2570'
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
where p.code = 'tu-direct-software-2570'
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
where p.code = 'tu-direct-software-2570'
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
where p.code = 'tu-direct-software-2570'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-03-07', null, 'รายงานตัว 08.30 น. ศูนย์รังสิต', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-direct-software-2570'
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
where p.code = 'tu-direct-software-2570'
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
where p.code = 'tu-direct-software-2570'
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
where p.code = 'tu-direct-software-2570'
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
where p.code = 'tu-direct-cs-2570'
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
where p.code = 'tu-direct-cs-2570'
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
where p.code = 'tu-direct-cs-2570'
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
where p.code = 'tu-direct-cs-2570'
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
where p.code = 'tu-direct-cs-2570'
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
where p.code = 'tu-direct-cs-2570'
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
where p.code = 'tu-direct-cs-2570'
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
where p.code = 'tu-direct-cs-2570'
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
where p.code = 'tu-posn-2570'
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
where p.code = 'tu-posn-2570'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยื่นหรือแก้ไขเอกสาร', '2026-09-14', '2026-12-22', '14 ก.ย. – 22 ธ.ค. 2569; ไม่ระบุเวลาปิดในประกาศนี้', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-posn-2570'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2027-02-03', null, '3 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-posn-2570'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-05', '2027-02-07', '5–7 ก.พ. 2570; วันและวิธีสอบรายคณะจะแจ้งภายหลัง', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-posn-2570'
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
where p.code = 'tu-posn-2570'
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
where p.code = 'tu-posn-2570'
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
where p.code = 'tu-posn-2570'
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
where p.code = 'tu-ipst-2570'
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
where p.code = 'tu-ipst-2570'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยื่นหรือแก้ไขเอกสาร', '2026-09-14', '2026-12-22', '14 ก.ย. – 22 ธ.ค. 2569; ไม่ระบุเวลาปิดในประกาศนี้', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-ipst-2570'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2027-02-03', null, '3 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-ipst-2570'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-05', '2027-02-07', '5–7 ก.พ. 2570; วันและวิธีสอบรายคณะจะแจ้งภายหลัง', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-ipst-2570'
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
where p.code = 'tu-ipst-2570'
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
where p.code = 'tu-ipst-2570'
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
where p.code = 'tu-ipst-2570'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัครและสร้าง iFolio', '2026-10-01', '2026-11-30', '1 ต.ค.–30 พ.ย. 2569', 'tentative', now()
from public.admission_projects p
where p.code = 'kmitl-it-ability-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์สัมภาษณ์', null, null, 'หน้าเว็บระบุ 21 ธ.ค. 2570 ซึ่งขัดกับวันสัมภาษณ์ 9 ม.ค. 2570', 'disputed', now()
from public.admission_projects p
where p.code = 'kmitl-it-ability-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัครและสร้าง iFolio', '2026-10-01', '2026-11-30', '1 ต.ค.–30 พ.ย. 2569', 'tentative', now()
from public.admission_projects p
where p.code = 'kmitl-academic-it-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์สัมภาษณ์', null, null, 'หน้าเว็บระบุ 21 ธ.ค. 2570 ซึ่งขัดกับวันสัมภาษณ์ 9 ม.ค. 2570', 'disputed', now()
from public.admission_projects p
where p.code = 'kmitl-academic-it-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัครและสร้าง iFolio', '2026-10-01', '2026-11-30', '1 ต.ค.–30 พ.ย. 2569', 'tentative', now()
from public.admission_projects p
where p.code = 'kmitl-english-it-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์สัมภาษณ์', null, null, 'หน้าเว็บระบุ 21 ธ.ค. 2570 ซึ่งขัดกับวันสัมภาษณ์ 9 ม.ค. 2570', 'disputed', now()
from public.admission_projects p
where p.code = 'kmitl-english-it-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-08-03', '2026-08-31', '3–31 ส.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-ict-portfolio'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์สัมภาษณ์', '2026-09-08', '2026-09-08', '8 ก.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-ict-portfolio'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-09-19', '2026-09-19', '19 ก.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-ict-portfolio'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ผ่านการคัดเลือก', '2026-09-22', '2026-09-22', '22 ก.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-ict-portfolio'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ MU-TCAS', '2026-11-11', '2026-11-12', '11 พ.ย. เวลา 8.00 น.–12 พ.ย. 2569 ไม่เกิน 12.00 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-ict-portfolio'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ยืนยันสิทธิ์ MU-TCAS', '2026-11-24', '2026-11-24', '24 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-ict-portfolio'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ TCAS70', '2027-03-10', '2027-03-11', '10–11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-ict-portfolio'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สละสิทธิ์ TCAS70', '2027-03-12', '2027-03-12', '12 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-ict-portfolio'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์เข้าศึกษา', '2027-03-19', '2027-03-19', '19 มี.ค. 2570 เวลา 8.00 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-ict-portfolio'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระค่าธรรมเนียมการศึกษา', '2027-03-20', '2027-03-22', '20–22 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-ict-portfolio'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-08-17', '2026-09-10', '17 ส.ค.–10 ก.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-mu-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์สัมภาษณ์', '2026-10-29', '2026-10-29', '29 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-mu-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ทดสอบระบบออนไลน์ (ถ้ามี)', '2026-10-31', '2026-10-31', '31 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-mu-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-01', '2026-11-01', '1 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-mu-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ผ่านการคัดเลือก', '2026-11-11', '2026-11-11', '11 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-mu-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ MU-TCAS', '2026-11-11', '2026-11-12', '11 พ.ย. เวลา 8.00 น.–12 พ.ย. 2569 ไม่เกิน 12.00 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-mu-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ช่วงติดต่อกลุ่มสำรอง', '2026-11-12', '2026-11-13', '12 พ.ย. เวลา 12.01 น.–13 พ.ย. 2569 เวลา 16.00 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-mu-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ยืนยันสิทธิ์ MU-TCAS', '2026-11-24', '2026-11-24', '24 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-mu-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ TCAS70', '2027-03-10', '2027-03-11', '10–11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-mu-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สละสิทธิ์ TCAS70', '2027-03-12', '2027-03-12', '12 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-mu-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์เข้าศึกษา', '2027-03-19', '2027-03-19', '19 มี.ค. 2570 เวลา 8.00 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-mu-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระค่าธรรมเนียมการศึกษา', '2027-03-20', '2027-03-22', '20–22 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-mu-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-15', '2027-01-10', '15 ธ.ค. 2569–10 ม.ค. 2570 (เส้นตายเฉพาะคณะ ICT)', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-mu-portfolio-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์สัมภาษณ์', '2027-02-04', '2027-02-04', '4 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-mu-portfolio-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-05', '2027-02-05', '5 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-mu-portfolio-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ผ่านการคัดเลือก', '2027-03-06', '2027-03-06', '6 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-mu-portfolio-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ MU-TCAS', '2027-03-07', '2027-03-07', '7 มี.ค. 2570 เวลา 8.00–12.00 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-mu-portfolio-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ช่วงติดต่อกลุ่มสำรอง', '2027-03-07', '2027-03-07', '7 มี.ค. 2570 เวลา 12.01–14.00 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-mu-portfolio-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ยืนยันสิทธิ์ MU-TCAS', '2027-03-08', '2027-03-08', '8 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-mu-portfolio-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ TCAS70', '2027-03-10', '2027-03-11', '10–11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-mu-portfolio-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สละสิทธิ์ TCAS70', '2027-03-12', '2027-03-12', '12 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-mu-portfolio-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์เข้าศึกษา', '2027-03-19', '2027-03-19', '19 มี.ค. 2570 เวลา 8.00 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-mu-portfolio-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระค่าธรรมเนียมการศึกษา', '2027-03-20', '2027-03-22', '20–22 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'muict-mu-portfolio-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-08-17', '2026-09-28', '17 ส.ค.–28 ก.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์สอบคัดเลือก', '2026-10-12', '2026-10-12', '12 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์/ทดสอบทักษะ', '2026-10-16', '2026-10-16', '16 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลการคัดเลือก', '2026-10-19', '2026-10-19', '19 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันเลือกสาขาในระบบ KMUTT', '2027-02-11', '2027-02-11', '11 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศอันดับสำรอง', '2027-02-12', '2027-02-12', '12 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระค่าสมัคร/ค่าสอบคัดเลือก 350 บาท', '2027-02-15', '2027-02-19', '15–19 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ TCAS', '2027-03-10', '2027-03-11', '10–11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ยืนยันสิทธิ์เข้าศึกษา', '2027-03-16', '2027-03-16', '16 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระค่ายืนยันสิทธิ์เข้าศึกษา', '2027-03-16', '2027-04-01', '16 มี.ค.–1 เม.ย. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ตรวจสอบรหัสนักศึกษา', '2027-04-12', '2027-04-12', '12 เม.ย. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ส่งสัญญายืนยันการเข้าศึกษา', '2027-04-12', '2027-04-30', '12–30 เม.ย. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-09', '2027-01-18', '9 ธ.ค. 2569–18 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-3'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์สอบคัดเลือก', '2027-02-01', '2027-02-01', '1 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-3'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์/ทดสอบทักษะ', '2027-02-06', '2027-02-06', '6 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-3'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลการคัดเลือก', '2027-02-08', '2027-02-08', '8 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-3'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันเลือกสาขาในระบบ KMUTT', '2027-02-11', '2027-02-11', '11 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-3'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศอันดับสำรอง', '2027-02-12', '2027-02-12', '12 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-3'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระค่าสมัคร/ค่าสอบคัดเลือก 350 บาท', '2027-02-15', '2027-02-19', '15–19 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-3'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ TCAS', '2027-03-10', '2027-03-11', '10–11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-3'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ยืนยันสิทธิ์เข้าศึกษา', '2027-03-16', '2027-03-16', '16 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-3'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระค่ายืนยันสิทธิ์เข้าศึกษา', '2027-03-16', '2027-04-01', '16 มี.ค.–1 เม.ย. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-3'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ตรวจสอบรหัสนักศึกษา', '2027-04-12', '2027-04-12', '12 เม.ย. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-3'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ส่งสัญญายืนยันการเข้าศึกษา', '2027-04-12', '2027-04-30', '12–30 เม.ย. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-3'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-08-17', '2026-09-10', '17 ส.ค.–10 ก.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'mu-computer-engineering-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์สัมภาษณ์', '2026-10-29', '2026-10-29', '29 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'mu-computer-engineering-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ทดสอบระบบออนไลน์ (ถ้ามี)', '2026-10-31', '2026-10-31', '31 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'mu-computer-engineering-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-01', '2026-11-01', '1 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'mu-computer-engineering-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ผ่านการคัดเลือก', '2026-11-11', '2026-11-11', '11 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'mu-computer-engineering-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ MU-TCAS', '2026-11-11', '2026-11-12', '11 พ.ย. เวลา 8.00 น.–12 พ.ย. 2569 ไม่เกิน 12.00 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'mu-computer-engineering-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ช่วงติดต่อกลุ่มสำรอง', '2026-11-12', '2026-11-13', '12 พ.ย. เวลา 12.01 น.–13 พ.ย. 2569 เวลา 16.00 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'mu-computer-engineering-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ยืนยันสิทธิ์ MU-TCAS', '2026-11-24', '2026-11-24', '24 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'mu-computer-engineering-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ TCAS70', '2027-03-10', '2027-03-11', '10–11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'mu-computer-engineering-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สละสิทธิ์ TCAS70', '2027-03-12', '2027-03-12', '12 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'mu-computer-engineering-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์เข้าศึกษา', '2027-03-19', '2027-03-19', '19 มี.ค. 2570 เวลา 8.00 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'mu-computer-engineering-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระค่าธรรมเนียมการศึกษา', '2027-03-20', '2027-03-22', '20–22 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'mu-computer-engineering-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัครและชำระเงิน', '2026-08-24', '2027-02-19', '24 ส.ค. 2569–19 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-csc-education-opportunity-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ผ่านการคัดเลือกแบบรายวัน', '2026-08-25', '2027-02-22', 'เวลา 15.00 น. ของวันทำการถัดจากการชำระเงิน/ส่ง Portfolio; วันหยุดประกาศวันทำการถัดไป', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-csc-education-opportunity-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ส่งเอกสารสำหรับผู้ผ่านการคัดเลือก', '2026-09-02', '2027-03-05', '2 ก.ย. 2569–5 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-csc-education-opportunity-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันเข้าศึกษากับวิทยาเขต', '2026-08-25', '2027-03-05', '25 ส.ค. 2569–5 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-csc-education-opportunity-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ TCAS70', '2027-03-10', '2027-03-11', '10–11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-csc-education-opportunity-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์รายงานตัว', '2027-03-16', '2027-03-16', '16 มี.ค. 2570 เวลา 10.00 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-csc-education-opportunity-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร OSP', '2026-07-15', '2026-09-15', '15 ก.ค.–15 ก.ย. 2569 (ไม่มีค่าใช้จ่าย)', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-siit-osp-2027'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์สอบ', '2026-09-24', '2026-09-24', '24 ก.ย. 2569 หลังเที่ยง', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-siit-osp-2027'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบข้อเขียนศูนย์ภูมิภาค', '2026-10-03', '2026-10-03', '3 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-siit-osp-2027'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบข้อเขียนศูนย์รังสิต', '2026-10-10', '2026-10-10', '10 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-siit-osp-2027'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลข้อเขียน', '2026-10-20', '2026-10-20', '20 ต.ค. 2569 หลังเที่ยง', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-siit-osp-2027'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สัมภาษณ์ผู้มีสิทธิ์รับทุน', '2026-10-24', '2026-10-24', '24 ต.ค. 2569 เวลา 8.30–12.00 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-siit-osp-2027'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ได้รับทุนและมีสิทธิ์เข้าศึกษา', '2026-11-03', '2026-11-03', '3 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-siit-osp-2027'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สมัคร Inter Portfolio 1', '2026-11-03', '2026-12-03', '3 พ.ย.–3 ธ.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'tu-siit-osp-2027'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-10-20', '2026-11-16', '20 ต.ค.–16 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์สอบคัดเลือก', '2026-11-30', '2026-11-30', '30 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ มจธ.', '2027-02-11', '2027-02-11', '11 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระค่าสมัคร/ค่าสอบคัดเลือก', '2027-02-15', '2027-02-19', '15–19 ก.พ. 2570 (เฉพาะผู้ผ่านการคัดเลือก 350 บาท)', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-sit-active-recruitment-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-08-17', '2027-01-11', '17 ส.ค. 2569–11 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-active-recruitment-general'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'คณะดำเนินการคัดเลือก/ประกาศผู้มีสิทธิ์', '2027-01-15', '2027-01-31', '15–31 ม.ค. 2570 ตามกำหนดของคณะ', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-active-recruitment-general'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ มจธ.', '2027-02-11', '2027-02-11', '11 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-active-recruitment-general'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระค่าสมัคร/ค่าสอบคัดเลือก', '2027-02-15', '2027-02-19', '15–19 ก.พ. 2570 (เฉพาะผู้ผ่านการคัดเลือก 350 บาท)', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-active-recruitment-general'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-08-17', '2027-01-11', '17 ส.ค. 2569–11 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-direct-good-grade'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'แจ้งผลผู้มีสิทธิ์สอบ', '2027-01-22', '2027-01-22', '22 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-direct-good-grade'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-08-17', '2026-10-26', '17 ส.ค.–26 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-international-admission-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์สอบ', '2026-11-06', '2026-11-06', '6 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmutt-international-admission-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัครทางอินเทอร์เน็ต', '2026-08-17', '2026-09-30', '17 ส.ค.–30 ก.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินค่าสมัครภายใน 23.59 น.', '2026-09-30', '2026-09-30', '30 ก.ย. 2569 ภายใน 23.59 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-10-02', '2026-10-02', '2 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-10-10', '2026-10-10', '10 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ผ่านการคัดเลือกและมีสิทธิ์ Clearing House', '2026-10-14', '2026-10-14', '14 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ Clearing House ผ่านระบบ ทปอ.', '2027-03-10', '2027-03-11', '10–11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์เข้าศึกษา', '2027-03-19', '2027-03-19', '19 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินยืนยันสิทธิ์เข้าศึกษา', '2027-03-25', '2027-03-31', '25–31 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัครทางอินเทอร์เน็ต', '2026-08-17', '2026-09-30', '17 ส.ค.–30 ก.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-good-student-14plus-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินค่าสมัครภายใน 23.59 น.', '2026-09-30', '2026-09-30', '30 ก.ย. 2569 ภายใน 23.59 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-good-student-14plus-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-10-02', '2026-10-02', '2 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-good-student-14plus-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-10-10', '2026-10-10', '10 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-good-student-14plus-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ผ่านการคัดเลือกและมีสิทธิ์ Clearing House', '2026-10-14', '2026-10-14', '14 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-good-student-14plus-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ Clearing House ผ่านระบบ ทปอ.', '2027-03-10', '2027-03-11', '10–11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-good-student-14plus-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์เข้าศึกษา', '2027-03-19', '2027-03-19', '19 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-good-student-14plus-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินยืนยันสิทธิ์เข้าศึกษา', '2027-03-25', '2027-03-31', '25–31 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-good-student-14plus-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัครทางอินเทอร์เน็ต', '2026-08-17', '2026-09-30', '17 ส.ค.–30 ก.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-network-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินค่าสมัครภายใน 23.59 น.', '2026-09-30', '2026-09-30', '30 ก.ย. 2569 ภายใน 23.59 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-network-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-10-02', '2026-10-02', '2 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-network-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-10-10', '2026-10-10', '10 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-network-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ผ่านการคัดเลือกและมีสิทธิ์ Clearing House', '2026-10-14', '2026-10-14', '14 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-network-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ Clearing House ผ่านระบบ ทปอ.', '2027-03-10', '2027-03-11', '10–11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-network-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์เข้าศึกษา', '2027-03-19', '2027-03-19', '19 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-network-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินยืนยันสิทธิ์เข้าศึกษา', '2027-03-25', '2027-03-31', '25–31 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-network-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัครทางอินเทอร์เน็ต', '2026-08-17', '2026-09-30', '17 ส.ค.–30 ก.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-potential-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินค่าสมัครภายใน 23.59 น.', '2026-09-30', '2026-09-30', '30 ก.ย. 2569 ภายใน 23.59 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-potential-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-10-02', '2026-10-02', '2 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-potential-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-10-10', '2026-10-10', '10 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-potential-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ผ่านการคัดเลือกและมีสิทธิ์ Clearing House', '2026-10-14', '2026-10-14', '14 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-potential-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ Clearing House ผ่านระบบ ทปอ.', '2027-03-10', '2027-03-11', '10–11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-potential-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์เข้าศึกษา', '2027-03-19', '2027-03-19', '19 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-potential-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินยืนยันสิทธิ์เข้าศึกษา', '2027-03-25', '2027-03-31', '25–31 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-potential-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัครทางอินเทอร์เน็ต', '2026-10-01', '2026-10-30', '1–30 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินค่าสมัครภายใน 23.59 น.', '2026-10-30', '2026-10-30', '30 ต.ค. 2569 ภายใน 23.59 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-2'
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
where p.code = 'kmitl-chumphon-cpe-portfolio-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-07', '2026-11-07', '7 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ผ่านการคัดเลือกและมีสิทธิ์ Clearing House', '2026-11-11', '2026-11-11', '11 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ Clearing House ผ่านระบบ ทปอ.', '2027-03-10', '2027-03-11', '10–11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์เข้าศึกษา', '2027-03-19', '2027-03-19', '19 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินยืนยันสิทธิ์เข้าศึกษา', '2027-03-25', '2027-03-31', '25–31 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัครทางอินเทอร์เน็ต', '2026-11-02', '2026-11-30', '2–30 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-3'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินค่าสมัครภายใน 23.59 น.', '2026-11-30', '2026-11-30', '30 พ.ย. 2569 ภายใน 23.59 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-3'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-12-03', '2026-12-03', '3 ธ.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-3'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-12-12', '2026-12-12', '12 ธ.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-3'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ผ่านการคัดเลือกและมีสิทธิ์ Clearing House', '2026-12-16', '2026-12-16', '16 ธ.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-3'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ Clearing House ผ่านระบบ ทปอ.', '2027-03-10', '2027-03-11', '10–11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-3'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์เข้าศึกษา', '2027-03-19', '2027-03-19', '19 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-3'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินยืนยันสิทธิ์เข้าศึกษา', '2027-03-25', '2027-03-31', '25–31 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-3'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัครทางอินเทอร์เน็ต', '2026-12-01', '2026-12-29', '1–29 ธ.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-4'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินค่าสมัครภายใน 23.59 น.', '2026-12-29', '2026-12-29', '29 ธ.ค. 2569 ภายใน 23.59 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-4'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-04', '2027-01-04', '4 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-4'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-01-09', '2027-01-09', '9 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-4'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ผ่านการคัดเลือกและมีสิทธิ์ Clearing House', '2027-01-13', '2027-01-13', '13 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-4'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ Clearing House ผ่านระบบ ทปอ.', '2027-03-10', '2027-03-11', '10–11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-4'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์เข้าศึกษา', '2027-03-19', '2027-03-19', '19 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-4'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินยืนยันสิทธิ์เข้าศึกษา', '2027-03-25', '2027-03-31', '25–31 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-4'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัครทางอินเทอร์เน็ต', '2027-01-04', '2027-01-28', '4–28 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-5'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินค่าสมัครภายใน 23.59 น.', '2027-01-28', '2027-01-28', '28 ม.ค. 2570 ภายใน 23.59 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-5'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2027-02-01', '2027-02-01', '1 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-5'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-06', '2027-02-06', '6 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-5'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ผ่านการคัดเลือกและมีสิทธิ์ Clearing House', '2027-02-10', '2027-02-10', '10 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-5'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ Clearing House ผ่านระบบ ทปอ.', '2027-03-10', '2027-03-11', '10–11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-5'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์เข้าศึกษา', '2027-03-19', '2027-03-19', '19 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-5'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินยืนยันสิทธิ์เข้าศึกษา', '2027-03-25', '2027-03-31', '25–31 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-portfolio-1-5'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัครทางอินเทอร์เน็ต', '2026-10-01', '2026-10-30', '1–30 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-network-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินค่าสมัครภายใน 23.59 น.', '2026-10-30', '2026-10-30', '30 ต.ค. 2569 ภายใน 23.59 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-network-1-2'
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
where p.code = 'kmitl-chumphon-cpe-network-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-07', '2026-11-07', '7 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-network-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ผ่านการคัดเลือกและมีสิทธิ์ Clearing House', '2026-11-11', '2026-11-11', '11 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-network-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ Clearing House ผ่านระบบ ทปอ.', '2027-03-10', '2027-03-11', '10–11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-network-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์เข้าศึกษา', '2027-03-19', '2027-03-19', '19 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-network-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินยืนยันสิทธิ์เข้าศึกษา', '2027-03-25', '2027-03-31', '25–31 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-network-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัครทางอินเทอร์เน็ต', '2026-10-01', '2026-10-30', '1–30 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-potential-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินค่าสมัครภายใน 23.59 น.', '2026-10-30', '2026-10-30', '30 ต.ค. 2569 ภายใน 23.59 น.', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-potential-1-2'
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
where p.code = 'kmitl-chumphon-cpe-potential-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-07', '2026-11-07', '7 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-potential-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ผ่านการคัดเลือกและมีสิทธิ์ Clearing House', '2026-11-11', '2026-11-11', '11 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-potential-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ Clearing House ผ่านระบบ ทปอ.', '2027-03-10', '2027-03-11', '10–11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-potential-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์เข้าศึกษา', '2027-03-19', '2027-03-19', '19 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-potential-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินยืนยันสิทธิ์เข้าศึกษา', '2027-03-25', '2027-03-31', '25–31 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-chumphon-cpe-potential-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สร้าง Portfolio ใน KMITL Student iFolio และสมัครทางอินเทอร์เน็ต', '2026-09-01', '2026-10-30', '1 ก.ย.–30 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินค่าสมัคร', '2026-09-01', '2026-10-30', '1 ก.ย.–30 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-11-09', '2026-11-09', '9 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-14', '2026-11-14', '14 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ผ่านการคัดเลือกและมีสิทธิ์ Clearing House', '2026-11-27', '2026-11-27', '27 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ Clearing House ผ่านระบบ ทปอ.', '2027-03-10', '2027-03-11', '10–11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์เข้าศึกษาและขั้นตอนชำระเงิน', '2027-03-19', '2027-03-19', '19 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินยืนยันสิทธิ์เข้าศึกษา', '2027-03-25', '2027-03-31', '25–31 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สร้าง Portfolio ใน KMITL Student iFolio และสมัครทางอินเทอร์เน็ต', '2026-12-01', '2027-01-28', '1 ธ.ค. 2569–28 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินค่าสมัคร', '2026-12-01', '2027-01-28', '1 ธ.ค. 2569–28 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2027-02-05', '2027-02-05', '5 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-13', '13 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ผ่านการคัดเลือกและมีสิทธิ์ Clearing House', '2027-02-26', '2027-02-26', '26 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ Clearing House ผ่านระบบ ทปอ.', '2027-03-10', '2027-03-11', '10–11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์เข้าศึกษาและขั้นตอนชำระเงิน', '2027-03-19', '2027-03-19', '19 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินยืนยันสิทธิ์เข้าศึกษา', '2027-03-25', '2027-03-31', '25–31 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สร้าง Portfolio ใน KMITL Student iFolio และสมัครทางอินเทอร์เน็ต', '2026-09-01', '2026-10-30', '1 ก.ย.–30 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-science-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินค่าสมัคร', '2026-09-01', '2026-10-30', '1 ก.ย.–30 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-science-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-11-09', '2026-11-09', '9 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-science-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-14', '2026-11-14', '14 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-science-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ผ่านการคัดเลือกและมีสิทธิ์ Clearing House', '2026-11-27', '2026-11-27', '27 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-science-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ Clearing House ผ่านระบบ ทปอ.', '2027-03-10', '2027-03-11', '10–11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-science-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์เข้าศึกษาและขั้นตอนชำระเงิน', '2027-03-19', '2027-03-19', '19 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-science-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินยืนยันสิทธิ์เข้าศึกษา', '2027-03-25', '2027-03-31', '25–31 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-science-talent-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สร้าง Portfolio ใน KMITL Student iFolio และสมัครทางอินเทอร์เน็ต', '2026-12-01', '2027-01-28', '1 ธ.ค. 2569–28 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-science-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินค่าสมัคร', '2026-12-01', '2027-01-28', '1 ธ.ค. 2569–28 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-science-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2027-02-05', '2027-02-05', '5 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-science-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-13', '13 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-science-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ผ่านการคัดเลือกและมีสิทธิ์ Clearing House', '2027-02-26', '2027-02-26', '26 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-science-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ Clearing House ผ่านระบบ ทปอ.', '2027-03-10', '2027-03-11', '10–11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-science-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์เข้าศึกษาและขั้นตอนชำระเงิน', '2027-03-19', '2027-03-19', '19 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-science-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินยืนยันสิทธิ์เข้าศึกษา', '2027-03-25', '2027-03-31', '25–31 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-science-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สร้าง Portfolio ใน KMITL Student iFolio และสมัครทางอินเทอร์เน็ต', '2026-09-01', '2026-10-30', '1 ก.ย.–30 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-staff-child-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินค่าสมัคร', '2026-09-01', '2026-10-30', '1 ก.ย.–30 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-staff-child-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-11-09', '2026-11-09', '9 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-staff-child-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-14', '2026-11-14', '14 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-staff-child-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ผ่านการคัดเลือกและมีสิทธิ์ Clearing House', '2026-11-27', '2026-11-27', '27 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-staff-child-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ Clearing House ผ่านระบบ ทปอ.', '2027-03-10', '2027-03-11', '10–11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-staff-child-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์เข้าศึกษาและขั้นตอนชำระเงิน', '2027-03-19', '2027-03-19', '19 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-staff-child-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินยืนยันสิทธิ์เข้าศึกษา', '2027-03-25', '2027-03-31', '25–31 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-staff-child-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สร้าง Portfolio ใน KMITL Student iFolio และสมัครทางอินเทอร์เน็ต', '2026-12-01', '2027-01-28', '1 ธ.ค. 2569–28 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-staff-child-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินค่าสมัคร', '2026-12-01', '2027-01-28', '1 ธ.ค. 2569–28 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-staff-child-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2027-02-05', '2027-02-05', '5 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-staff-child-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-13', '13 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-staff-child-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้ผ่านการคัดเลือกและมีสิทธิ์ Clearing House', '2027-02-26', '2027-02-26', '26 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-staff-child-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ Clearing House ผ่านระบบ ทปอ.', '2027-03-10', '2027-03-11', '10–11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-staff-child-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์เข้าศึกษาและขั้นตอนชำระเงิน', '2027-03-19', '2027-03-19', '19 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-staff-child-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินยืนยันสิทธิ์เข้าศึกษา', '2027-03-25', '2027-03-31', '25–31 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-staff-child-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สร้าง Portfolio ใน KMITL Student iFolio และสมัครทางอินเทอร์เน็ต', '2026-12-01', '2027-01-28', '1 ธ.ค. 2569–28 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-professional-developer-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ชำระเงินค่าสมัคร', '2026-12-01', '2027-01-28', '1 ธ.ค. 2569–28 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'kmitl-science-cs-professional-developer-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

commit;
