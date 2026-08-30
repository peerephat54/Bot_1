-- Generated from datasets/tcas70_admissions.json
-- Supabase SQL Editor part 6 of 8; run parts in numeric order.
begin;

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

commit;
