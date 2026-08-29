-- Generated from datasets/tcas70_admissions.json
-- Supabase SQL Editor part 4 of 7; run parts in numeric order.
begin;

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

insert into public.admission_criteria (
    project_id, faculty_id, min_gpax, gpax_requirements, subject_gpax, min_english_score,
    standardized_scores, applicant_qualifications, portfolio_requirements,
    portfolio_details, accepted_achievements, required_documents,
    selection_methods, additional_requirements, criteria_summary,
    official_announcement_url, updated_at
)
select
    p.id, m.id, 3.0, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 3.00","รับเฉพาะแผนการเรียนวิทยาศาสตร์-คณิตศาสตร์หรือเทียบเท่า","รับเฉพาะแผนการเรียนศิลปศาสตร์หรือเทียบเท่า เฉพาะศิลป์-คำนวณ","รับแผนการเรียนอย่างใดอย่างหนึ่ง","สำหรับหลักสูตรอาชีวศึกษา","สาขาวิชาคอมพิวเตอร์หรือสาขาที่เกี่ยวข้อง","เป็นผู้กำลังศึกษาระดับประกาศนียบัตรวิชาชีพ ชั้นปีที่ 3 มีผลการเรียนระดับประกาศนียบัตรวิชาชีพ 1-3 (5 เทอม) ไม่น้อยกว่า 3.00","สาขาวิชาคอมพิวเตอร์หรือสาขาที่เกี่ยวข้อง","เป็นผู้สำเร็จการศึกษาระดับประกาศนียบัตรวิชาชีพ มีผลการเรียนระดับประกาศนียบัตรวิชาชีพ 1-3 (6 เทอม) ไม่น้อยกว่า 3.00"]'::jsonb, 'Portfolio ไม่เกิน 10 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":10}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":30},{"name":"สัมภาษณ์","weight_percent":70}]'::jsonb, '{"official_project_code":"00412102103010","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00412102103010\nวิทยาลัยศิลปะ สื่อ และเทคโนโลยี สาขา การจัดการสมัยใหม่และเทคโนโลยีสารสนเทศ\nหลักสูตร สองภาษา รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ การรับนักเรียนที่มีผลการเรียนดี\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 33,000 บาท\nแนวทางการประกอบอาชีพ\nผู้ดูแลระบบฐานข้อมูลธุรกิจ (Database Business Administrator), นักปฏิบัติงานสายสนับสนุนด้านเทคโนโลยีสารสนเทศ (IT Support), นักพัฒนาโปรแกรมประยุกต์เว็บไซต์ (Web Application Developer), นักพัฒนาระบบอัตโนมัติ (RPA Developer), นักวิเคราะห์ธุรกิจ (Business Analyst), รอบที่ 1 Portfolio แบบ 1.1: 20\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 3.00\nรับเฉพาะแผนการเรียนวิทยาศาสตร์-คณิตศาสตร์หรือเทียบเท่า\nรับเฉพาะแผนการเรียนศิลปศาสตร์หรือเทียบเท่า เฉพาะศิลป์-คำนวณ\nรับแผนการเรียนอย่างใดอย่างหนึ่ง\nสำหรับหลักสูตรอาชีวศึกษา\nสาขาวิชาคอมพิวเตอร์หรือสาขาที่เกี่ยวข้อง\nเป็นผู้กำลังศึกษาระดับประกาศนียบัตรวิชาชีพ ชั้นปีที่ 3 มีผลการเรียนระดับประกาศนียบัตรวิชาชีพ 1-3 (5 เทอม) ไม่น้อยกว่า 3.00\nสาขาวิชาคอมพิวเตอร์หรือสาขาที่เกี่ยวข้อง\nเป็นผู้สำเร็จการศึกษาระดับประกาศนียบัตรวิชาชีพ มีผลการเรียนระดับประกาศนียบัตรวิชาชีพ 1-3 (6 เทอม) ไม่น้อยกว่า 3.00\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nใบแสดงผลการเรียน ปพ.1 (ทั้งด้านหน้าและด้านหลัง)\nหลักฐานการชำระเงิน\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 10 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 30 และ การสัมภาษณ์ ร้อยละ 70\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nข้อมูลประวัติส่วนตัว\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nการบริหารธุรกิจและปัญญาประดิษฐ์ ไม่เกิน 300 คำ\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบแสดงผลการเรียน ปพ.1 (ทั้งด้านหน้าและด้านหลัง)\nหมวดที่ 4 : กิจกรรม/รางวัล\nผลงานของผู้สมัครทางด้านที่เกี่ยวข้องกับการประยุกต์ใช้เทคโนโลยีสารสนเทศ เช่น การประยุกต์ใช้ AI ผลงาน Infographic การทำ Website Application การเขียนโปรแกรม การทำสื่อ Multimedia ฯลฯ ที่เป็นประโยชน์ต่อการพิจารณา และเตรียมผลงานเพื่อแสดงต่อคณะกรรมการในวันสัมภาษณ์\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nบัตรประจำตัวประชาชน\nผู้เข้ารับการสัมภาษณ์ ต้องแสดงบัตรประจำตัวประชาชน หรือ บัตรประจำตัวนักเรียน เพื่อแสดงว่า เป็นตัวจริง ที่เข้ารับการสัมภาษณ์\nอื่น ๆ\nผู้เข้ารับการสัมภาษณ์ต้องเตรียมความพร้อม เพื่อแสดงผลงานในรูปแบบเต็มหรือตัวอย่างโปรแกรม ของตนเองทางด้านที่เกี่ยวข้องกับการประยุกต์ใช้เทคโนโลยีสารสนเทศ เช่น การประยุกต์ใช้ AI ผลงาน Infographic การทำ Website Application การเขียนโปรแกรม การทำสื่อ Multimedia ฯลฯ เพื่อแสดงต่อคณะกรรมการประกอบการพิจารณาในวันสัมภาษณ์\n0"}'::jsonb, 'GPAX ≥ 3.00; Portfolio ไม่เกิน 10 หน้า; Portfolio 30% และสัมภาษณ์ 70%',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-modern-it'
where p.code = 'cmu-00412102103010-1-1'
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
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 2.25","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 2.25","เป็นผู้มีประสบการณ์ธุรกิจออนไลน์ หรือ นำเสนอสินค้าบนแพลตฟอร์มออนไลน์ ไม่ต่ำกว่า 2 ปี","เป็นผู้มีแพลตฟอร์ม E-commerce (Shopee, Lazada, TikTok Shop ฯลฯ)"]'::jsonb, 'Portfolio ไม่เกิน 10 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":10}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":30},{"name":"สัมภาษณ์","weight_percent":70}]'::jsonb, '{"official_project_code":"00412102108010","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00412102108010\nวิทยาลัยศิลปะ สื่อ และเทคโนโลยี สาขา การจัดการสมัยใหม่และเทคโนโลยีสารสนเทศ\nหลักสูตร สองภาษา รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ โครงการพิเศษอื่นๆ (โครงการส่งเสริมนักเรียนผู้ประกอบการร้านค้าออนไลน์ )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 33,000 บาท\nแนวทางการประกอบอาชีพ\nผู้ดูแลระบบฐานข้อมูลธุรกิจ (Database Business Administrator), นักปฏิบัติงานสายสนับสนุนด้านเทคโนโลยีสารสนเทศ (IT Support), นักพัฒนาโปรแกรมประยุกต์เว็บไซต์ (Web Application Developer), นักพัฒนาระบบอัตโนมัติ (RPA Developer), นักวิเคราะห์ธุรกิจ (Business Analyst), รอบที่ 1 Portfolio แบบ 1.1: 5\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 2.25\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 2.25\nเป็นผู้มีประสบการณ์ธุรกิจออนไลน์ หรือ นำเสนอสินค้าบนแพลตฟอร์มออนไลน์ ไม่ต่ำกว่า 2 ปี\nเป็นผู้มีแพลตฟอร์ม E-commerce (Shopee, Lazada, TikTok Shop ฯลฯ)\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nใบแสดงผลการเรียน ปพ.1 (ทั้งด้านหน้าและด้านหลัง)\nหลักฐานการชำระเงิน\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 10 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 30 และ การสัมภาษณ์ ร้อยละ 70\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nข้อมูลประวัติส่วนตัว\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nการบริหารธุรกิจและปัญญาประดิษฐ์ ไม่เกิน 300 คำ\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบแสดงผลการเรียน ปพ.1 (ทั้งด้านหน้าและด้านหลัง)\nหมวดที่ 4 : กิจกรรม/รางวัล\nระบุข้อมูลธุรกิจออนไลน์หรือผลิตภัณฑ์ที่ดำเนินการ พร้อมรายละเอียดด้านการตลาด ยอดขาย รายได้ และช่องทางการจัดจำหน่ายหรือการขายที่ใช้ในปัจจุบัน และอื่น ๆ ที่เกี่ยวข้อง\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nบัตรประจำตัวประชาชน\nผู้เข้ารับการสัมภาษณ์ ต้องแสดงบัตรประจำตัวประชาชน หรือ บัตรประจำตัวนักเรียน เพื่อแสดงว่า เป็นตัวจริง ที่เข้ารับการสัมภาษณ์\nอื่น ๆ\nผู้เข้ารับการสัมภาษณ์ต้องเตรียมความพร้อม เพื่อแสดงข้อมูลธุรกิจออนไลน์หรือผลิตภัณฑ์ที่ดำเนินการ พร้อมรายละเอียดด้านการตลาด ยอดขาย รายได้ และช่องทางการจัดจำหน่ายหรือการขายที่ใช้ในปัจจุบัน และอื่น ๆ ที่เกี่ยวข้อง\n0"}'::jsonb, 'GPAX ≥ 2.25; Portfolio ไม่เกิน 10 หน้า; Portfolio 30% และสัมภาษณ์ 70%',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-modern-it'
where p.code = 'cmu-00412102108010-1-1'
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
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 2.25","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 2.25","เป็นผู้ผลิตสื่อออนไลน์ที่มีช่องทางเผยแพร่ผลงานบนแพลตฟอร์ม YouTube, Facebook, TikTok หรือ Instagram โดยมียอดผู้ติดตามรวมทุกแพลตฟอร์มไม่น้อยกว่า 50,000 คน และมียอดการมีส่วนร่วมในรูปแบบการกดถูกใจ (Like) รวมย้อนหลัง 1 ปี ไม่น้อยกว่า 50,000 ครั้ง"]'::jsonb, 'Portfolio ไม่เกิน 10 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":10}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":30},{"name":"สัมภาษณ์","weight_percent":70}]'::jsonb, '{"official_project_code":"00412102108020","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00412102108020\nวิทยาลัยศิลปะ สื่อ และเทคโนโลยี สาขา การจัดการสมัยใหม่และเทคโนโลยีสารสนเทศ\nหลักสูตร สองภาษา รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ โครงการพิเศษอื่นๆ (โครงการส่งเสริมนักเรียนผู้มีอิทธิพลทาง Social Media )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 33,000 บาท\nแนวทางการประกอบอาชีพ\nผู้ดูแลระบบฐานข้อมูลธุรกิจ (Database Business Administrator), นักปฏิบัติงานสายสนับสนุนด้านเทคโนโลยีสารสนเทศ (IT Support), นักพัฒนาโปรแกรมประยุกต์เว็บไซต์ (Web Application Developer), นักพัฒนาระบบอัตโนมัติ (RPA Developer), นักวิเคราะห์ธุรกิจ (Business Analyst), รอบที่ 1 Portfolio แบบ 1.1: 5\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 2.25\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 2.25\nเป็นผู้ผลิตสื่อออนไลน์ที่มีช่องทางเผยแพร่ผลงานบนแพลตฟอร์ม YouTube, Facebook, TikTok หรือ Instagram โดยมียอดผู้ติดตามรวมทุกแพลตฟอร์มไม่น้อยกว่า 50,000 คน และมียอดการมีส่วนร่วมในรูปแบบการกดถูกใจ (Like) รวมย้อนหลัง 1 ปี ไม่น้อยกว่า 50,000 ครั้ง\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nใบแสดงผลการเรียน ปพ.1 (ทั้งด้านหน้าและด้านหลัง)\nหลักฐานการชำระเงิน\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 10 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 30 และ การสัมภาษณ์ ร้อยละ 70\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nข้อมูลประวัติส่วนตัว\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nการบริหารธุรกิจและปัญญาประดิษฐ์ ไม่เกิน 300 คำ\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบแสดงผลการเรียน ปพ.1 (ทั้งด้านหน้าและด้านหลัง)\nหมวดที่ 4 : กิจกรรม/รางวัล\nแนบผลงานที่โดดเด่นในฐานะ Influencer หรือ Content Creator โดยเคยสร้างคอนเทนต์ที่มียอดการเข้าถึงหรือการมีส่วนร่วม และเป็นที่รู้จัก และมีผลงานการสร้างสรรค์และเผยแพร่คอนเทนต์อย่างต่อเนื่อง โดยมีความเคลื่อนไหวบนแพลตฟอร์มออนไลน์อย่างสม่ำเสมอ\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nบัตรประจำตัวประชาชน\nผู้เข้ารับการสัมภาษณ์ ต้องแสดงบัตรประจำตัวประชาชน หรือ บัตรประจำตัวนักเรียน เพื่อแสดงว่า เป็นตัวจริง ที่เข้ารับการสัมภาษณ์\nอื่น ๆ\nแสดงผลงานที่โดดเด่นในฐานะ Influencer หรือ Content Creator โดยเคยสร้างคอนเทนต์ที่มียอดการเข้าถึงหรือการมีส่วนร่วม และเป็นที่รู้จัก และมีผลงานการสร้างสรรค์และเผยแพร่คอนเทนต์อย่างต่อเนื่อง โดยมีความเคลื่อนไหวบนแพลตฟอร์มออนไลน์อย่างสม่ำเสมอ\n0"}'::jsonb, 'GPAX ≥ 2.25; Portfolio ไม่เกิน 10 หน้า; Portfolio 30% และสัมภาษณ์ 70%',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-modern-it'
where p.code = 'cmu-00412102108020-1-1'
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
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 2.75","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 2.75","เป็นผู้สำเร็จการศึกษาผ่านหลักสูตร Gifted School ของวิทยาลัยศิลปะ สื่อ และเทคโนโลยี มหาวิทยาลัยเชียงใหม่ (ต้องมีใบรับรองผลการเรียน)"]'::jsonb, 'Portfolio ไม่เกิน 10 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":10}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":30},{"name":"สัมภาษณ์","weight_percent":70}]'::jsonb, '{"official_project_code":"00412102108030","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00412102108030\nวิทยาลัยศิลปะ สื่อ และเทคโนโลยี สาขา การจัดการสมัยใหม่และเทคโนโลยีสารสนเทศ\nหลักสูตร สองภาษา รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ โครงการพิเศษอื่นๆ (โครงการรับนักเรียนผู้ที่มีความสามารถพิเศษฯ (Gifted IT) )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 33,000 บาท\nแนวทางการประกอบอาชีพ\nผู้ดูแลระบบฐานข้อมูลธุรกิจ (Database Business Administrator), นักปฏิบัติงานสายสนับสนุนด้านเทคโนโลยีสารสนเทศ (IT Support), นักพัฒนาโปรแกรมประยุกต์เว็บไซต์ (Web Application Developer), นักพัฒนาระบบอัตโนมัติ (RPA Developer), นักวิเคราะห์ธุรกิจ (Business Analyst), รอบที่ 1 Portfolio แบบ 1.1: 15\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 2.75\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 2.75\nเป็นผู้สำเร็จการศึกษาผ่านหลักสูตร Gifted School ของวิทยาลัยศิลปะ สื่อ และเทคโนโลยี มหาวิทยาลัยเชียงใหม่ (ต้องมีใบรับรองผลการเรียน)\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nหนังสือรับรอง (ไม่มีแบบฟอร์ม)\nหนังสือรับรองการเรียนจากโครงการ Gifted School ที่ออกโดยวิทยาลัยศิลปะ สื่อ และเทคโนโลยี มหาวิทยาลัยเชียงใหม่\nใบแสดงผลการเรียน\nใบแสดงผลการเรียน ปพ.1 (ทั้งด้านหน้าและด้านหลัง)\nหลักฐานการชำระเงิน\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 10 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 30 และ การสัมภาษณ์ ร้อยละ 70\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nข้อมูลประวัติส่วนตัว\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nการบริหารธุรกิจและปัญญาประดิษฐ์ ไม่เกิน 300 คำ\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบแสดงผลการเรียน ปพ.1 (ทั้งด้านหน้าและด้านหลัง)\nหมวดที่ 4 : กิจกรรม/รางวัล\nผลงานของผู้สมัครทางด้านที่เกี่ยวข้องกับการประยุกต์ใช้เทคโนโลยีสารสนเทศ เช่น การประยุกต์ใช้ AI ผลงาน Infographic การทำ Website Application การเขียนโปรแกรม การทำสื่อ Multimedia ฯลฯ ที่เป็นประโยชน์ต่อการพิจารณา และเตรียมผลงานเพื่อแสดงต่อคณะกรรมการในวันสัมภาษณ์\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nบัตรประจำตัวประชาชน\nผู้เข้ารับการสัมภาษณ์ ต้องแสดงบัตรประจำตัวประชาชน หรือ บัตรประจำตัวนักเรียน เพื่อแสดงว่า เป็นตัวจริง ที่เข้ารับการสัมภาษณ์\nอื่น ๆ\nผู้เข้ารับการสัมภาษณ์ ต้องเตรียมความพร้อม เพื่อแสดงผลงานในรูปแบบเต็ม หรือ ตัวอย่างโปรแกรมของตนเองทางด้านที่เกี่ยวข้องกับการประยุกต์ใช้เทคโนโลยีสารสนเทศ เช่น การประยุกต์ใช้ AI ผลงาน Infographic การทำ Website Application การเขียนโปรแกรม การทำสื่อ Multimedia ฯลฯ เพื่อแสดงต่อคณะกรรมการประกอบการพิจารณาในวันสัมภาษณ์\n0"}'::jsonb, 'GPAX ≥ 2.75; Portfolio ไม่เกิน 10 หน้า; Portfolio 30% และสัมภาษณ์ 70%',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-modern-it'
where p.code = 'cmu-00412102108030-1-1'
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
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 3.00","ผลงานของผู้สมัครทางด้านการพัฒนาเกมอื่น ๆ เช่น ผลงาน 2D 3D งาน Sketch Design ที่เกี่ยวข้องกับการพัฒนาเกม โดยผู้สมัครจะต้องระบุ Software ที่ใช้สร้างสรรค์ผลงานในการพัฒนาเกม อาทิ Unity Unreal Construct 3 ฯลฯ และเตรียมผลงานเพื่อแสดงต่อคณะกรรมการในวันสัมภาษณ์"]'::jsonb, 'Portfolio ไม่เกิน 10 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":10}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":60},{"name":"สัมภาษณ์","weight_percent":40}]'::jsonb, '{"official_project_code":"00412104103010","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00412104103010\nวิทยาลัยศิลปะ สื่อ และเทคโนโลยี สาขา ดิจิทัลเกม\nหลักสูตร สองภาษา รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ การรับนักเรียนที่มีผลการเรียนดี\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 38,000 บาท\nแนวทางการประกอบอาชีพ\nนักพัฒนาเกม (Game Developer), นักออกแบบเกม (Game Designer), ผู้จัดการโครงการเกม (Game Project Manager), นักทดสอบและวิเคราะห์เกม (Game Tester and Analyser), นักออกแบบกราฟิกสำหรับเกม (Graphic Game Designer), รอบที่ 1 Portfolio แบบ 1.1: 15\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 3.00\nผลงานของผู้สมัครทางด้านการพัฒนาเกมอื่น ๆ เช่น ผลงาน 2D 3D งาน Sketch Design ที่เกี่ยวข้องกับการพัฒนาเกม โดยผู้สมัครจะต้องระบุ Software ที่ใช้สร้างสรรค์ผลงานในการพัฒนาเกม อาทิ Unity Unreal Construct 3 ฯลฯ และเตรียมผลงานเพื่อแสดงต่อคณะกรรมการในวันสัมภาษณ์\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nใบแสดงผลการเรียน ปพ.1 (ทั้งด้านหน้าและด้านหลัง)\nหลักฐานการชำระเงิน\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 10 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 60 และ การสัมภาษณ์ ร้อยละ 40\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nข้อมูลประวัติส่วนตัว\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nความสามารถพิเศษ ความสนใจทางด้านการพัฒนาเกม และเป้าหมายในการประกอบอาชีพในอนาคต\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบแสดงผลการเรียน ปพ.1 (ทั้งด้านหน้าและด้านหลัง)\nหมวดที่ 4 : กิจกรรม/รางวัล\nแนบเว็บไซต์นำเสนอผลงาน ในรูปแบบ ลิงก์ URL แบบย่อ ที่บรรจุการนำเสนอข้อมูลผลงานของนักเรียน โดยประกอบไปด้วย ตัวอย่างผลงานของผู้สมัครทางด้านการพัฒนาเกมอื่น ๆ เช่น ผลงาน 2D 3D งาน Sketch Design ที่เกี่ยวข้องกับการพัฒนาเกม โดยผู้สมัครจะต้องระบุ Software ที่ใช้สร้างสรรค์ผลงานในการพัฒนาเกม อาทิ Unity Unreal Construct 3 ฯลฯ และเตรียมผลงานเพื่อแสดงต่อคณะกรรมการในวันสัมภาษณ์\nผู้สมัครควรทำให้ลิงก์หรือ QR Code สามารถเข้าถึงได้โดยง่าย และเปิดการมองเห็นแบบสาธารณะ\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nบัตรประจำตัวประชาชน\nผู้เข้ารับการสัมภาษณ์ ต้องแสดงบัตรประจำตัวประชาชน หรือ บัตรประจำตัวนักเรียน เพื่อแสดงว่า เป็นตัวจริง ที่เข้ารับการสัมภาษณ์\nผลงานหรือสิ่งประดิษฐ์\nผู้เข้ารับการสัมภาษณ์ ต้องเตรียมความพร้อม เพื่อแสดงผลงานในรูปแบบเต็ม หรือ ตัวอย่าง หรือ โปรแกรม ของผู้สมัคร ทางด้านการพัฒนาเกมอื่น ๆ เช่น ผลงาน 2D 3D งาน Sketch Design ฯลฯ ที่เกี่ยวข้องกับการพัฒนาเกม เพื่อแสดงต่อคณะกรรมการประกอบการพิจารณาในวันสัมภาษณ์\n0"}'::jsonb, 'GPAX ≥ 3.00; Portfolio ไม่เกิน 10 หน้า; Portfolio 60% และสัมภาษณ์ 40%',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-digital-game'
where p.code = 'cmu-00412104103010-1-1'
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
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 2.75","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 2.75","สำหรับหลักสูตรเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลาง (เช่น GED)","เป็นไปตามประกาศสมาคมที่ประชุมอธิการบดีฯ เรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา","เป็นผู้ที่ได้รับรางวัลการแข่งขันทางด้านเทคโนโลยีสารสนเทศ ที่เกี่ยวข้องกับการพัฒนาเกม ในระดับภาค หรือ ระดับประเทศ หรือ ระดับนานาชาติ ใน 3 อันดับ ได้แก่ รางวัลชนะเลิศ หรือ รางวัลรองชนะเลิศ อันดับ 1 หรือรางวัลรองชนะเลิศ อันดับ 2 ในระดับชั้นมัธยมศึกษาตอนปลายเท่านั้น","ผลงานของผู้สมัครทางด้านการพัฒนาเกมอื่น ๆ เช่น ผลงาน 2D 3D งาน Sketch Design ที่เกี่ยวข้องกับการพัฒนาเกม โดยผู้สมัครจะต้องระบุ Software ที่ใช้สร้างสรรค์ผลงานในการพัฒนาเกม อาทิ Unity Unreal Construct 3 ฯลฯ และเตรียมผลงานเพื่อแสดงต่อคณะกรรมการในวันสัมภาษณ์"]'::jsonb, 'Portfolio ไม่เกิน 10 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":10}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":60},{"name":"สัมภาษณ์","weight_percent":40}]'::jsonb, '{"official_project_code":"00412104108010","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00412104108010\nวิทยาลัยศิลปะ สื่อ และเทคโนโลยี สาขา ดิจิทัลเกม\nหลักสูตร สองภาษา รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ โครงการพิเศษอื่นๆ (โครงการส่งเสริมนักเรียนผู้มีความสามารถพิเศษฯ ในการประกวดแข่งขัน )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 38,000 บาท\nแนวทางการประกอบอาชีพ\nนักพัฒนาเกม (Game Developer), นักออกแบบเกม (Game Designer), ผู้จัดการโครงการเกม (Game Project Manager), นักทดสอบและวิเคราะห์เกม (Game Tester and Analyser), นักออกแบบกราฟิกสำหรับเกม (Graphic Game Designer), รอบที่ 1 Portfolio แบบ 1.1: 2\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 2.75\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 2.75\nสำหรับหลักสูตรเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลาง (เช่น GED)\nเป็นไปตามประกาศสมาคมที่ประชุมอธิการบดีฯ เรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา\nเป็นผู้ที่ได้รับรางวัลการแข่งขันทางด้านเทคโนโลยีสารสนเทศ ที่เกี่ยวข้องกับการพัฒนาเกม ในระดับภาค หรือ ระดับประเทศ หรือ ระดับนานาชาติ ใน 3 อันดับ ได้แก่ รางวัลชนะเลิศ หรือ รางวัลรองชนะเลิศ อันดับ 1 หรือรางวัลรองชนะเลิศ อันดับ 2 ในระดับชั้นมัธยมศึกษาตอนปลายเท่านั้น\nผลงานของผู้สมัครทางด้านการพัฒนาเกมอื่น ๆ เช่น ผลงาน 2D 3D งาน Sketch Design ที่เกี่ยวข้องกับการพัฒนาเกม โดยผู้สมัครจะต้องระบุ Software ที่ใช้สร้างสรรค์ผลงานในการพัฒนาเกม อาทิ Unity Unreal Construct 3 ฯลฯ และเตรียมผลงานเพื่อแสดงต่อคณะกรรมการในวันสัมภาษณ์\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nใบแสดงผลการเรียน ปพ.1 (ทั้งด้านหน้าและด้านหลัง)\nหลักฐานการชำระเงิน\nอื่น ๆ\nหลักฐาน หรือ ประกาศนียบัตรในการเข้าร่วมการแข่งขัน\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 10 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 60 และ การสัมภาษณ์ ร้อยละ 40\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nข้อมูลประวัติส่วนตัว\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nความสามารถพิเศษ ความสนใจทางด้านการพัฒนาเกม และเป้าหมายในการประกอบอาชีพในอนาคต\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบแสดงผลการเรียน ปพ.1 (ทั้งด้านหน้าและด้านหลัง)\nหลักฐาน หรือ ประกาศนียบัตรในการเข้าร่วมการแข่งขัน\nหมวดที่ 4 : กิจกรรม/รางวัล\nแนบเว็บไซต์นำเสนอผลงาน ในรูปแบบ ลิงก์ URL แบบย่อ ที่บรรจุการนำเสนอข้อมูลผลงานของนักเรียน โดยประกอบไปด้วย ตัวอย่างผลงานของผู้สมัครทางด้านการพัฒนาเกมอื่น ๆ เช่น ผลงาน 2D 3D งาน Sketch Design ที่เกี่ยวข้องกับการพัฒนาเกม โดยผู้สมัครจะต้องระบุ Software ที่ใช้สร้างสรรค์ผลงานในการพัฒนาเกม อาทิ Unity Unreal Construct 3 ฯลฯ และเตรียมผลงานเพื่อแสดงต่อคณะกรรมการในวันสัมภาษณ์\nผู้สมัครควรทำให้ลิงก์หรือ QR Code สามารถเข้าถึงได้โดยง่าย และเปิดการมองเห็นแบบสาธารณะ\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nบัตรประจำตัวประชาชน\nผู้เข้ารับการสัมภาษณ์ ต้องแสดงบัตรประจำตัวประชาชน หรือ บัตรประจำตัวนักเรียน เพื่อแสดงว่า เป็นตัวจริง ที่เข้ารับการสัมภาษณ์\nผลงานหรือสิ่งประดิษฐ์\nผู้เข้ารับการสัมภาษณ์ ต้องเตรียมความพร้อม เพื่อแสดงผลงานในรูปแบบเต็ม หรือ ตัวอย่าง หรือ โปรแกรม ของผู้สมัคร ทางด้านการพัฒนาเกมอื่น ๆ เช่น ผลงาน 2D 3D งาน Sketch Design ฯลฯ ที่เกี่ยวข้องกับการพัฒนาเกม เพื่อแสดงต่อคณะกรรมการประกอบการพิจารณาในวันสัมภาษณ์\n0"}'::jsonb, 'GPAX ≥ 2.75; Portfolio ไม่เกิน 10 หน้า; Portfolio 60% และสัมภาษณ์ 40%',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-digital-game'
where p.code = 'cmu-00412104108010-1-1'
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
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 2.75","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 2.75","สำหรับหลักสูตรเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลาง (เช่น GED)","เป็นไปตามประกาศสมาคมที่ประชุมอธิการบดีฯ เรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา","เป็นผู้สำเร็จการศึกษาผ่านหลักสูตร Gifted School ของวิทยาลัยศิลปะ สื่อ และเทคโนโลยี มหาวิทยาลัยเชียงใหม่ (ต้องมีใบรับรองผลการเรียน)"]'::jsonb, 'Portfolio ไม่เกิน 10 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":10}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":60},{"name":"สัมภาษณ์","weight_percent":40}]'::jsonb, '{"official_project_code":"00412104108020","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00412104108020\nวิทยาลัยศิลปะ สื่อ และเทคโนโลยี สาขา ดิจิทัลเกม\nหลักสูตร สองภาษา รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ โครงการพิเศษอื่นๆ (โครงการรับนักเรียนผู้ที่มีความสามารถพิเศษฯ (Gifted IT) )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 38,000 บาท\nแนวทางการประกอบอาชีพ\nนักพัฒนาเกม (Game Developer), นักออกแบบเกม (Game Designer), ผู้จัดการโครงการเกม (Game Project Manager), นักทดสอบและวิเคราะห์เกม (Game Tester and Analyser), นักออกแบบกราฟิกสำหรับเกม (Graphic Game Designer), รอบที่ 1 Portfolio แบบ 1.1: 8\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 2.75\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 2.75\nสำหรับหลักสูตรเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลาง (เช่น GED)\nเป็นไปตามประกาศสมาคมที่ประชุมอธิการบดีฯ เรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา\nเป็นผู้สำเร็จการศึกษาผ่านหลักสูตร Gifted School ของวิทยาลัยศิลปะ สื่อ และเทคโนโลยี มหาวิทยาลัยเชียงใหม่ (ต้องมีใบรับรองผลการเรียน)\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nหนังสือรับรอง (ไม่มีแบบฟอร์ม)\nหนังสือรับรองการเรียนจากโครงการ Gifted School ของวิทยาลัยศิลปะ สื่อ และเทคโนโลยี มหาวิทยาลัยเชียงใหม่\nใบแสดงผลการเรียน\nใบแสดงผลการเรียน ปพ.1 (ทั้งด้านหน้าและด้านหลัง)\nหลักฐานการชำระเงิน\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 10 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 60 และ การสัมภาษณ์ ร้อยละ 40\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nข้อมูลประวัติส่วนตัว\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nความสามารถพิเศษ ความสนใจทางด้านการพัฒนาเกม และเป้าหมายในการประกอบอาชีพในอนาคต\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบแสดงผลการเรียน ปพ.1 (ทั้งด้านหน้าและด้านหลัง)\nหนังสือรับรองการเรียนจากโครงการ Gifted School ที่ออกโดยวิทยาลัยศิลปะ สื่อ และเทคโนโลยี มหาวิทยาลัยเชียงใหม่\nหมวดที่ 4 : กิจกรรม/รางวัล\nแนบเว็บไซต์นำเสนอผลงาน ในรูปแบบ ลิงก์ URL แบบย่อ ที่บรรจุการนำเสนอข้อมูลผลงานของนักเรียน โดยประกอบไปด้วย ตัวอย่างผลงานของผู้สมัครทางด้านการพัฒนาเกมอื่น ๆ เช่น ผลงาน 2D 3D งาน Sketch Design ที่เกี่ยวข้องกับการพัฒนาเกม โดยผู้สมัครจะต้องระบุ Software ที่ใช้สร้างสรรค์ผลงานในการพัฒนาเกม อาทิ Unity Unreal Construct 3 ฯลฯ และเตรียมผลงานเพื่อแสดงต่อคณะกรรมการในวันสัมภาษณ์\nผู้สมัครควรทำให้ลิงก์หรือ QR Code สามารถเข้าถึงได้โดยง่าย และเปิดการมองเห็นแบบสาธารณะ\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nบัตรประจำตัวประชาชน\nผู้เข้ารับการสัมภาษณ์ ต้องแสดงบัตรประจำตัวประชาชน หรือ บัตรประจำตัวนักเรียน เพื่อแสดงว่า เป็นตัวจริง ที่เข้ารับการสัมภาษณ์\nผลงานหรือสิ่งประดิษฐ์\nผู้เข้ารับการสัมภาษณ์ ต้องเตรียมความพร้อม เพื่อแสดงผลงานในรูปแบบเต็ม หรือ ตัวอย่าง หรือ โปรแกรม ของผู้สมัคร ทางด้านการพัฒนาเกมอื่น ๆ เช่น ผลงาน 2D 3D งาน Sketch Design ฯลฯ ที่เกี่ยวข้องกับการพัฒนาเกม เพื่อแสดงต่อคณะกรรมการประกอบการพิจารณาในวันสัมภาษณ์\n0"}'::jsonb, 'GPAX ≥ 2.75; Portfolio ไม่เกิน 10 หน้า; Portfolio 60% และสัมภาษณ์ 40%',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-digital-game'
where p.code = 'cmu-00412104108020-1-1'
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
    '[]'::jsonb, '{"official_project_code":"00412105107010","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00412105107010\nวิทยาลัยศิลปะ สื่อ และเทคโนโลยี สาขา บูรณาการอุตสาหกรรมดิจิทัล\nหลักสูตร ไทย รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ การรับนักเรียนที่ดำเนินการโดยคณะ (โครงการความร่วมมือกับอุตสาหกรรมดิจิทัล )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 33,000 บาท\nแนวทางการประกอบอาชีพ\nนักพัฒนาแอปพลิเคชันบนมือถือ (Mobile Developer), นักพัฒนาระบบ (Front-end/Back-end Developer), นักทดสอบระบบ (Quality Assurance), นักควบคุมแผนงาน (Product Owner), นักปฏิบัติงานสายสนับสนุนด้านเทคโนโลยีสารสนเทศ (IT Support), รอบที่ 1 Portfolio แบบ 1.1: 25\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nสำหรับหลักสูตรนานาชาติ\nสำหรับหลักสูตรอาชีวศึกษา\nสำหรับหลักสูตรการศึกษาตามอัธยาศัย (กศน.)\nสำหรับหลักสูตรเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลาง (เช่น GED)\nเป็นไปตามประกาศสมาคมที่ประชุมอธิการบดีฯ เรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา\nการรับนักเรียนที่ดำเนินการโดยคณะ\nเป็นผู้มีคุณสมบัติตามประกาศของคณะ ดูรายละเอียดเพิ่มเติมได้ที่เว็บไซต์ของคณะ\nhttps://www.camt.cmu.ac.th/\n0"}'::jsonb, 'ใช้คุณสมบัติและผลงานตามประกาศทางการของ มช.',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-digital-industry'
where p.code = 'cmu-00412105107010-1-1'
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
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 2.75","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 2.75","เป็นผู้มีคุณสมบัติตามประกาศกระทรวงศึกษาธิการ เรื่อง การเทียบความรู้วุฒิต่างประเทศ โดยเป็นผู้ที่กำลังศึกษาอยู่ Grade 12 (ในระบบอเมริกัน, US) ในหลักสูตรนานาชาติ ที่ใช้หลักสูตรตามระบบการศึกษาของอเมริกัน และได้รับการรับรองจากกระทรวงศึกษาธิการ มีผลการเรียนเฉลี่ยสะสม Grade 12 (5 เทอม) ไม่น้อยกว่า 2.75","เป็นผู้มีคุณสมบัติตามประกาศกระทรวงศึกษาธิการ เรื่อง การเทียบความรู้วุฒิต่างประเทศ โดยเป็นผู้สำเร็จการศึกษา Grade 12 (ในระบบอเมริกัน, US) ในหลักสูตรนานาชาติ ที่ใช้หลักสูตรตามระบบการศึกษาของอเมริกัน และได้รับการรับรองจากกระทรวงศึกษาธิการ มีผลการเรียนเฉลี่ยสะสม Grade 12 (6 เทอม) ไม่น้อยกว่า 2.75","เป็นผู้มีคุณสมบัติตามประกาศกระทรวงศึกษาธิการ เรื่อง การเทียบความรู้วุฒิต่างประเทศ โดยเป็นผู้ที่กำลังศึกษาอยู่ Year 13 (ในระบบอังกฤษ, UK) ในหลักสูตรนานาชาติ ที่ใช้หลักสูตรตามระบบการศึกษาของอังกฤษ และได้รับการรับรองจากกระทรวงศึกษาธิการ มีผลการเรียนเฉลี่ยสะสม Year 13 (5 เทอม) ไม่น้อยกว่า 2.75","เป็นผู้มีคุณสมบัติตามประกาศกระทรวงศึกษาธิการ เรื่อง การเทียบความรู้วุฒิต่างประเทศ โดยเป็นผู้สำเร็จการศึกษา Year 13 (ในระบบอังกฤษ, UK) ในหลักสูตรนานาชาติ ที่ใช้หลักสูตรตามระบบการศึกษาของอังกฤษ และได้รับการรับรองจากกระทรวงศึกษาธิการ มีผลการเรียนเฉลี่ยสะสม Year 13 (6 เทอม) ไม่น้อยกว่า 2.75","สำหรับหลักสูตรอาชีวศึกษา","เป็นผู้กำลังศึกษาระดับประกาศนียบัตรวิชาชีพ (ปวช.) ชั้นปีที่ 3 ในสาขาช่างอุตสาหกรรมฐานวิทยาศาสตร์, เตรียมวิศวกรรมศาสตร์, ช่างอิเล็กทรอนิกส์, ช่างคอมพิวเตอร์, ช่างเทคนิคคอมพิวเตอร์, ช่างเมคคาทรอนิกส์และหุ่นยนต์ หรือสาขาอื่นที่เกี่ยวข้องกับเทคโนโลยีดิจิทัลและวิศวกรรม โดยอยู่ในดุลยพินิจของคณะกรรมการรับเข้าศึกษา มีผลการเรียนเฉลี่ยสะสมระดับประกาศนียบัตรวิชาชีพ (ปวช.) ชั้นปีที่ 1-3 (5 เทอม) ไม่น้อยกว่า 2.75","เป็นผู้สำเร็จการศึกษาระดับประกาศนียบัตรวิชาชีพ (ปวช.) ชั้นปีที่ 3 ในสาขาช่างอุตสาหกรรมฐานวิทยาศาสตร์, เตรียมวิศวกรรมศาสตร์, ช่างอิเล็กทรอนิกส์, ช่างคอมพิวเตอร์, ช่างเทคนิคคอมพิวเตอร์, ช่างเมคคาทรอนิกส์และหุ่นยนต์ หรือสาขาอื่นที่เกี่ยวข้องกับเทคโนโลยีดิจิทัลและวิศวกรรม โดยอยู่ในดุลยพินิจของคณะกรรมการรับเข้าศึกษา มีผลการเรียนเฉลี่ยสะสมระดับประกาศนียบัตรวิชาชีพ (ปวช.) ชั้นปีที่ 1-3 (6 เทอม) ไม่น้อยกว่า 2.75","สำหรับหลักสูตรการศึกษาตามอัธยาศัย (กศน.)","เป็นผู้กำลังศึกษานอกระบบ/อัธยาศัย ระดับมัธยมศึกษาตอนปลาย มีผลการเรียนเฉลี่ยสะสมเทียบเท่าชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 2.75","เป็นผู้สำเร็จการศึกษานอกระบบ/อัธยาศัย ระดับมัธยมศึกษาตอนปลาย มีผลการเรียนเฉลี่ยสะสมเทียบเท่าชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 2.75","สำหรับหลักสูตรเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลาง (เช่น GED)","เป็นไปตามประกาศสมาคมที่ประชุมอธิการบดีฯ เรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา","ผลงานของผู้สมัครทางด้านที่เกี่ยวข้องกับการพัฒนาซอฟต์แวร์หรือการพัฒนานวัตกรรมดิจิทัล เช่น Web Application, Mobile Application ฯลฯ โดยสามารถจัดส่งในรูปแบบของวิดีโอสาธิตการทำงานของผลงาน ที่เป็นประโยชน์ต่อการพิจารณา และเตรียมผลงาน เพื่อแสดงต่อคณะกรรมการในวันสัมภาษณ์"]'::jsonb, 'Portfolio ไม่เกิน 10 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":10}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":60},{"name":"สัมภาษณ์","weight_percent":40}]'::jsonb, '{"official_project_code":"00412105108010","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00412105108010\nวิทยาลัยศิลปะ สื่อ และเทคโนโลยี สาขา บูรณาการอุตสาหกรรมดิจิทัล\nหลักสูตร ไทย รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ โครงการพิเศษอื่นๆ (โครงการผู้พัฒนานวัตกรรมดิจิทัลสร้างสรรค์ )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 33,000 บาท\nแนวทางการประกอบอาชีพ\nนักพัฒนาแอปพลิเคชันบนมือถือ (Mobile Developer), นักพัฒนาระบบ (Front-end/Back-end Developer), นักทดสอบระบบ (Quality Assurance), นักควบคุมแผนงาน (Product Owner), นักปฏิบัติงานสายสนับสนุนด้านเทคโนโลยีสารสนเทศ (IT Support), รอบที่ 1 Portfolio แบบ 1.1: 25\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 2.75\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 2.75\nสำหรับหลักสูตรนานาชาติ\nเป็นผู้มีคุณสมบัติตามประกาศกระทรวงศึกษาธิการ เรื่อง การเทียบความรู้วุฒิต่างประเทศ โดยเป็นผู้ที่กำลังศึกษาอยู่ Grade 12 (ในระบบอเมริกัน, US) ในหลักสูตรนานาชาติ ที่ใช้หลักสูตรตามระบบการศึกษาของอเมริกัน และได้รับการรับรองจากกระทรวงศึกษาธิการ มีผลการเรียนเฉลี่ยสะสม Grade 12 (5 เทอม) ไม่น้อยกว่า 2.75\nเป็นผู้มีคุณสมบัติตามประกาศกระทรวงศึกษาธิการ เรื่อง การเทียบความรู้วุฒิต่างประเทศ โดยเป็นผู้สำเร็จการศึกษา Grade 12 (ในระบบอเมริกัน, US) ในหลักสูตรนานาชาติ ที่ใช้หลักสูตรตามระบบการศึกษาของอเมริกัน และได้รับการรับรองจากกระทรวงศึกษาธิการ มีผลการเรียนเฉลี่ยสะสม Grade 12 (6 เทอม) ไม่น้อยกว่า 2.75\nเป็นผู้มีคุณสมบัติตามประกาศกระทรวงศึกษาธิการ เรื่อง การเทียบความรู้วุฒิต่างประเทศ โดยเป็นผู้ที่กำลังศึกษาอยู่ Year 13 (ในระบบอังกฤษ, UK) ในหลักสูตรนานาชาติ ที่ใช้หลักสูตรตามระบบการศึกษาของอังกฤษ และได้รับการรับรองจากกระทรวงศึกษาธิการ มีผลการเรียนเฉลี่ยสะสม Year 13 (5 เทอม) ไม่น้อยกว่า 2.75\nเป็นผู้มีคุณสมบัติตามประกาศกระทรวงศึกษาธิการ เรื่อง การเทียบความรู้วุฒิต่างประเทศ โดยเป็นผู้สำเร็จการศึกษา Year 13 (ในระบบอังกฤษ, UK) ในหลักสูตรนานาชาติ ที่ใช้หลักสูตรตามระบบการศึกษาของอังกฤษ และได้รับการรับรองจากกระทรวงศึกษาธิการ มีผลการเรียนเฉลี่ยสะสม Year 13 (6 เทอม) ไม่น้อยกว่า 2.75\nสำหรับหลักสูตรอาชีวศึกษา\nเป็นผู้กำลังศึกษาระดับประกาศนียบัตรวิชาชีพ (ปวช.) ชั้นปีที่ 3 ในสาขาช่างอุตสาหกรรมฐานวิทยาศาสตร์, เตรียมวิศวกรรมศาสตร์, ช่างอิเล็กทรอนิกส์, ช่างคอมพิวเตอร์, ช่างเทคนิคคอมพิวเตอร์, ช่างเมคคาทรอนิกส์และหุ่นยนต์ หรือสาขาอื่นที่เกี่ยวข้องกับเทคโนโลยีดิจิทัลและวิศวกรรม โดยอยู่ในดุลยพินิจของคณะกรรมการรับเข้าศึกษา มีผลการเรียนเฉลี่ยสะสมระดับประกาศนียบัตรวิชาชีพ (ปวช.) ชั้นปีที่ 1-3 (5 เทอม) ไม่น้อยกว่า 2.75\nเป็นผู้สำเร็จการศึกษาระดับประกาศนียบัตรวิชาชีพ (ปวช.) ชั้นปีที่ 3 ในสาขาช่างอุตสาหกรรมฐานวิทยาศาสตร์, เตรียมวิศวกรรมศาสตร์, ช่างอิเล็กทรอนิกส์, ช่างคอมพิวเตอร์, ช่างเทคนิคคอมพิวเตอร์, ช่างเมคคาทรอนิกส์และหุ่นยนต์ หรือสาขาอื่นที่เกี่ยวข้องกับเทคโนโลยีดิจิทัลและวิศวกรรม โดยอยู่ในดุลยพินิจของคณะกรรมการรับเข้าศึกษา มีผลการเรียนเฉลี่ยสะสมระดับประกาศนียบัตรวิชาชีพ (ปวช.) ชั้นปีที่ 1-3 (6 เทอม) ไม่น้อยกว่า 2.75\nสำหรับหลักสูตรการศึกษาตามอัธยาศัย (กศน.)\nเป็นผู้กำลังศึกษานอกระบบ/อัธยาศัย ระดับมัธยมศึกษาตอนปลาย มีผลการเรียนเฉลี่ยสะสมเทียบเท่าชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 2.75\nเป็นผู้สำเร็จการศึกษานอกระบบ/อัธยาศัย ระดับมัธยมศึกษาตอนปลาย มีผลการเรียนเฉลี่ยสะสมเทียบเท่าชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 2.75\nสำหรับหลักสูตรเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลาง (เช่น GED)\nเป็นไปตามประกาศสมาคมที่ประชุมอธิการบดีฯ เรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา\nผลงานของผู้สมัครทางด้านที่เกี่ยวข้องกับการพัฒนาซอฟต์แวร์หรือการพัฒนานวัตกรรมดิจิทัล เช่น Web Application, Mobile Application ฯลฯ โดยสามารถจัดส่งในรูปแบบของวิดีโอสาธิตการทำงานของผลงาน ที่เป็นประโยชน์ต่อการพิจารณา และเตรียมผลงาน เพื่อแสดงต่อคณะกรรมการในวันสัมภาษณ์\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nหลักฐานการชำระเงิน\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 10 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 60 และ การสัมภาษณ์ ร้อยละ 40\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nข้อมูลประวัติส่วนตัว\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nแนะนำตัวเองพร้อมประสบการณ์ที่เกี่ยวข้องกับการพัฒนานวัตกรรมดิจิทัลสร้างสรรค์\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบแสดงผลการเรียน ปพ.1 (แนบเอกสารอย่างชัดเจนและครบถ้วน) หรือใบรับรองผลการศึกษา\nหมวดที่ 4 : กิจกรรม/รางวัล\nผลงานของผู้สมัครทางด้านที่เกี่ยวข้องกับการพัฒนาซอฟต์แวร์หรือการพัฒนานวัตกรรมดิจิทัล เช่น Web Application, Mobile Application ฯลฯ โดยสามารถจัดส่งในรูปแบบของวิดีโอสาธิตการทำงานของผลงาน ที่เป็นประโยชน์ต่อการพิจารณา และเตรียมผลงานเพื่อแสดงต่อคณะกรรมการในวันสัมภาษณ์\nผู้สมัครควรทำให้ลิงก์หรือ QR Code สามารถเข้าถึงได้โดยง่าย และเปิดการมองเห็นแบบสาธารณะ\nหมวดที่่ 5 : ข้อคำถาม\nคำถามข้อที่ 1 ทำไมถึงอยากเรียนสาขาวิชาบูรณาการอุตสาหกรรมดิจิทัล คำตอบไม่เกิน 1,000 ตัวอักษร\nคำถามข้อที่ 2 หากไปเที่ยวต่างประเทศ จะไปคนเดียวหรือไปกับใคร และเพราะเหตุใด คำตอบไม่เกิน 1,000 ตัวอักษร\nคำถามข้อที่ 3 อนาคตอยากทำงานอะไร คำตอบไม่เกิน 1,000 ตัวอักษร\nเอกสารประกอบการสัมภาษณ์\nบัตรประจำตัวประชาชน\nผู้เข้ารับการสัมภาษณ์ ต้องแสดงบัตรประจำตัวประชาชน หรือ บัตรประจำตัวนักเรียน เพื่อแสดงว่า เป็นตัวจริง ที่เข้ารับการสัมภาษณ์\nอื่น ๆ\nผู้เข้ารับการสัมภาษณ์ ต้องเตรียมความพร้อม เพื่อแสดงผลงานในรูปแบบเต็ม หรือ ตัวอย่าง หรือ โปรแกรมของตนเองทางด้านที่เกี่ยวข้องกับการพัฒนาวิศวกรรมซอฟต์แวร์ เช่น Website Application, Mobile Application ฯลฯ เพื่อแสดงต่อคณะกรรมการประกอบการพิจารณาในวันสัมภาษณ์\n0"}'::jsonb, 'GPAX ≥ 2.75; Portfolio ไม่เกิน 10 หน้า; Portfolio 60% และสัมภาษณ์ 40%',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-digital-industry'
where p.code = 'cmu-00412105108010-1-1'
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
    p.id, m.id, 3.25, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.25","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 3.25","รับเฉพาะแผนการเรียนวิทยาศาสตร์-คณิตศาสตร์หรือเทียบเท่า","ผลงานของผู้สมัครทางด้านที่เกี่ยวข้องกับการพัฒนาวิศวกรรมซอฟต์แวร์ เช่น Website Application, Mobile Application ฯลฯ โดยสามารถจัดส่งในรูปแบบของวิดีโอสาธิตการทำงานของผลงาน ที่เป็นประโยชน์ต่อการพิจารณา และเตรียมผลงานเพื่อแสดงต่อคณะกรรมการในวันสัมภาษณ์"]'::jsonb, 'Portfolio ไม่เกิน 10 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":10}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":70},{"name":"สัมภาษณ์","weight_percent":30}]'::jsonb, '{"official_project_code":"00412171103011","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00412171103011\nวิทยาลัยศิลปะ สื่อ และเทคโนโลยี สาขา วิศวกรรมซอฟต์แวร์ (นานาชาติ ช่องทาง TCAS)\nหลักสูตร นานาชาติ รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ การรับนักเรียนที่มีผลการเรียนดี\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 40,000 บาท\nแนวทางการประกอบอาชีพ\nEnterprise Full-Stack Developer, Software Tester & Quality Assurance Specialist, DevOps & DevSecOps Engineer, UX/UI Designer, AI/ML & Generative AI Software Engineer, รอบที่ 1 Portfolio แบบ 1.1: 5\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.25\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 3.25\nรับเฉพาะแผนการเรียนวิทยาศาสตร์-คณิตศาสตร์หรือเทียบเท่า\nผลงานของผู้สมัครทางด้านที่เกี่ยวข้องกับการพัฒนาวิศวกรรมซอฟต์แวร์ เช่น Website Application, Mobile Application ฯลฯ โดยสามารถจัดส่งในรูปแบบของวิดีโอสาธิตการทำงานของผลงาน ที่เป็นประโยชน์ต่อการพิจารณา และเตรียมผลงานเพื่อแสดงต่อคณะกรรมการในวันสัมภาษณ์\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nใบแสดงผลการเรียน ปพ.1 (ทั้งด้านหน้าและด้านหลัง)\nหลักฐานการชำระเงิน\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 10 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 70 และ การสัมภาษณ์ ร้อยละ 30\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nข้อมูลประวัติส่วนตัว\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nการพัฒนาซอฟต์แวร์กับเทคโนโลยีปัญญาประดิษฐ์\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบแสดงผลการเรียน ปพ.1 (ทั้งด้านหน้าและด้านหลัง)\nหมวดที่ 4 : กิจกรรม/รางวัล\nผลงานของผู้สมัครทางด้านที่เกี่ยวข้องกับการพัฒนาวิศวกรรมซอฟต์แวร์ เช่น Web Application, Mobile Application ฯลฯ โดยสามารถจัดส่งในรูปแบบของ วิดีโอสาธิตการทำงานของผลงาน ที่เป็นประโยชน์ต่อการพิจารณา และเตรียมผลงาน เพื่อแสดงต่อคณะกรรมการในวันสัมภาษณ์\nผู้สมัครควรทำให้ลิงก์หรือ QR Code สามารถเข้าถึงได้โดยง่าย และเปิดการมองเห็นแบบสาธารณะ\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nบัตรประจำตัวประชาชน\nผู้เข้ารับการสัมภาษณ์ ต้องแสดงบัตรประจำตัวประชาชน หรือ บัตรประจำตัวนักเรียน เพื่อแสดงว่า เป็นตัวจริง ที่เข้ารับการสัมภาษณ์\nอื่น ๆ\nผู้เข้ารับการสัมภาษณ์ ต้องเตรียมความพร้อม เพื่อแสดงผลงานในรูปแบบเต็ม หรือ ตัวอย่าง หรือ โปรแกรม ของตนเองทางด้านที่เกี่ยวข้องกับการพัฒนาวิศวกรรมซอฟต์แวร์ เช่น Website Application, Mobile Application ฯลฯ เพื่อแสดงต่อคณะกรรมการประกอบการพิจารณาในวันสัมภาษณ์\n0"}'::jsonb, 'GPAX ≥ 3.25; Portfolio ไม่เกิน 10 หน้า; Portfolio 70% และสัมภาษณ์ 30%',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-software-engineering'
where p.code = 'cmu-00412171103011-1-1'
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
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 2.50","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 2.50","รับเฉพาะแผนการเรียนวิทยาศาสตร์-คณิตศาสตร์หรือเทียบเท่า","เป็นผู้ที่ได้รับรางวัลการแข่งขันทางด้านเทคโนโลยีสารสนเทศ ระดับภาค หรือ ระดับประเทศ หรือ ระดับนานาชาติ ใน 3 อันดับ ได้แก่ รางวัลชนะเลิศ หรือ รางวัลรองชนะเลิศ อันดับ 1 หรือรางวัลรองชนะเลิศ อันดับ 2 เช่น โครงการแข่งขันพัฒนาโปรแกรมคอมพิวเตอร์แห่งประเทศไทย (NSC) โครงการประกวดโครงงานของนักวิทยาศาสตร์รุ่นเยาว์ สาขาวิทยาการคอมพิวเตอร์และวิศวกรรมศาสตร์ (YSC.CS & YSC.EN) โครงการประกวดแข่งขันที่จัดขึ้นโดยวิทยาลัยศิลปะ สื่อ และเทคโนโลยี และโครงการอื่น ๆ ที่เกี่ยวข้องทางด้านเทคโนโลยีสารสนเทศ ในระดับชั้นมัธยมศึกษาตอนปลายเท่านั้น"]'::jsonb, 'Portfolio ไม่เกิน 10 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":10}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":70},{"name":"สัมภาษณ์","weight_percent":30}]'::jsonb, '{"official_project_code":"00412171108011","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00412171108011\nวิทยาลัยศิลปะ สื่อ และเทคโนโลยี สาขา วิศวกรรมซอฟต์แวร์ (นานาชาติ ช่องทาง TCAS)\nหลักสูตร นานาชาติ รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ โครงการพิเศษอื่นๆ (โครงการส่งเสริมนักเรียนผู้มีความสามารถพิเศษฯ ในการประกวดแข่งขัน )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 40,000 บาท\nแนวทางการประกอบอาชีพ\nEnterprise Full-Stack Developer, Software Tester & Quality Assurance Specialist, DevOps & DevSecOps Engineer, UX/UI Designer, AI/ML & Generative AI Software Engineer, รอบที่ 1 Portfolio แบบ 1.1: 2\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 2.50\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 2.50\nรับเฉพาะแผนการเรียนวิทยาศาสตร์-คณิตศาสตร์หรือเทียบเท่า\nเป็นผู้ที่ได้รับรางวัลการแข่งขันทางด้านเทคโนโลยีสารสนเทศ ระดับภาค หรือ ระดับประเทศ หรือ ระดับนานาชาติ ใน 3 อันดับ ได้แก่ รางวัลชนะเลิศ หรือ รางวัลรองชนะเลิศ อันดับ 1 หรือรางวัลรองชนะเลิศ อันดับ 2 เช่น โครงการแข่งขันพัฒนาโปรแกรมคอมพิวเตอร์แห่งประเทศไทย (NSC) โครงการประกวดโครงงานของนักวิทยาศาสตร์รุ่นเยาว์ สาขาวิทยาการคอมพิวเตอร์และวิศวกรรมศาสตร์ (YSC.CS & YSC.EN) โครงการประกวดแข่งขันที่จัดขึ้นโดยวิทยาลัยศิลปะ สื่อ และเทคโนโลยี และโครงการอื่น ๆ ที่เกี่ยวข้องทางด้านเทคโนโลยีสารสนเทศ ในระดับชั้นมัธยมศึกษาตอนปลายเท่านั้น\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nใบแสดงผลการเรียน ปพ.1 (ทั้งด้านหน้าและด้านหลัง)\nหลักฐานการชำระเงิน\nอื่น ๆ\nหลักฐานหรือประกาศนียบัตรเข้ารับการแข่งขัน\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 10 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 70 และ การสัมภาษณ์ ร้อยละ 30\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nข้อมูลประวัติส่วนตัว\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nการพัฒนาซอฟต์แวร์กับเทคโนโลยีปัญญาประดิษฐ์\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบแสดงผลการเรียน ปพ.1 (ทั้งด้านหน้าและด้านหลัง)\nเกียรติบัตรหรือเอกสารรับรองผลงานที่ได้รับรางวัลจากการแข่งขัน\nหมวดที่ 4 : กิจกรรม/รางวัล\nผลงานของผู้สมัครทางด้านที่เกี่ยวข้องกับการพัฒนาวิศวกรรมซอฟต์แวร์ เช่น Web Application, Mobile Application ฯลฯ โดยสามารถจัดส่งในรูปแบบของวิดีโอสาธิตการทำงานของผลงาน ที่เป็นประโยชน์ต่อการพิจารณา และเตรียมผลงานเพื่อแสดงต่อคณะกรรมการในวันสัมภาษณ์\nผู้สมัครควรทำให้ลิงก์หรือ QR Code สามารถเข้าถึงได้โดยง่าย และเปิดการมองเห็นแบบสาธารณะ\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nบัตรประจำตัวประชาชน\nผู้เข้ารับการสัมภาษณ์ ต้องแสดงบัตรประจำตัวประชาชน หรือ บัตรประจำตัวนักเรียน เพื่อแสดงว่า เป็นตัวจริง ที่เข้ารับการสัมภาษณ์\nอื่น ๆ\nผู้เข้ารับการสัมภาษณ์ ต้องเตรียมความพร้อม เพื่อแสดงผลงานในรูปแบบเต็ม หรือ ตัวอย่าง หรือ โปรแกรม ของตนเองทางด้านที่เกี่ยวข้องกับการพัฒนาวิศวกรรมซอฟต์แวร์ เช่น Website Application, Mobile Application ฯลฯ เพื่อแสดงต่อคณะกรรมการประกอบการพิจารณาในวันสัมภาษณ์\n0"}'::jsonb, 'GPAX ≥ 2.50; Portfolio ไม่เกิน 10 หน้า; Portfolio 70% และสัมภาษณ์ 30%',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-software-engineering'
where p.code = 'cmu-00412171108011-1-1'
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
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 3.00","เป็นผู้สำเร็จการศึกษาผ่านหลักสูตร Gifted School ของวิทยาลัยศิลปะ สื่อ และเทคโนโลยี มหาวิทยาลัยเชียงใหม่ (ต้องมีใบรับรองผลการเรียน)"]'::jsonb, 'Portfolio ไม่เกิน 10 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":10}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":70},{"name":"สัมภาษณ์","weight_percent":30}]'::jsonb, '{"official_project_code":"00412171108020","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00412171108020\nวิทยาลัยศิลปะ สื่อ และเทคโนโลยี สาขา วิศวกรรมซอฟต์แวร์ (นานาชาติ ช่องทาง TCAS)\nหลักสูตร นานาชาติ รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ โครงการพิเศษอื่นๆ (โครงการรับนักเรียนผู้ที่มีความสามารถพิเศษฯ (Gifted IT) )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 40,000 บาท\nแนวทางการประกอบอาชีพ\nEnterprise Full-Stack Developer, Software Tester & Quality Assurance Specialist, DevOps & DevSecOps Engineer, UX/UI Designer, AI/ML & Generative AI Software Engineer, รอบที่ 1 Portfolio แบบ 1.1: 8\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 3.00\nเป็นผู้สำเร็จการศึกษาผ่านหลักสูตร Gifted School ของวิทยาลัยศิลปะ สื่อ และเทคโนโลยี มหาวิทยาลัยเชียงใหม่ (ต้องมีใบรับรองผลการเรียน)\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nหนังสือรับรอง (ไม่มีแบบฟอร์ม)\nหนังสือรับรองการเรียนจากโครงการ Gifted School ของวิทยาลัยศิลปะ สื่อ และเทคโนโลยี มหาวิทยาลัยเชียงใหม่\nใบแสดงผลการเรียน\nใบแสดงผลการเรียน ปพ.1 (ทั้งด้านหน้าและด้านหลัง)\nหลักฐานการชำระเงิน\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 10 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 70 และ การสัมภาษณ์ ร้อยละ 30\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nข้อมูลประวัติส่วนตัว\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nการพัฒนาซอฟต์แวร์กับเทคโนโลยีปัญญาประดิษฐ์\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบแสดงผลการเรียน ปพ.1 (ทั้งด้านหน้าและด้านหลัง)\nหนังสือรับรองการเรียนจากโครงการ Gifted School ของวิทยาลัยศิลปะ สื่อ และเทคโนโลยี มหาวิทยาลัยเชียงใหม่\nหมวดที่ 4 : กิจกรรม/รางวัล\nผลงานของผู้สมัครทางด้านที่เกี่ยวข้องกับการพัฒนาวิศวกรรมซอฟต์แวร์ เช่น Web Application, Mobile Application ฯลฯ โดยสามารถจัดส่งในรูปแบบของวิดีโอสาธิตการทำงานของผลงาน ที่เป็นประโยชน์ต่อการพิจารณา และเตรียมผลงานเพื่อแสดงต่อคณะกรรมการในวันสัมภาษณ์\nผู้สมัครควรทำให้ลิงก์หรือ QR Code สามารถเข้าถึงได้โดยง่าย และเปิดการมองเห็นแบบสาธารณะ\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nบัตรประจำตัวประชาชน\nผู้เข้ารับการสัมภาษณ์ ต้องแสดงบัตรประจำตัวประชาชน หรือ บัตรประจำตัวนักเรียน เพื่อแสดงว่า เป็นตัวจริง ที่เข้ารับการสัมภาษณ์\nอื่น ๆ\nผู้เข้ารับการสัมภาษณ์ ต้องเตรียมความพร้อม เพื่อแสดงผลงานในรูปแบบเต็ม หรือ ตัวอย่าง หรือ โปรแกรม ของตนเองทางด้านที่เกี่ยวข้องกับการพัฒนาวิศวกรรมซอฟต์แวร์ เช่น Website Application, Mobile Application ฯลฯ เพื่อแสดงต่อคณะกรรมการประกอบการพิจารณาในวันสัมภาษณ์\n0"}'::jsonb, 'GPAX ≥ 3.00; Portfolio ไม่เกิน 10 หน้า; Portfolio 70% และสัมภาษณ์ 30%',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-software-engineering'
where p.code = 'cmu-00412171108020-1-1'
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
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6","เป็นผู้กำลังศึกษาอยู่ Grade 12 ในหลักสูตรนานาชาติและจะมีผลสอบมาตรฐานจากโรงเรียนในสังกัด","เป็นผู้สำเร็จการศึกษาใน Grade 12 ในหลักสูตรนานาชาติและมีผลสอบมาตรฐานจากโรงเรียนในสังกัด","เป็นผู้กำลังศึกษาอยู่ Year 13 ในหลักสูตรนานาชาติและจะมีผลสอบมาตรฐานจากโรงเรียนในสังกัด","เป็นผู้สำเร็จการศึกษาใน Year 13 ในหลักสูตรนานาชาติและมีผลสอบมาตรฐานจากโรงเรียนในสังกัด","สำหรับหลักสูตรอาชีวศึกษา","เป็นผู้กำลังศึกษาระดับประกาศนียบัตรวิชาชีพ ชั้นปีที่ 3","เป็นผู้สำเร็จการศึกษาระดับประกาศนียบัตรวิชาชีพ","คุณสมบัติเฉพาะ","มีผลงาน รางวัล หรือกิจกรรมเชิงวิชาการ หรือด้านอื่น ๆ ที่เกี่ยวข้องที่ผู้สมัครเคยได้รับ หรือมีประสบการณ์ในด้านธุรกิจออนไลน์ สตาร์ทอัพ หรือโครงการอื่น ๆ ที่เกี่ยวข้องระดับมัธยมศึกษาตอนปลาย","มีผลสอบมาตรฐานภาษาอังกฤษ (อาทิ CMU TEGS, TOEIC, IELTS หรือ TOEFL เป็นต้น) หรือ ผลสอบมาตรฐานภาษาจีน (อาทิ HSK เป็นต้น) (ถ้ามี)","มีผลการเรียนอักษรลำดับขั้น C ขึ้นไป ของกระบวนวิชาในหลักสูตร Advanced Placement Program (AP) หรือ ผลการเรียนจากวิทยาลัยการศึกษาตลอดชีวิต มหาวิทยาลัยเชียงใหม่ (LE) (ถ้ามี)","กรณีผ่านการคัดเลือก ผู้ยืนยันสิทธิ์รอบที่ 1 ที่ผ่านการคัดเลือกด้วยคุณสมบัติและเกณฑ์ปกติแล้ว แต่มีผลคะแนนในส่วนของภาษาอังกฤษประกอบการคัดเลือกที่ผ่านมาตามรายละเอียดดังนี้","ผลสอบคะแนน TOEIC น้อยกว่าหรือเท่ากับ 599 คะแนน หรือ","ผลสอบ IELTS น้อยกว่าหรือเท่ากับ 4.5 หรือ","ผลสอบคะแนน TOEFL (iBT) น้อยกว่าหรือเท่ากับ 60 คะแนน หรือ","ผลสอบคะแนน TOEFL (CBT) น้อยกว่าหรือเท่ากับ 179 คะแนน หรือ","ผลสอบคะแนน TOEFL (ITP/PBT) น้อยกว่าหรือเท่ากับ 499 คะแนน หรือ","ผลสอบคะแนน New SAT (เฉพาะวิชาภาษาอังกฤษ Reading & Writing) น้อยกว่าหรือเท่ากับ 319 คะแนน หรือ","ผลสอบ A-Level วิชาภาษาอังกฤษ น้อยกว่าหรือเท่ากับ 59 หรือ","ผลสอบคะแนน CMU TEGS น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ","ผลสอบคะแนน CU-TEP น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ","ผลสอบคะแนน TU-GET (PBT) น้อยกว่าหรือเท่ากับ 499 คะแนน หรือ","ผลสอบคะแนน TU-GET (CBT) น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ","ผลสอบคะแนน Duolingo (DET) น้อยกว่าหรือเท่ากับ 84 คะแนน หรือ","ไม่มีผลสอบคะแนนภาษาอังกฤษตามดังกล่าว","ผู้ยืนยันสิทธิ์ในรอบที่ 1 ที่ผ่านการคัดเลือกด้วยผลคะแนนตามที่ระบุในข้างต้นนี้ ต้องลงทะเบียนคอร์สเรียนปรับพื้นฐานภาษาอังกฤษ Pre-sessional English สามารถดูรายละเอียดเพิ่มเติมเกี่ยวกับคอร์สเรียน Pre-sessional English ได้ใน www.icdi.cmu.ac.th"]'::jsonb, 'Portfolio ไม่เกิน 10 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":10}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":50},{"name":"สัมภาษณ์","weight_percent":50}]'::jsonb, '{"official_project_code":"00412401101010","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00412401101010\nวิทยาลัยนานาชาตินวัตกรรมดิจิทัล สาขา นวัตกรรมดิจิทัล (นานาชาติ ช่องทาง TCAS)\nหลักสูตร นานาชาติ รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ การรับด้วยแฟ้มสะสมผลงาน\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 55,000 บาท\nเอกสารประกอบคำอธิบายสาขา\nBachelor of Science in Digital Innovation\nแนวทางการประกอบอาชีพ\nผู้ประกอบการธุรกิจสตาร์ทอัพ (Entrepreneur/Startup Founder), นวัตกรด้านเทคโนโลยีดิจิทัล (Work as an innovator/ technocrat in digital technologies), ผู้ทำงานในรูปแบบดิจิทัลโนแมด (Work as digital workforce/ digital nomad in private or public sectors), นักวิเคราะห์ธุรกิจ (Business Analyst), ผู้จัดการนวัตกรรมดิจิทัล (Innovation Manager), รอบที่ 1 Portfolio แบบ 1.1: 35\nแบบ 1.2: 1 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6\nสำหรับหลักสูตรนานาชาติ\nเป็นผู้กำลังศึกษาอยู่ Grade 12 ในหลักสูตรนานาชาติและจะมีผลสอบมาตรฐานจากโรงเรียนในสังกัด\nเป็นผู้สำเร็จการศึกษาใน Grade 12 ในหลักสูตรนานาชาติและมีผลสอบมาตรฐานจากโรงเรียนในสังกัด\nเป็นผู้กำลังศึกษาอยู่ Year 13 ในหลักสูตรนานาชาติและจะมีผลสอบมาตรฐานจากโรงเรียนในสังกัด\nเป็นผู้สำเร็จการศึกษาใน Year 13 ในหลักสูตรนานาชาติและมีผลสอบมาตรฐานจากโรงเรียนในสังกัด\nสำหรับหลักสูตรอาชีวศึกษา\nเป็นผู้กำลังศึกษาระดับประกาศนียบัตรวิชาชีพ ชั้นปีที่ 3\nเป็นผู้สำเร็จการศึกษาระดับประกาศนียบัตรวิชาชีพ\nคุณสมบัติเฉพาะ\nมีผลงาน รางวัล หรือกิจกรรมเชิงวิชาการ หรือด้านอื่น ๆ ที่เกี่ยวข้องที่ผู้สมัครเคยได้รับ หรือมีประสบการณ์ในด้านธุรกิจออนไลน์ สตาร์ทอัพ หรือโครงการอื่น ๆ ที่เกี่ยวข้องระดับมัธยมศึกษาตอนปลาย\nมีผลสอบมาตรฐานภาษาอังกฤษ (อาทิ CMU TEGS, TOEIC, IELTS หรือ TOEFL เป็นต้น) หรือ ผลสอบมาตรฐานภาษาจีน (อาทิ HSK เป็นต้น) (ถ้ามี)\nมีผลการเรียนอักษรลำดับขั้น C ขึ้นไป ของกระบวนวิชาในหลักสูตร Advanced Placement Program (AP) หรือ ผลการเรียนจากวิทยาลัยการศึกษาตลอดชีวิต มหาวิทยาลัยเชียงใหม่ (LE) (ถ้ามี)\nกรณีผ่านการคัดเลือก ผู้ยืนยันสิทธิ์รอบที่ 1 ที่ผ่านการคัดเลือกด้วยคุณสมบัติและเกณฑ์ปกติแล้ว แต่มีผลคะแนนในส่วนของภาษาอังกฤษประกอบการคัดเลือกที่ผ่านมาตามรายละเอียดดังนี้\nผลสอบคะแนน TOEIC น้อยกว่าหรือเท่ากับ 599 คะแนน หรือ\nผลสอบ IELTS น้อยกว่าหรือเท่ากับ 4.5 หรือ\nผลสอบคะแนน TOEFL (iBT) น้อยกว่าหรือเท่ากับ 60 คะแนน หรือ\nผลสอบคะแนน TOEFL (CBT) น้อยกว่าหรือเท่ากับ 179 คะแนน หรือ\nผลสอบคะแนน TOEFL (ITP/PBT) น้อยกว่าหรือเท่ากับ 499 คะแนน หรือ\nผลสอบคะแนน New SAT (เฉพาะวิชาภาษาอังกฤษ Reading & Writing) น้อยกว่าหรือเท่ากับ 319 คะแนน หรือ\nผลสอบ A-Level วิชาภาษาอังกฤษ น้อยกว่าหรือเท่ากับ 59 หรือ\nผลสอบคะแนน CMU TEGS น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ\nผลสอบคะแนน CU-TEP น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ\nผลสอบคะแนน TU-GET (PBT) น้อยกว่าหรือเท่ากับ 499 คะแนน หรือ\nผลสอบคะแนน TU-GET (CBT) น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ\nผลสอบคะแนน Duolingo (DET) น้อยกว่าหรือเท่ากับ 84 คะแนน หรือ\nไม่มีผลสอบคะแนนภาษาอังกฤษตามดังกล่าว\nผู้ยืนยันสิทธิ์ในรอบที่ 1 ที่ผ่านการคัดเลือกด้วยผลคะแนนตามที่ระบุในข้างต้นนี้ ต้องลงทะเบียนคอร์สเรียนปรับพื้นฐานภาษาอังกฤษ Pre-sessional English สามารถดูรายละเอียดเพิ่มเติมเกี่ยวกับคอร์สเรียน Pre-sessional English ได้ใน www.icdi.cmu.ac.th\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nหลักฐานการชำระเงิน\nอื่น ๆ\nแฟ้มสะสมผลงานจะต้องเป็นภาษาอังกฤษเท่านั้น\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 10 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 50 และ การสัมภาษณ์ ร้อยละ 50\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nข้อมูลพื้นฐานส่วนตัว (Resume) หรือประวัติของผู้สมัคร เป็นภาษาอังกฤษเท่านั้น\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nบทความ (Statement of purpose) แสดงความสนใจการเข้าศึกษาต่อในหลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชานวัตกรรมดิจิทัล ประกอบการสมัครเข้าศึกษาในอนาคต และต้องเป็นภาษาอังกฤษเท่านั้น\nจำนวนตัวอักษรไม่ต่ำกว่า 300 คำ\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบรับรองผลการศึกษาระดับมัธยมศึกษาตอนปลาย หรือเทียบเท่า\nหมวดที่ 4 : กิจกรรม/รางวัล\nแฟ้มสะสมผลงานจะต้องเป็นภาษาอังกฤษทั้งหมด\nผลงาน รางวัล หรือกิจกรรมเชิงวิชาการ หรือด้านอื่น ๆ ที่เกี่ยวข้องที่ผู้สมัครเคยได้รับ หรือมีประสบการณ์ในด้านธุรกิจออนไลน์ สตาร์ทอัพ หรือโครงการอื่น ๆ ที่เกี่ยวข้องระดับมัธยมศึกษาตอนปลาย\nผลสอบมาตรฐานภาษาอังกฤษ (อาทิ CMU TEGS, TOEIC, IELTS หรือ TOEFL เป็นต้น) หรือ ผลสอบมาตรฐานภาษาจีน (อาทิ HSK เป็นต้น) (ถ้ามี)\nผลการเรียนอักษรลำดับขั้น C ขึ้นไป ของกระบวนวิชาในหลักสูตร Advanced Placement Program (AP) หรือ ผลการเรียนจากวิทยาลัยการศึกษาตลอดชีวิต มหาวิทยาลัยเชียงใหม่ (LE) (ถ้ามี)\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nใบสมัคร\nบัตรประจำตัวประชาชน\nสำเนาใบแสดงผลการเรียน\nแฟ้มสะสมผลงาน (Portfolio)\nอื่น ๆ\nการสอบสัมภาษณ์ในหลักสูตรนวัตกรรมดิจิทัล สอบสัมภาษณ์ผ่านช่องทางออนไลน์เท่านั้น\nคุณสมบัติเพิ่มเติมแบบ 1.2\nเกณฑ์ขั้นต่ำ\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTGAT 1 การสื่อสารภาษาอังกฤษ (รหัสวิชา 91) T-SCORE ไม่น้อยกว่า 40\nTGAT 2 การคิดอย่างมีเหตุผล (รหัสวิชา 92) T-SCORE ไม่น้อยกว่า 40\nTGAT 3 สมรรถนะการทำงาน (รหัสวิชา 93) T-SCORE ไม่น้อยกว่า 45\nสัดส่วนที่ใช้ในการคัดเลือก\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ค่าน้ำหนักร้อยละ 25\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTGAT 1 การสื่อสารภาษาอังกฤษ (รหัสวิชา 91) ค่าน้ำหนักร้อยละ 25\nTGAT 2 การคิดอย่างมีเหตุผล (รหัสวิชา 92) ค่าน้ำหนักร้อยละ 25\nTGAT 3 สมรรถนะการทำงาน (รหัสวิชา 93) ค่าน้ำหนักร้อยละ 25\n0"}'::jsonb, 'Portfolio ไม่เกิน 10 หน้า; Portfolio 50% และสัมภาษณ์ 50%',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-digital-innovation'
where p.code = 'cmu-00412401101010-1-1'
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
