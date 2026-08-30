-- Generated from datasets/tcas70_admissions.json
-- Supabase SQL Editor part 5 of 8; run parts in numeric order.
begin;

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
    '[{"name":"Portfolio","weight_percent":50},{"name":"สัมภาษณ์","weight_percent":50},"TGAT/TPAT ตามเกณฑ์แบบ 1.2"]'::jsonb, '{"official_project_code":"00412401101010","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00412401101010\nวิทยาลัยนานาชาตินวัตกรรมดิจิทัล สาขา นวัตกรรมดิจิทัล (นานาชาติ ช่องทาง TCAS)\nหลักสูตร นานาชาติ รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ การรับด้วยแฟ้มสะสมผลงาน\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 55,000 บาท\nเอกสารประกอบคำอธิบายสาขา\nBachelor of Science in Digital Innovation\nแนวทางการประกอบอาชีพ\nผู้ประกอบการธุรกิจสตาร์ทอัพ (Entrepreneur/Startup Founder), นวัตกรด้านเทคโนโลยีดิจิทัล (Work as an innovator/ technocrat in digital technologies), ผู้ทำงานในรูปแบบดิจิทัลโนแมด (Work as digital workforce/ digital nomad in private or public sectors), นักวิเคราะห์ธุรกิจ (Business Analyst), ผู้จัดการนวัตกรรมดิจิทัล (Innovation Manager), รอบที่ 1 Portfolio แบบ 1.1: 35\nแบบ 1.2: 1 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6\nสำหรับหลักสูตรนานาชาติ\nเป็นผู้กำลังศึกษาอยู่ Grade 12 ในหลักสูตรนานาชาติและจะมีผลสอบมาตรฐานจากโรงเรียนในสังกัด\nเป็นผู้สำเร็จการศึกษาใน Grade 12 ในหลักสูตรนานาชาติและมีผลสอบมาตรฐานจากโรงเรียนในสังกัด\nเป็นผู้กำลังศึกษาอยู่ Year 13 ในหลักสูตรนานาชาติและจะมีผลสอบมาตรฐานจากโรงเรียนในสังกัด\nเป็นผู้สำเร็จการศึกษาใน Year 13 ในหลักสูตรนานาชาติและมีผลสอบมาตรฐานจากโรงเรียนในสังกัด\nสำหรับหลักสูตรอาชีวศึกษา\nเป็นผู้กำลังศึกษาระดับประกาศนียบัตรวิชาชีพ ชั้นปีที่ 3\nเป็นผู้สำเร็จการศึกษาระดับประกาศนียบัตรวิชาชีพ\nคุณสมบัติเฉพาะ\nมีผลงาน รางวัล หรือกิจกรรมเชิงวิชาการ หรือด้านอื่น ๆ ที่เกี่ยวข้องที่ผู้สมัครเคยได้รับ หรือมีประสบการณ์ในด้านธุรกิจออนไลน์ สตาร์ทอัพ หรือโครงการอื่น ๆ ที่เกี่ยวข้องระดับมัธยมศึกษาตอนปลาย\nมีผลสอบมาตรฐานภาษาอังกฤษ (อาทิ CMU TEGS, TOEIC, IELTS หรือ TOEFL เป็นต้น) หรือ ผลสอบมาตรฐานภาษาจีน (อาทิ HSK เป็นต้น) (ถ้ามี)\nมีผลการเรียนอักษรลำดับขั้น C ขึ้นไป ของกระบวนวิชาในหลักสูตร Advanced Placement Program (AP) หรือ ผลการเรียนจากวิทยาลัยการศึกษาตลอดชีวิต มหาวิทยาลัยเชียงใหม่ (LE) (ถ้ามี)\nกรณีผ่านการคัดเลือก ผู้ยืนยันสิทธิ์รอบที่ 1 ที่ผ่านการคัดเลือกด้วยคุณสมบัติและเกณฑ์ปกติแล้ว แต่มีผลคะแนนในส่วนของภาษาอังกฤษประกอบการคัดเลือกที่ผ่านมาตามรายละเอียดดังนี้\nผลสอบคะแนน TOEIC น้อยกว่าหรือเท่ากับ 599 คะแนน หรือ\nผลสอบ IELTS น้อยกว่าหรือเท่ากับ 4.5 หรือ\nผลสอบคะแนน TOEFL (iBT) น้อยกว่าหรือเท่ากับ 60 คะแนน หรือ\nผลสอบคะแนน TOEFL (CBT) น้อยกว่าหรือเท่ากับ 179 คะแนน หรือ\nผลสอบคะแนน TOEFL (ITP/PBT) น้อยกว่าหรือเท่ากับ 499 คะแนน หรือ\nผลสอบคะแนน New SAT (เฉพาะวิชาภาษาอังกฤษ Reading & Writing) น้อยกว่าหรือเท่ากับ 319 คะแนน หรือ\nผลสอบ A-Level วิชาภาษาอังกฤษ น้อยกว่าหรือเท่ากับ 59 หรือ\nผลสอบคะแนน CMU TEGS น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ\nผลสอบคะแนน CU-TEP น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ\nผลสอบคะแนน TU-GET (PBT) น้อยกว่าหรือเท่ากับ 499 คะแนน หรือ\nผลสอบคะแนน TU-GET (CBT) น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ\nผลสอบคะแนน Duolingo (DET) น้อยกว่าหรือเท่ากับ 84 คะแนน หรือ\nไม่มีผลสอบคะแนนภาษาอังกฤษตามดังกล่าว\nผู้ยืนยันสิทธิ์ในรอบที่ 1 ที่ผ่านการคัดเลือกด้วยผลคะแนนตามที่ระบุในข้างต้นนี้ ต้องลงทะเบียนคอร์สเรียนปรับพื้นฐานภาษาอังกฤษ Pre-sessional English สามารถดูรายละเอียดเพิ่มเติมเกี่ยวกับคอร์สเรียน Pre-sessional English ได้ใน www.icdi.cmu.ac.th\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nหลักฐานการชำระเงิน\nอื่น ๆ\nแฟ้มสะสมผลงานจะต้องเป็นภาษาอังกฤษเท่านั้น\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 10 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 50 และ การสัมภาษณ์ ร้อยละ 50\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nข้อมูลพื้นฐานส่วนตัว (Resume) หรือประวัติของผู้สมัคร เป็นภาษาอังกฤษเท่านั้น\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nบทความ (Statement of purpose) แสดงความสนใจการเข้าศึกษาต่อในหลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชานวัตกรรมดิจิทัล ประกอบการสมัครเข้าศึกษาในอนาคต และต้องเป็นภาษาอังกฤษเท่านั้น\nจำนวนตัวอักษรไม่ต่ำกว่า 300 คำ\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบรับรองผลการศึกษาระดับมัธยมศึกษาตอนปลาย หรือเทียบเท่า\nหมวดที่ 4 : กิจกรรม/รางวัล\nแฟ้มสะสมผลงานจะต้องเป็นภาษาอังกฤษทั้งหมด\nผลงาน รางวัล หรือกิจกรรมเชิงวิชาการ หรือด้านอื่น ๆ ที่เกี่ยวข้องที่ผู้สมัครเคยได้รับ หรือมีประสบการณ์ในด้านธุรกิจออนไลน์ สตาร์ทอัพ หรือโครงการอื่น ๆ ที่เกี่ยวข้องระดับมัธยมศึกษาตอนปลาย\nผลสอบมาตรฐานภาษาอังกฤษ (อาทิ CMU TEGS, TOEIC, IELTS หรือ TOEFL เป็นต้น) หรือ ผลสอบมาตรฐานภาษาจีน (อาทิ HSK เป็นต้น) (ถ้ามี)\nผลการเรียนอักษรลำดับขั้น C ขึ้นไป ของกระบวนวิชาในหลักสูตร Advanced Placement Program (AP) หรือ ผลการเรียนจากวิทยาลัยการศึกษาตลอดชีวิต มหาวิทยาลัยเชียงใหม่ (LE) (ถ้ามี)\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nใบสมัคร\nบัตรประจำตัวประชาชน\nสำเนาใบแสดงผลการเรียน\nแฟ้มสะสมผลงาน (Portfolio)\nอื่น ๆ\nการสอบสัมภาษณ์ในหลักสูตรนวัตกรรมดิจิทัล สอบสัมภาษณ์ผ่านช่องทางออนไลน์เท่านั้น\nคุณสมบัติเพิ่มเติมแบบ 1.2\nเกณฑ์ขั้นต่ำ\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTGAT 1 การสื่อสารภาษาอังกฤษ (รหัสวิชา 91) T-SCORE ไม่น้อยกว่า 40\nTGAT 2 การคิดอย่างมีเหตุผล (รหัสวิชา 92) T-SCORE ไม่น้อยกว่า 40\nTGAT 3 สมรรถนะการทำงาน (รหัสวิชา 93) T-SCORE ไม่น้อยกว่า 45\nสัดส่วนที่ใช้ในการคัดเลือก\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ค่าน้ำหนักร้อยละ 25\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTGAT 1 การสื่อสารภาษาอังกฤษ (รหัสวิชา 91) ค่าน้ำหนักร้อยละ 25\nTGAT 2 การคิดอย่างมีเหตุผล (รหัสวิชา 92) ค่าน้ำหนักร้อยละ 25\nTGAT 3 สมรรถนะการทำงาน (รหัสวิชา 93) ค่าน้ำหนักร้อยละ 25\n0","variant_1_2_requirements":"เกณฑ์ขั้นต่ำ\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTGAT 1 การสื่อสารภาษาอังกฤษ (รหัสวิชา 91) T-SCORE ไม่น้อยกว่า 40\nTGAT 2 การคิดอย่างมีเหตุผล (รหัสวิชา 92) T-SCORE ไม่น้อยกว่า 40\nTGAT 3 สมรรถนะการทำงาน (รหัสวิชา 93) T-SCORE ไม่น้อยกว่า 45\nสัดส่วนที่ใช้ในการคัดเลือก\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ค่าน้ำหนักร้อยละ 25\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTGAT 1 การสื่อสารภาษาอังกฤษ (รหัสวิชา 91) ค่าน้ำหนักร้อยละ 25\nTGAT 2 การคิดอย่างมีเหตุผล (รหัสวิชา 92) ค่าน้ำหนักร้อยละ 25\nTGAT 3 สมรรถนะการทำงาน (รหัสวิชา 93) ค่าน้ำหนักร้อยละ 25\n0"}'::jsonb, 'Portfolio ไม่เกิน 10 หน้า; Portfolio 50% และสัมภาษณ์ 50%; แบบ 1.2 มีเกณฑ์ TGAT/TPAT เพิ่มตามประกาศ',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-digital-innovation'
where p.code = 'cmu-00412401101010-1-2'
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
    '{}'::jsonb, '["เป็นผู้สำเร็จการศึกษาและมีผลการศึกษามาตรฐานในระบบการศึกษาอังกฤษอย่างใดอย่างหนึ่ง โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย","เป็นผู้สำเร็จการศึกษาเทียบเท่าวุฒิการศึกษาชั้นมัธยมศึกษาตอนปลายปีที่ 6 ในหลักสูตรนานาชาติ International Baccalaureate (IB) และมีผลสอบมาตรฐานจากโรงเรียนในสังกัด โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย","เป็นผู้สำเร็จการศึกษาเทียบเท่าวุฒิการศึกษาชั้นมัธยมศึกษาตอนปลายปีที่ 6 ในหลักสูตรนานาชาติ New Zealand National Certificate of Educational Achievement (NCEA) และมีผลสอบมาตรฐานจากโรงเรียนในสังกัด โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย","สำหรับหลักสูตรเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลาง (เช่น GED)","เป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษาของที่ประชุมอธิการบดีแห่งประเทศไทย","ต้องเป็นผู้สำเร็จการศึกษาในวุฒิ GED เรียบร้อยแล้ว","คุณสมบัติเฉพาะ","มีผลงาน รางวัล หรือกิจกรรมเชิงวิชาการ หรือด้านอื่น ๆ ที่เกี่ยวข้องที่ผู้สมัครเคยได้รับ หรือมีประสบการณ์ในด้านธุรกิจออนไลน์ สตาร์ทอัพ หรือโครงการอื่น ๆ ที่เกี่ยวข้องระดับมัธยมศึกษาตอนปลาย","มีผลสอบมาตรฐานภาษาอังกฤษ (อาทิ CMU TEGS, TOEIC, IELTS หรือ TOEFL เป็นต้น) หรือ ผลสอบมาตรฐานภาษาจีน (อาทิ HSK เป็นต้น) (ถ้ามี)","มีผลการเรียนอักษรลำดับขั้น C ขึ้นไป ของกระบวนวิชาในหลักสูตร Advanced Placement Program (AP) หรือ ผลการเรียนจากวิทยาลัยการศึกษาตลอดชีวิต มหาวิทยาลัยเชียงใหม่ (LE) (ถ้ามี)","กรณีผ่านการคัดเลือก ผู้ยืนยันสิทธิ์รอบที่ 1 ที่ผ่านการคัดเลือกด้วยคุณสมบัติและเกณฑ์ปกติแล้ว แต่มีผลคะแนนในส่วนของภาษาอังกฤษประกอบการคัดเลือกที่ผ่านมาตามรายละเอียดดังนี้","ผลสอบคะแนน TOEIC น้อยกว่าหรือเท่ากับ 599 คะแนน หรือ","ผลสอบ IELTS น้อยกว่าหรือเท่ากับ 4.5 หรือ","ผลสอบคะแนน TOEFL (iBT) น้อยกว่าหรือเท่ากับ 60 คะแนน หรือ","ผลสอบคะแนน TOEFL (CBT) น้อยกว่าหรือเท่ากับ 179 คะแนน หรือ","ผลสอบคะแนน TOEFL (ITP/PBT) น้อยกว่าหรือเท่ากับ 499 คะแนน หรือ","ผลสอบคะแนน New SAT (เฉพาะวิชาภาษาอังกฤษ Reading & Writing) น้อยกว่าหรือเท่ากับ 319 คะแนน หรือ","ผลสอบ A-Level วิชาภาษาอังกฤษ น้อยกว่าหรือเท่ากับ 59 หรือ","ผลสอบคะแนน CMU TEGS น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ","ผลสอบคะแนน CU-TEP น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ","ผลสอบคะแนน TU-GET (PBT) น้อยกว่าหรือเท่ากับ 499 คะแนน หรือ","ผลสอบคะแนน TU-GET (CBT) น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ","ผลสอบคะแนน Duolingo (DET) น้อยกว่าหรือเท่ากับ 84 คะแนน หรือ","ไม่มีผลสอบคะแนนภาษาอังกฤษตามดังกล่าว","ผู้ยืนยันสิทธิ์ในรอบที่ 1 ที่ผ่านการคัดเลือกด้วยผลคะแนนตามที่ระบุในข้างต้นนี้ ต้องลงทะเบียนคอร์สเรียนปรับพื้นฐานภาษาอังกฤษ Pre-sessional English สามารถดูรายละเอียดเพิ่มเติมเกี่ยวกับคอร์สเรียน Pre-sessional English ได้ใน www.icdi.cmu.ac.th"]'::jsonb, 'Portfolio ไม่เกิน 10 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":10}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":50},{"name":"สัมภาษณ์","weight_percent":50}]'::jsonb, '{"official_project_code":"00412401101020","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00412401101020\nวิทยาลัยนานาชาตินวัตกรรมดิจิทัล สาขา นวัตกรรมดิจิทัล (นานาชาติ ช่องทาง TCAS)\nหลักสูตร นานาชาติ รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ การรับด้วยแฟ้มสะสมผลงาน\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 55,000 บาท\nเอกสารประกอบคำอธิบายสาขา\nBachelor of Science in Digital Innovation\nแนวทางการประกอบอาชีพ\nผู้ประกอบการธุรกิจสตาร์ทอัพ (Entrepreneur/Startup Founder), นวัตกรด้านเทคโนโลยีดิจิทัล (Work as an innovator/ technocrat in digital technologies), ผู้ทำงานในรูปแบบดิจิทัลโนแมด (Work as digital workforce/ digital nomad in private or public sectors), นักวิเคราะห์ธุรกิจ (Business Analyst), ผู้จัดการนวัตกรรมดิจิทัล (Innovation Manager), รอบที่ 1 Portfolio แบบ 1.1: 4\nแบบ 1.2: 1 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรนานาชาติ\nเป็นผู้สำเร็จการศึกษาและมีผลการศึกษามาตรฐานในระบบการศึกษาอังกฤษอย่างใดอย่างหนึ่ง โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย\nเป็นผู้สำเร็จการศึกษาเทียบเท่าวุฒิการศึกษาชั้นมัธยมศึกษาตอนปลายปีที่ 6 ในหลักสูตรนานาชาติ International Baccalaureate (IB) และมีผลสอบมาตรฐานจากโรงเรียนในสังกัด โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย\nเป็นผู้สำเร็จการศึกษาเทียบเท่าวุฒิการศึกษาชั้นมัธยมศึกษาตอนปลายปีที่ 6 ในหลักสูตรนานาชาติ New Zealand National Certificate of Educational Achievement (NCEA) และมีผลสอบมาตรฐานจากโรงเรียนในสังกัด โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย\nสำหรับหลักสูตรเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลาง (เช่น GED)\nเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษาของที่ประชุมอธิการบดีแห่งประเทศไทย\nต้องเป็นผู้สำเร็จการศึกษาในวุฒิ GED เรียบร้อยแล้ว\nคุณสมบัติเฉพาะ\nมีผลงาน รางวัล หรือกิจกรรมเชิงวิชาการ หรือด้านอื่น ๆ ที่เกี่ยวข้องที่ผู้สมัครเคยได้รับ หรือมีประสบการณ์ในด้านธุรกิจออนไลน์ สตาร์ทอัพ หรือโครงการอื่น ๆ ที่เกี่ยวข้องระดับมัธยมศึกษาตอนปลาย\nมีผลสอบมาตรฐานภาษาอังกฤษ (อาทิ CMU TEGS, TOEIC, IELTS หรือ TOEFL เป็นต้น) หรือ ผลสอบมาตรฐานภาษาจีน (อาทิ HSK เป็นต้น) (ถ้ามี)\nมีผลการเรียนอักษรลำดับขั้น C ขึ้นไป ของกระบวนวิชาในหลักสูตร Advanced Placement Program (AP) หรือ ผลการเรียนจากวิทยาลัยการศึกษาตลอดชีวิต มหาวิทยาลัยเชียงใหม่ (LE) (ถ้ามี)\nกรณีผ่านการคัดเลือก ผู้ยืนยันสิทธิ์รอบที่ 1 ที่ผ่านการคัดเลือกด้วยคุณสมบัติและเกณฑ์ปกติแล้ว แต่มีผลคะแนนในส่วนของภาษาอังกฤษประกอบการคัดเลือกที่ผ่านมาตามรายละเอียดดังนี้\nผลสอบคะแนน TOEIC น้อยกว่าหรือเท่ากับ 599 คะแนน หรือ\nผลสอบ IELTS น้อยกว่าหรือเท่ากับ 4.5 หรือ\nผลสอบคะแนน TOEFL (iBT) น้อยกว่าหรือเท่ากับ 60 คะแนน หรือ\nผลสอบคะแนน TOEFL (CBT) น้อยกว่าหรือเท่ากับ 179 คะแนน หรือ\nผลสอบคะแนน TOEFL (ITP/PBT) น้อยกว่าหรือเท่ากับ 499 คะแนน หรือ\nผลสอบคะแนน New SAT (เฉพาะวิชาภาษาอังกฤษ Reading & Writing) น้อยกว่าหรือเท่ากับ 319 คะแนน หรือ\nผลสอบ A-Level วิชาภาษาอังกฤษ น้อยกว่าหรือเท่ากับ 59 หรือ\nผลสอบคะแนน CMU TEGS น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ\nผลสอบคะแนน CU-TEP น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ\nผลสอบคะแนน TU-GET (PBT) น้อยกว่าหรือเท่ากับ 499 คะแนน หรือ\nผลสอบคะแนน TU-GET (CBT) น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ\nผลสอบคะแนน Duolingo (DET) น้อยกว่าหรือเท่ากับ 84 คะแนน หรือ\nไม่มีผลสอบคะแนนภาษาอังกฤษตามดังกล่าว\nผู้ยืนยันสิทธิ์ในรอบที่ 1 ที่ผ่านการคัดเลือกด้วยผลคะแนนตามที่ระบุในข้างต้นนี้ ต้องลงทะเบียนคอร์สเรียนปรับพื้นฐานภาษาอังกฤษ Pre-sessional English สามารถดูรายละเอียดเพิ่มเติมเกี่ยวกับคอร์สเรียน Pre-sessional English ได้ใน www.icdi.cmu.ac.th\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nหลักฐานการชำระเงิน\nอื่น ๆ\nแฟ้มสะสมผลงานจะต้องเป็นภาษาอังกฤษเท่านั้น\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 10 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 50 และ การสัมภาษณ์ ร้อยละ 50\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nข้อมูลพื้นฐานส่วนตัว (Resume) หรือประวัติของผู้สมัคร เป็นภาษาอังกฤษเท่านั้น\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nบทความ (Statement of purpose) แสดงความสนใจการเข้าศึกษาต่อในหลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชานวัตกรรมดิจิทัล ประกอบการสมัครเข้าศึกษาในอนาคต และต้องเป็นภาษาอังกฤษเท่านั้น\nจำนวนตัวอักษรไม่ต่ำกว่า 300 คำ\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบรับรองผลการศึกษาระดับมัธยมศึกษาตอนปลาย หรือเทียบเท่า\nหมวดที่ 4 : กิจกรรม/รางวัล\nแฟ้มสะสมผลงานจะต้องเป็นภาษาอังกฤษทั้งหมด\nผลงาน รางวัล การอบรม หรือกิจกรรมเชิงวิชาการ หรือด้านอื่น ๆ ที่เกี่ยวข้องที่ผู้สมัครเคยได้รับ หรือมีประสบการณ์ในด้านธุรกิจออนไลน์ สตาร์ทอัพ หรือโครงการอื่น ๆ ที่เกี่ยวข้องระดับมัธยมศึกษาตอนปลาย\nผลสอบมาตรฐานภาษาอังกฤษ (อาทิ CMU TEGS, TOEIC, IELTS หรือ TOEFL เป็นต้น) หรือ ผลสอบมาตรฐานภาษาจีน (อาทิ HSK เป็นต้น) (ถ้ามี)\nผลการเรียนอักษรลำดับขั้น C ขึ้นไป ของกระบวนวิชาในหลักสูตร Advanced Placement Program (AP) หรือ ผลการเรียนจากวิทยาลัยการศึกษาตลอดชีวิต มหาวิทยาลัยเชียงใหม่ (LE) (ถ้ามี)\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nใบสมัคร\nบัตรประจำตัวประชาชน\nสำเนาใบแสดงผลการเรียน\nแฟ้มสะสมผลงาน (Portfolio)\nอื่น ๆ\nการสอบสัมภาษณ์ในหลักสูตรนวัตกรรมดิจิทัล สอบสัมภาษณ์ผ่านช่องทางออนไลน์เท่านั้น\nคุณสมบัติเพิ่มเติมแบบ 1.2\nเกณฑ์ขั้นต่ำ\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTGAT 1 การสื่อสารภาษาอังกฤษ (รหัสวิชา 91) T-SCORE ไม่น้อยกว่า 40\nTGAT 2 การคิดอย่างมีเหตุผล (รหัสวิชา 92) T-SCORE ไม่น้อยกว่า 40\nTGAT 3 สมรรถนะการทำงาน (รหัสวิชา 93) T-SCORE ไม่น้อยกว่า 45\nสัดส่วนที่ใช้ในการคัดเลือก\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ค่าน้ำหนักร้อยละ 25\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTGAT 1 การสื่อสารภาษาอังกฤษ (รหัสวิชา 91) ค่าน้ำหนักร้อยละ 25\nTGAT 2 การคิดอย่างมีเหตุผล (รหัสวิชา 92) ค่าน้ำหนักร้อยละ 25\nTGAT 3 สมรรถนะการทำงาน (รหัสวิชา 93) ค่าน้ำหนักร้อยละ 25\n0"}'::jsonb, 'Portfolio ไม่เกิน 10 หน้า; Portfolio 50% และสัมภาษณ์ 50%',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-digital-innovation'
where p.code = 'cmu-00412401101020-1-1'
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
    '{}'::jsonb, '["เป็นผู้สำเร็จการศึกษาและมีผลการศึกษามาตรฐานในระบบการศึกษาอังกฤษอย่างใดอย่างหนึ่ง โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย","เป็นผู้สำเร็จการศึกษาเทียบเท่าวุฒิการศึกษาชั้นมัธยมศึกษาตอนปลายปีที่ 6 ในหลักสูตรนานาชาติ International Baccalaureate (IB) และมีผลสอบมาตรฐานจากโรงเรียนในสังกัด โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย","เป็นผู้สำเร็จการศึกษาเทียบเท่าวุฒิการศึกษาชั้นมัธยมศึกษาตอนปลายปีที่ 6 ในหลักสูตรนานาชาติ New Zealand National Certificate of Educational Achievement (NCEA) และมีผลสอบมาตรฐานจากโรงเรียนในสังกัด โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย","สำหรับหลักสูตรเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลาง (เช่น GED)","เป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษาของที่ประชุมอธิการบดีแห่งประเทศไทย","ต้องเป็นผู้สำเร็จการศึกษาในวุฒิ GED เรียบร้อยแล้ว","คุณสมบัติเฉพาะ","มีผลงาน รางวัล หรือกิจกรรมเชิงวิชาการ หรือด้านอื่น ๆ ที่เกี่ยวข้องที่ผู้สมัครเคยได้รับ หรือมีประสบการณ์ในด้านธุรกิจออนไลน์ สตาร์ทอัพ หรือโครงการอื่น ๆ ที่เกี่ยวข้องระดับมัธยมศึกษาตอนปลาย","มีผลสอบมาตรฐานภาษาอังกฤษ (อาทิ CMU TEGS, TOEIC, IELTS หรือ TOEFL เป็นต้น) หรือ ผลสอบมาตรฐานภาษาจีน (อาทิ HSK เป็นต้น) (ถ้ามี)","มีผลการเรียนอักษรลำดับขั้น C ขึ้นไป ของกระบวนวิชาในหลักสูตร Advanced Placement Program (AP) หรือ ผลการเรียนจากวิทยาลัยการศึกษาตลอดชีวิต มหาวิทยาลัยเชียงใหม่ (LE) (ถ้ามี)","กรณีผ่านการคัดเลือก ผู้ยืนยันสิทธิ์รอบที่ 1 ที่ผ่านการคัดเลือกด้วยคุณสมบัติและเกณฑ์ปกติแล้ว แต่มีผลคะแนนในส่วนของภาษาอังกฤษประกอบการคัดเลือกที่ผ่านมาตามรายละเอียดดังนี้","ผลสอบคะแนน TOEIC น้อยกว่าหรือเท่ากับ 599 คะแนน หรือ","ผลสอบ IELTS น้อยกว่าหรือเท่ากับ 4.5 หรือ","ผลสอบคะแนน TOEFL (iBT) น้อยกว่าหรือเท่ากับ 60 คะแนน หรือ","ผลสอบคะแนน TOEFL (CBT) น้อยกว่าหรือเท่ากับ 179 คะแนน หรือ","ผลสอบคะแนน TOEFL (ITP/PBT) น้อยกว่าหรือเท่ากับ 499 คะแนน หรือ","ผลสอบคะแนน New SAT (เฉพาะวิชาภาษาอังกฤษ Reading & Writing) น้อยกว่าหรือเท่ากับ 319 คะแนน หรือ","ผลสอบ A-Level วิชาภาษาอังกฤษ น้อยกว่าหรือเท่ากับ 59 หรือ","ผลสอบคะแนน CMU TEGS น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ","ผลสอบคะแนน CU-TEP น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ","ผลสอบคะแนน TU-GET (PBT) น้อยกว่าหรือเท่ากับ 499 คะแนน หรือ","ผลสอบคะแนน TU-GET (CBT) น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ","ผลสอบคะแนน Duolingo (DET) น้อยกว่าหรือเท่ากับ 84 คะแนน หรือ","ไม่มีผลสอบคะแนนภาษาอังกฤษตามดังกล่าว","ผู้ยืนยันสิทธิ์ในรอบที่ 1 ที่ผ่านการคัดเลือกด้วยผลคะแนนตามที่ระบุในข้างต้นนี้ ต้องลงทะเบียนคอร์สเรียนปรับพื้นฐานภาษาอังกฤษ Pre-sessional English สามารถดูรายละเอียดเพิ่มเติมเกี่ยวกับคอร์สเรียน Pre-sessional English ได้ใน www.icdi.cmu.ac.th"]'::jsonb, 'Portfolio ไม่เกิน 10 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":10}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":50},{"name":"สัมภาษณ์","weight_percent":50},"TGAT/TPAT ตามเกณฑ์แบบ 1.2"]'::jsonb, '{"official_project_code":"00412401101020","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00412401101020\nวิทยาลัยนานาชาตินวัตกรรมดิจิทัล สาขา นวัตกรรมดิจิทัล (นานาชาติ ช่องทาง TCAS)\nหลักสูตร นานาชาติ รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ การรับด้วยแฟ้มสะสมผลงาน\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 55,000 บาท\nเอกสารประกอบคำอธิบายสาขา\nBachelor of Science in Digital Innovation\nแนวทางการประกอบอาชีพ\nผู้ประกอบการธุรกิจสตาร์ทอัพ (Entrepreneur/Startup Founder), นวัตกรด้านเทคโนโลยีดิจิทัล (Work as an innovator/ technocrat in digital technologies), ผู้ทำงานในรูปแบบดิจิทัลโนแมด (Work as digital workforce/ digital nomad in private or public sectors), นักวิเคราะห์ธุรกิจ (Business Analyst), ผู้จัดการนวัตกรรมดิจิทัล (Innovation Manager), รอบที่ 1 Portfolio แบบ 1.1: 4\nแบบ 1.2: 1 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรนานาชาติ\nเป็นผู้สำเร็จการศึกษาและมีผลการศึกษามาตรฐานในระบบการศึกษาอังกฤษอย่างใดอย่างหนึ่ง โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย\nเป็นผู้สำเร็จการศึกษาเทียบเท่าวุฒิการศึกษาชั้นมัธยมศึกษาตอนปลายปีที่ 6 ในหลักสูตรนานาชาติ International Baccalaureate (IB) และมีผลสอบมาตรฐานจากโรงเรียนในสังกัด โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย\nเป็นผู้สำเร็จการศึกษาเทียบเท่าวุฒิการศึกษาชั้นมัธยมศึกษาตอนปลายปีที่ 6 ในหลักสูตรนานาชาติ New Zealand National Certificate of Educational Achievement (NCEA) และมีผลสอบมาตรฐานจากโรงเรียนในสังกัด โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย\nสำหรับหลักสูตรเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลาง (เช่น GED)\nเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษาของที่ประชุมอธิการบดีแห่งประเทศไทย\nต้องเป็นผู้สำเร็จการศึกษาในวุฒิ GED เรียบร้อยแล้ว\nคุณสมบัติเฉพาะ\nมีผลงาน รางวัล หรือกิจกรรมเชิงวิชาการ หรือด้านอื่น ๆ ที่เกี่ยวข้องที่ผู้สมัครเคยได้รับ หรือมีประสบการณ์ในด้านธุรกิจออนไลน์ สตาร์ทอัพ หรือโครงการอื่น ๆ ที่เกี่ยวข้องระดับมัธยมศึกษาตอนปลาย\nมีผลสอบมาตรฐานภาษาอังกฤษ (อาทิ CMU TEGS, TOEIC, IELTS หรือ TOEFL เป็นต้น) หรือ ผลสอบมาตรฐานภาษาจีน (อาทิ HSK เป็นต้น) (ถ้ามี)\nมีผลการเรียนอักษรลำดับขั้น C ขึ้นไป ของกระบวนวิชาในหลักสูตร Advanced Placement Program (AP) หรือ ผลการเรียนจากวิทยาลัยการศึกษาตลอดชีวิต มหาวิทยาลัยเชียงใหม่ (LE) (ถ้ามี)\nกรณีผ่านการคัดเลือก ผู้ยืนยันสิทธิ์รอบที่ 1 ที่ผ่านการคัดเลือกด้วยคุณสมบัติและเกณฑ์ปกติแล้ว แต่มีผลคะแนนในส่วนของภาษาอังกฤษประกอบการคัดเลือกที่ผ่านมาตามรายละเอียดดังนี้\nผลสอบคะแนน TOEIC น้อยกว่าหรือเท่ากับ 599 คะแนน หรือ\nผลสอบ IELTS น้อยกว่าหรือเท่ากับ 4.5 หรือ\nผลสอบคะแนน TOEFL (iBT) น้อยกว่าหรือเท่ากับ 60 คะแนน หรือ\nผลสอบคะแนน TOEFL (CBT) น้อยกว่าหรือเท่ากับ 179 คะแนน หรือ\nผลสอบคะแนน TOEFL (ITP/PBT) น้อยกว่าหรือเท่ากับ 499 คะแนน หรือ\nผลสอบคะแนน New SAT (เฉพาะวิชาภาษาอังกฤษ Reading & Writing) น้อยกว่าหรือเท่ากับ 319 คะแนน หรือ\nผลสอบ A-Level วิชาภาษาอังกฤษ น้อยกว่าหรือเท่ากับ 59 หรือ\nผลสอบคะแนน CMU TEGS น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ\nผลสอบคะแนน CU-TEP น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ\nผลสอบคะแนน TU-GET (PBT) น้อยกว่าหรือเท่ากับ 499 คะแนน หรือ\nผลสอบคะแนน TU-GET (CBT) น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ\nผลสอบคะแนน Duolingo (DET) น้อยกว่าหรือเท่ากับ 84 คะแนน หรือ\nไม่มีผลสอบคะแนนภาษาอังกฤษตามดังกล่าว\nผู้ยืนยันสิทธิ์ในรอบที่ 1 ที่ผ่านการคัดเลือกด้วยผลคะแนนตามที่ระบุในข้างต้นนี้ ต้องลงทะเบียนคอร์สเรียนปรับพื้นฐานภาษาอังกฤษ Pre-sessional English สามารถดูรายละเอียดเพิ่มเติมเกี่ยวกับคอร์สเรียน Pre-sessional English ได้ใน www.icdi.cmu.ac.th\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nหลักฐานการชำระเงิน\nอื่น ๆ\nแฟ้มสะสมผลงานจะต้องเป็นภาษาอังกฤษเท่านั้น\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 10 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 50 และ การสัมภาษณ์ ร้อยละ 50\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nข้อมูลพื้นฐานส่วนตัว (Resume) หรือประวัติของผู้สมัคร เป็นภาษาอังกฤษเท่านั้น\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nบทความ (Statement of purpose) แสดงความสนใจการเข้าศึกษาต่อในหลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชานวัตกรรมดิจิทัล ประกอบการสมัครเข้าศึกษาในอนาคต และต้องเป็นภาษาอังกฤษเท่านั้น\nจำนวนตัวอักษรไม่ต่ำกว่า 300 คำ\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบรับรองผลการศึกษาระดับมัธยมศึกษาตอนปลาย หรือเทียบเท่า\nหมวดที่ 4 : กิจกรรม/รางวัล\nแฟ้มสะสมผลงานจะต้องเป็นภาษาอังกฤษทั้งหมด\nผลงาน รางวัล การอบรม หรือกิจกรรมเชิงวิชาการ หรือด้านอื่น ๆ ที่เกี่ยวข้องที่ผู้สมัครเคยได้รับ หรือมีประสบการณ์ในด้านธุรกิจออนไลน์ สตาร์ทอัพ หรือโครงการอื่น ๆ ที่เกี่ยวข้องระดับมัธยมศึกษาตอนปลาย\nผลสอบมาตรฐานภาษาอังกฤษ (อาทิ CMU TEGS, TOEIC, IELTS หรือ TOEFL เป็นต้น) หรือ ผลสอบมาตรฐานภาษาจีน (อาทิ HSK เป็นต้น) (ถ้ามี)\nผลการเรียนอักษรลำดับขั้น C ขึ้นไป ของกระบวนวิชาในหลักสูตร Advanced Placement Program (AP) หรือ ผลการเรียนจากวิทยาลัยการศึกษาตลอดชีวิต มหาวิทยาลัยเชียงใหม่ (LE) (ถ้ามี)\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nใบสมัคร\nบัตรประจำตัวประชาชน\nสำเนาใบแสดงผลการเรียน\nแฟ้มสะสมผลงาน (Portfolio)\nอื่น ๆ\nการสอบสัมภาษณ์ในหลักสูตรนวัตกรรมดิจิทัล สอบสัมภาษณ์ผ่านช่องทางออนไลน์เท่านั้น\nคุณสมบัติเพิ่มเติมแบบ 1.2\nเกณฑ์ขั้นต่ำ\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTGAT 1 การสื่อสารภาษาอังกฤษ (รหัสวิชา 91) T-SCORE ไม่น้อยกว่า 40\nTGAT 2 การคิดอย่างมีเหตุผล (รหัสวิชา 92) T-SCORE ไม่น้อยกว่า 40\nTGAT 3 สมรรถนะการทำงาน (รหัสวิชา 93) T-SCORE ไม่น้อยกว่า 45\nสัดส่วนที่ใช้ในการคัดเลือก\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ค่าน้ำหนักร้อยละ 25\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTGAT 1 การสื่อสารภาษาอังกฤษ (รหัสวิชา 91) ค่าน้ำหนักร้อยละ 25\nTGAT 2 การคิดอย่างมีเหตุผล (รหัสวิชา 92) ค่าน้ำหนักร้อยละ 25\nTGAT 3 สมรรถนะการทำงาน (รหัสวิชา 93) ค่าน้ำหนักร้อยละ 25\n0","variant_1_2_requirements":"เกณฑ์ขั้นต่ำ\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTGAT 1 การสื่อสารภาษาอังกฤษ (รหัสวิชา 91) T-SCORE ไม่น้อยกว่า 40\nTGAT 2 การคิดอย่างมีเหตุผล (รหัสวิชา 92) T-SCORE ไม่น้อยกว่า 40\nTGAT 3 สมรรถนะการทำงาน (รหัสวิชา 93) T-SCORE ไม่น้อยกว่า 45\nสัดส่วนที่ใช้ในการคัดเลือก\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์\nแฟ้มสะสมผลงาน (Portfolio) และการสัมภาษณ์ ค่าน้ำหนักร้อยละ 25\nกลุ่มวิชา TGAT/TPAT (Adj. T-SCORE)\nTGAT 1 การสื่อสารภาษาอังกฤษ (รหัสวิชา 91) ค่าน้ำหนักร้อยละ 25\nTGAT 2 การคิดอย่างมีเหตุผล (รหัสวิชา 92) ค่าน้ำหนักร้อยละ 25\nTGAT 3 สมรรถนะการทำงาน (รหัสวิชา 93) ค่าน้ำหนักร้อยละ 25\n0"}'::jsonb, 'Portfolio ไม่เกิน 10 หน้า; Portfolio 50% และสัมภาษณ์ 50%; แบบ 1.2 มีเกณฑ์ TGAT/TPAT เพิ่มตามประกาศ',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-digital-innovation'
where p.code = 'cmu-00412401101020-1-2'
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
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 3.00","เป็นผู้กำลังศึกษาอยู่ Grade 12 ในหลักสูตรนานาชาติและจะมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 3.00 (5 ภาคการศึกษา)","เป็นผู้สำเร็จการศึกษาใน Grade 12 ในหลักสูตรนานาชาติและมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 3.00 (6 ภาคการศึกษา)","เป็นผู้กำลังศึกษาอยู่ Year 13 ในหลักสูตรนานาชาติและจะมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 3.00 (5 ภาคการศึกษา)","เป็นผู้สำเร็จการศึกษาใน Year 13 ในหลักสูตรนานาชาติและมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 3.00 (6 ภาคการศึกษา)","เป็นผู้สำเร็จการศึกษาและมีผลการศึกษามาตรฐานในระบบการศึกษาอังกฤษอย่างใดอย่างหนึ่ง โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 3.00","เป็นผู้สำเร็จการศึกษาเทียบเท่าวุฒิการศึกษาชั้นมัธยมศึกษาตอนปลายปีที่ 6 ในหลักสูตรนานาชาติ International Baccalaureate (IB) และมีผลสอบมาตรฐานจากโรงเรียนในสังกัด โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 3.00","เป็นผู้สำเร็จการศึกษาเทียบเท่าวุฒิการศึกษาชั้นมัธยมศึกษาตอนปลายปีที่ 6 ในหลักสูตรนานาชาติ New Zealand National Certificate of Educational Achievement (NCEA) และมีผลสอบมาตรฐานจากโรงเรียนในสังกัด โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 3.00","สำหรับหลักสูตรอาชีวศึกษา","เป็นผู้กำลังศึกษาระดับประกาศนียบัตรวิชาชีพ ชั้นปีที่ 3 มีผลการเรียนระดับประกาศนียบัตรวิชาชีพ 1-3 (5 เทอม) ไม่น้อยกว่า 3.00","เป็นผู้สำเร็จการศึกษาระดับประกาศนียบัตรวิชาชีพ มีผลการเรียนระดับประกาศนียบัตรวิชาชีพ 1-3 (6 เทอม) ไม่น้อยกว่า 3.00","สำหรับหลักสูตรเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลาง (เช่น GED)","เป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษาของที่ประชุมอธิการบดีแห่งประเทศไทย","ต้องเป็นผู้สำเร็จการศึกษาในวุฒิ GED เรียบร้อยแล้ว","ต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 3.00","คุณสมบัติเฉพาะ","ต้องมีแฟ้มสะสมผลงานแสดงความสามารถด้านภาษาอังกฤษและภาษาจีน","ต้องมีคะแนนสอบวัดระดับภาษาอังกฤษอย่างใดอย่างหนึ่ง คือ CMU TEGS 65 หรือ IELTS 6.0 หรือ TOEFL iBT 78 หรือ TOEFL ITP 547 หรือ Duolingo 135 หรือ TOEIC 850 หรือ SAT EBRW 650 และต้องมีผลคะแนนสอบวัดระดับภาษาจีน (HSK4)"]'::jsonb, 'Portfolio ไม่เกิน 10 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":10}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":50},{"name":"สัมภาษณ์","weight_percent":50}]'::jsonb, '{"official_project_code":"00412401108010","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00412401108010\nวิทยาลัยนานาชาตินวัตกรรมดิจิทัล สาขา นวัตกรรมดิจิทัล (นานาชาติ ช่องทาง TCAS)\nหลักสูตร นานาชาติ รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ โครงการพิเศษอื่นๆ (โครงการรับนักเรียนที่มีความเป็นเลิศด้านภาษาอังกฤษและภาษาจีน )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 55,000 บาท\nเอกสารประกอบคำอธิบายสาขา\nBachelor of Science in Digital Innovation\nแนวทางการประกอบอาชีพ\nผู้ประกอบการธุรกิจสตาร์ทอัพ (Entrepreneur/Startup Founder), นวัตกรด้านเทคโนโลยีดิจิทัล (Work as an innovator/ technocrat in digital technologies), ผู้ทำงานในรูปแบบดิจิทัลโนแมด (Work as digital workforce/ digital nomad in private or public sectors), นักวิเคราะห์ธุรกิจ (Business Analyst), ผู้จัดการนวัตกรรมดิจิทัล (Innovation Manager), รอบที่ 1 Portfolio แบบ 1.1: 1\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 3.00\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 3.00\nสำหรับหลักสูตรนานาชาติ\nเป็นผู้กำลังศึกษาอยู่ Grade 12 ในหลักสูตรนานาชาติและจะมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 3.00 (5 ภาคการศึกษา)\nเป็นผู้สำเร็จการศึกษาใน Grade 12 ในหลักสูตรนานาชาติและมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 3.00 (6 ภาคการศึกษา)\nเป็นผู้กำลังศึกษาอยู่ Year 13 ในหลักสูตรนานาชาติและจะมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 3.00 (5 ภาคการศึกษา)\nเป็นผู้สำเร็จการศึกษาใน Year 13 ในหลักสูตรนานาชาติและมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 3.00 (6 ภาคการศึกษา)\nเป็นผู้สำเร็จการศึกษาและมีผลการศึกษามาตรฐานในระบบการศึกษาอังกฤษอย่างใดอย่างหนึ่ง โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 3.00\nเป็นผู้สำเร็จการศึกษาเทียบเท่าวุฒิการศึกษาชั้นมัธยมศึกษาตอนปลายปีที่ 6 ในหลักสูตรนานาชาติ International Baccalaureate (IB) และมีผลสอบมาตรฐานจากโรงเรียนในสังกัด โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 3.00\nเป็นผู้สำเร็จการศึกษาเทียบเท่าวุฒิการศึกษาชั้นมัธยมศึกษาตอนปลายปีที่ 6 ในหลักสูตรนานาชาติ New Zealand National Certificate of Educational Achievement (NCEA) และมีผลสอบมาตรฐานจากโรงเรียนในสังกัด โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 3.00\nสำหรับหลักสูตรอาชีวศึกษา\nเป็นผู้กำลังศึกษาระดับประกาศนียบัตรวิชาชีพ ชั้นปีที่ 3 มีผลการเรียนระดับประกาศนียบัตรวิชาชีพ 1-3 (5 เทอม) ไม่น้อยกว่า 3.00\nเป็นผู้สำเร็จการศึกษาระดับประกาศนียบัตรวิชาชีพ มีผลการเรียนระดับประกาศนียบัตรวิชาชีพ 1-3 (6 เทอม) ไม่น้อยกว่า 3.00\nสำหรับหลักสูตรเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลาง (เช่น GED)\nเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษาของที่ประชุมอธิการบดีแห่งประเทศไทย\nต้องเป็นผู้สำเร็จการศึกษาในวุฒิ GED เรียบร้อยแล้ว\nต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 3.00\nคุณสมบัติเฉพาะ\nต้องมีแฟ้มสะสมผลงานแสดงความสามารถด้านภาษาอังกฤษและภาษาจีน\nต้องมีคะแนนสอบวัดระดับภาษาอังกฤษอย่างใดอย่างหนึ่ง คือ CMU TEGS 65 หรือ IELTS 6.0 หรือ TOEFL iBT 78 หรือ TOEFL ITP 547 หรือ Duolingo 135 หรือ TOEIC 850 หรือ SAT EBRW 650 และต้องมีผลคะแนนสอบวัดระดับภาษาจีน (HSK4)\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nหลักฐานผลคะแนนที่ใช้คัดเลือก\nต้องมีผลคะแนนสอบวัดระดับภาษาอังกฤษอย่างใดอย่างหนึ่ง CMU TEG 65 หรือ IELTS 6.0 หรือ TOEFL iBT 78 หรือ TOEFL ITP 547 หรือ Duolingo 135 หรือ TOEIC 850 หรือ SAT EBRW 650\nต้องมีผลคะแนนสอบวัดระดับภาษาจีน HSK 4\nหลักฐานการชำระเงิน\nอื่น ๆ\nแฟ้มสะสมจะต้องนำเสนอด้วยภาษาอังกฤษ\nแฟ้มสะสมผลงานต้องแสดงความสามารถด้านภาษาอังกฤษและภาษาจีน\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 10 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 50 และ การสัมภาษณ์ ร้อยละ 50\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nข้อมูลพื้นฐานส่วนตัว (Resume) หรือประวัติของผู้สมัคร เป็นภาษาอังกฤษเท่านั้น\nต้องมีผลคะแนนสอบวัดระดับภาษาอังกฤษอย่างใดอย่างหนึ่ง CMU TEGS 65 หรือ IELTS 6.0 หรือ TOEFL iBT 78 หรือ TOEFL ITP 547 หรือ Duolingo 135 หรือ TOEIC 850 หรือ SAT EBRW 650\nต้องมีผลคะแนนสอบวัดระดับภาษาจีน HSK 4\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nบทความ (Statement of purpose) แสดงความสนใจการเข้าศึกษาต่อในหลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชานวัตกรรมดิจิทัล ประกอบการสมัครเข้าศึกษาในอนาคต และต้องเป็นภาษาอังกฤษเท่านั้น\nจำนวนตัวอักษรไม่ต่ำกว่า 300 คำ\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบรับรองผลการศึกษาระดับมัธยมศึกษาตอนปลาย หรือเทียบเท่า\nหมวดที่ 4 : กิจกรรม/รางวัล\nแฟ้มสะสมผลงานแสดงความสามารถด้านภาษาอังกฤษและภาษาจีน โดยจะต้องนำเสนอด้วยภาษาอังกฤษทั้งหมดเท่านั้น\nผลงาน รางวัล การอบรม หรือกิจกรรมเชิงวิชาการ หรือด้านอื่น ๆ ที่เกี่ยวข้องกับการแสดงความสามารถด้านภาษาอังกฤษและภาษาจีน\nผลการเรียนอักษรลำดับขั้น C ขึ้นไป ของกระบวนวิชาในหลักสูตร Advanced Placement Program (AP) หรือ ผลการเรียนจากวิทยาลัยการศึกษาตลอดชีวิต มหาวิทยาลัยเชียงใหม่ (LE) (ถ้ามี)\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nใบสมัคร\nบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nอื่น ๆ\nการสอบสัมภาษณ์ในหลักสูตรนวัตกรรมดิจิทัล สอบสัมภาษณ์ผ่านช่องทางออนไลน์เท่านั้น\n0"}'::jsonb, 'GPAX ≥ 3.00; Portfolio ไม่เกิน 10 หน้า; Portfolio 50% และสัมภาษณ์ 50%',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-digital-innovation'
where p.code = 'cmu-00412401108010-1-1'
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
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 2.00","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 2.00","เป็นผู้กำลังศึกษาอยู่ Grade 12 ในหลักสูตรนานาชาติและจะมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00 (5 ภาคการศึกษา)","เป็นผู้สำเร็จการศึกษาใน Grade 12 ในหลักสูตรนานาชาติและมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00 (6 ภาคการศึกษา)","เป็นผู้กำลังศึกษาอยู่ Year 13 ในหลักสูตรนานาชาติและจะมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00 (5 ภาคการศึกษา)","เป็นผู้สำเร็จการศึกษาใน Year 13 ในหลักสูตรนานาชาติและมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00 (6 ภาคการศึกษา)","เป็นผู้สำเร็จการศึกษาและมีผลการศึกษามาตรฐานในระบบการศึกษาอังกฤษอย่างใดอย่างหนึ่ง โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00","เป็นผู้สำเร็จการศึกษาเทียบเท่าวุฒิการศึกษาชั้นมัธยมศึกษาตอนปลายปีที่ 6 ในหลักสูตรนานาชาติ International Baccalaureate (IB) และมีผลสอบมาตรฐานจากโรงเรียนในสังกัด โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00","เป็นผู้สำเร็จการศึกษาเทียบเท่าวุฒิการศึกษาชั้นมัธยมศึกษาตอนปลายปีที่ 6 ในหลักสูตรนานาชาติ New Zealand National Certificate of Educational Achievement (NCEA) และมีผลสอบมาตรฐานจากโรงเรียนในสังกัด โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00","สำหรับหลักสูตรอาชีวศึกษา","เป็นผู้กำลังศึกษาระดับประกาศนียบัตรวิชาชีพ ชั้นปีที่ 3 มีผลการเรียนระดับประกาศนียบัตรวิชาชีพ 1-3 (5 เทอม) ไม่น้อยกว่า 2.00","เป็นผู้สำเร็จการศึกษาระดับประกาศนียบัตรวิชาชีพ มีผลการเรียนระดับประกาศนียบัตรวิชาชีพ 1-3 (6 เทอม) ไม่น้อยกว่า 2.00","สำหรับหลักสูตรเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลาง (เช่น GED)","เป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษาของที่ประชุมอธิการบดีแห่งประเทศไทย","ต้องเป็นผู้สำเร็จการศึกษาในวุฒิ GED เรียบร้อยแล้ว","ต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00","คุณสมบัติเฉพาะ","ต้องมีแฟ้มสะสมผลงานแสดงความสามารถด้านสตาร์ทอัพ หรือผู้ประกอบการดิจิทัล และต้องเป็นภาษาอังกฤษทั้งหมด","ต้องมีคะแนนสอบวัดระดับภาษาอังกฤษอย่างใดอย่างหนึ่ง CMU TEGS 65 หรือ IELTS 5.0 หรือ TOEFL iBT 45 หรือ TOEFL ITP 450 หรือ Duolingo 80 หรือ TOEIC 600 หรือ SAT EBRW 400"]'::jsonb, 'Portfolio ไม่เกิน 10 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":10}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":50},{"name":"สัมภาษณ์","weight_percent":50}]'::jsonb, '{"official_project_code":"00412401108020","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00412401108020\nวิทยาลัยนานาชาตินวัตกรรมดิจิทัล สาขา นวัตกรรมดิจิทัล (นานาชาติ ช่องทาง TCAS)\nหลักสูตร นานาชาติ รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ โครงการพิเศษอื่นๆ (โครงการรับนักเรียนที่มีความเป็นเลิศด้าน Startup หรือผู้ประกอบการดิจิทัล )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 55,000 บาท\nเอกสารประกอบคำอธิบายสาขา\nBachelor of Science in Digital Innovation\nแนวทางการประกอบอาชีพ\nผู้ประกอบการธุรกิจสตาร์ทอัพ (Entrepreneur/Startup Founder), นวัตกรด้านเทคโนโลยีดิจิทัล (Work as an innovator/ technocrat in digital technologies), ผู้ทำงานในรูปแบบดิจิทัลโนแมด (Work as digital workforce/ digital nomad in private or public sectors), นักวิเคราะห์ธุรกิจ (Business Analyst), ผู้จัดการนวัตกรรมดิจิทัล (Innovation Manager), รอบที่ 1 Portfolio แบบ 1.1: 2\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 2.00\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 2.00\nสำหรับหลักสูตรนานาชาติ\nเป็นผู้กำลังศึกษาอยู่ Grade 12 ในหลักสูตรนานาชาติและจะมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00 (5 ภาคการศึกษา)\nเป็นผู้สำเร็จการศึกษาใน Grade 12 ในหลักสูตรนานาชาติและมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00 (6 ภาคการศึกษา)\nเป็นผู้กำลังศึกษาอยู่ Year 13 ในหลักสูตรนานาชาติและจะมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00 (5 ภาคการศึกษา)\nเป็นผู้สำเร็จการศึกษาใน Year 13 ในหลักสูตรนานาชาติและมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00 (6 ภาคการศึกษา)\nเป็นผู้สำเร็จการศึกษาและมีผลการศึกษามาตรฐานในระบบการศึกษาอังกฤษอย่างใดอย่างหนึ่ง โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00\nเป็นผู้สำเร็จการศึกษาเทียบเท่าวุฒิการศึกษาชั้นมัธยมศึกษาตอนปลายปีที่ 6 ในหลักสูตรนานาชาติ International Baccalaureate (IB) และมีผลสอบมาตรฐานจากโรงเรียนในสังกัด โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00\nเป็นผู้สำเร็จการศึกษาเทียบเท่าวุฒิการศึกษาชั้นมัธยมศึกษาตอนปลายปีที่ 6 ในหลักสูตรนานาชาติ New Zealand National Certificate of Educational Achievement (NCEA) และมีผลสอบมาตรฐานจากโรงเรียนในสังกัด โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00\nสำหรับหลักสูตรอาชีวศึกษา\nเป็นผู้กำลังศึกษาระดับประกาศนียบัตรวิชาชีพ ชั้นปีที่ 3 มีผลการเรียนระดับประกาศนียบัตรวิชาชีพ 1-3 (5 เทอม) ไม่น้อยกว่า 2.00\nเป็นผู้สำเร็จการศึกษาระดับประกาศนียบัตรวิชาชีพ มีผลการเรียนระดับประกาศนียบัตรวิชาชีพ 1-3 (6 เทอม) ไม่น้อยกว่า 2.00\nสำหรับหลักสูตรเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลาง (เช่น GED)\nเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษาของที่ประชุมอธิการบดีแห่งประเทศไทย\nต้องเป็นผู้สำเร็จการศึกษาในวุฒิ GED เรียบร้อยแล้ว\nต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00\nคุณสมบัติเฉพาะ\nต้องมีแฟ้มสะสมผลงานแสดงความสามารถด้านสตาร์ทอัพ หรือผู้ประกอบการดิจิทัล และต้องเป็นภาษาอังกฤษทั้งหมด\nต้องมีคะแนนสอบวัดระดับภาษาอังกฤษอย่างใดอย่างหนึ่ง CMU TEGS 65 หรือ IELTS 5.0 หรือ TOEFL iBT 45 หรือ TOEFL ITP 450 หรือ Duolingo 80 หรือ TOEIC 600 หรือ SAT EBRW 400\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nหลักฐานผลคะแนนที่ใช้คัดเลือก\nต้องมีคะแนนสอบวัดระดับภาษาอังกฤษอย่างใดอย่างหนึ่ง CMU TEGS 65 หรือ IELTS 5.0 หรือ TOEFL iBT 45 หรือ TOEFL ITP 450 หรือ Duolingo 80 หรือ TOEIC 600 หรือ SAT EBRW 400\nหลักฐานการชำระเงิน\nอื่น ๆ\nแฟ้มสะสมผลงานจะต้องเป็นภาษาอังกฤษเท่านั้น\nแฟ้มสะสมผลงานแสดงความสามารถด้านสตาร์ทอัพ หรือผู้ประกอบการดิจิทัล\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 10 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 50 และ การสัมภาษณ์ ร้อยละ 50\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nข้อมูลพื้นฐานส่วนตัว (Resume) หรือประวัติของผู้สมัคร เป็นภาษาอังกฤษเท่านั้น\nต้องมีคะแนนสอบวัดระดับภาษาอังกฤษอย่างใดอย่างหนึ่ง CMU TEGS 65 หรือ IELTS 5.0 หรือ TOEFL iBT 45 หรือ TOEFL ITP 450 หรือ Duolingo 80 หรือ TOEIC 600 หรือ SAT EBRW 400\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nบทความแสดงความสนใจประกอบการสมัครเข้าศึกษาในอนาคต (Statement of purpose) เป็นภาษาอังกฤษเท่านั้น\nจำนวนตัวอักษรไม่ต่ำกว่า 300 คำ\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบรับรองผลการศึกษาระดับมัธยมศึกษาตอนปลาย หรือเทียบเท่า\nหมวดที่ 4 : กิจกรรม/รางวัล\nแฟ้มสะสมผลงานแสดงความสามารถด้านสตาร์ทอัพ หรือผู้ประกอบการดิจิทัล โดยจะต้องนำเสนอด้วยภาษาอังกฤษทั้งหมดเท่านั้น\nผลงาน รางวัล การอบรม หรือกิจกรรมเชิงวิชาการ หรือด้านอื่น ๆ ที่เกี่ยวข้องกับความสามารถด้านสตาร์ทอัพ หรือผู้ประกอบการดิจิทัล\nผลงานด้านธุรกิจ ผลงานด้านการประกอบธุรกิจ ผลงานด้านสตาร์ทอัพของผู้สมัครที่กำลังดำเนินกิจการอยู่\nผลการเรียนอักษรลำดับขั้น C ขึ้นไป ของกระบวนวิชาในหลักสูตร Advanced Placement Program (AP) หรือ ผลการเรียนจากวิทยาลัยการศึกษาตลอดชีวิต มหาวิทยาลัยเชียงใหม่ (LE) (ถ้ามี)\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nใบสมัคร\nบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nอื่น ๆ\nการสอบสัมภาษณ์ในหลักสูตรนวัตกรรมดิจิทัล สอบสัมภาษณ์ผ่านช่องทางออนไลน์เท่านั้น\n0"}'::jsonb, 'GPAX ≥ 2.00; Portfolio ไม่เกิน 10 หน้า; Portfolio 50% และสัมภาษณ์ 50%',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-digital-innovation'
where p.code = 'cmu-00412401108020-1-1'
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
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 2.00","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 2.00","เป็นผู้กำลังศึกษาอยู่ Grade 12 ในหลักสูตรนานาชาติและจะมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00 (5 ภาคการศึกษา)","เป็นผู้สำเร็จการศึกษาใน Grade 12 ในหลักสูตรนานาชาติและมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00 (6 ภาคการศึกษา)","เป็นผู้กำลังศึกษาอยู่ Year 13 ในหลักสูตรนานาชาติและจะมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00 (5 ภาคการศึกษา)","เป็นผู้สำเร็จการศึกษาใน Year 13 ในหลักสูตรนานาชาติและมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00 (6 ภาคการศึกษา)","เป็นผู้สำเร็จการศึกษาและมีผลการศึกษามาตรฐานในระบบการศึกษาอังกฤษอย่างใดอย่างหนึ่ง โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00","เป็นผู้สำเร็จการศึกษาเทียบเท่าวุฒิการศึกษาชั้นมัธยมศึกษาตอนปลายปีที่ 6 ในหลักสูตรนานาชาติ International Baccalaureate (IB) และมีผลสอบมาตรฐานจากโรงเรียนในสังกัด โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00","เป็นผู้สำเร็จการศึกษาเทียบเท่าวุฒิการศึกษาชั้นมัธยมศึกษาตอนปลายปีที่ 6 ในหลักสูตรนานาชาติ New Zealand National Certificate of Educational Achievement (NCEA) และมีผลสอบมาตรฐานจากโรงเรียนในสังกัด โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00","สำหรับหลักสูตรอาชีวศึกษา","เป็นผู้กำลังศึกษาระดับประกาศนียบัตรวิชาชีพ ชั้นปีที่ 3 มีผลการเรียนระดับประกาศนียบัตรวิชาชีพ 1-3 (5 เทอม) ไม่น้อยกว่า 2.00","เป็นผู้สำเร็จการศึกษาระดับประกาศนียบัตรวิชาชีพ มีผลการเรียนระดับประกาศนียบัตรวิชาชีพ 1-3 (6 เทอม) ไม่น้อยกว่า 2.00","สำหรับหลักสูตรเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลาง (เช่น GED)","เป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษาของที่ประชุมอธิการบดีแห่งประเทศไทย","ต้องเป็นผู้สำเร็จการศึกษาในวุฒิ GED เรียบร้อยแล้ว","ต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00","คุณสมบัติเฉพาะ","แฟ้มสะสมผลงานแสดงความสามารถด้านการสื่อสารในช่องทางดิจิทัล (Digital Influencer)","ต้องมีคะแนนสอบวัดระดับภาษาอังกฤษอย่างใดอย่างหนึ่ง CMU TEGS 65 หรือ IELTS 5.0 หรือ TOEFL iBT 45 หรือ TOEFL ITP 450 หรือ Duolingo 80 หรือ TOEIC 600 หรือ SAT EBRW 400"]'::jsonb, 'Portfolio ไม่เกิน 10 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":10}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":50},{"name":"สัมภาษณ์","weight_percent":50}]'::jsonb, '{"official_project_code":"00412401108030","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00412401108030\nวิทยาลัยนานาชาตินวัตกรรมดิจิทัล สาขา นวัตกรรมดิจิทัล (นานาชาติ ช่องทาง TCAS)\nหลักสูตร นานาชาติ รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ โครงการพิเศษอื่นๆ (โครงการรับนักเรียนที่มีความเป็นเลิศด้านการสื่อสารในช่องทางดิจิทัล (Digital Influencer) )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 55,000 บาท\nเอกสารประกอบคำอธิบายสาขา\nBachelor of Science in Digital Innovation\nแนวทางการประกอบอาชีพ\nผู้ประกอบการธุรกิจสตาร์ทอัพ (Entrepreneur/Startup Founder), นวัตกรด้านเทคโนโลยีดิจิทัล (Work as an innovator/ technocrat in digital technologies), ผู้ทำงานในรูปแบบดิจิทัลโนแมด (Work as digital workforce/ digital nomad in private or public sectors), นักวิเคราะห์ธุรกิจ (Business Analyst), ผู้จัดการนวัตกรรมดิจิทัล (Innovation Manager), รอบที่ 1 Portfolio แบบ 1.1: 2\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 2.00\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 2.00\nสำหรับหลักสูตรนานาชาติ\nเป็นผู้กำลังศึกษาอยู่ Grade 12 ในหลักสูตรนานาชาติและจะมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00 (5 ภาคการศึกษา)\nเป็นผู้สำเร็จการศึกษาใน Grade 12 ในหลักสูตรนานาชาติและมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00 (6 ภาคการศึกษา)\nเป็นผู้กำลังศึกษาอยู่ Year 13 ในหลักสูตรนานาชาติและจะมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00 (5 ภาคการศึกษา)\nเป็นผู้สำเร็จการศึกษาใน Year 13 ในหลักสูตรนานาชาติและมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00 (6 ภาคการศึกษา)\nเป็นผู้สำเร็จการศึกษาและมีผลการศึกษามาตรฐานในระบบการศึกษาอังกฤษอย่างใดอย่างหนึ่ง โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00\nเป็นผู้สำเร็จการศึกษาเทียบเท่าวุฒิการศึกษาชั้นมัธยมศึกษาตอนปลายปีที่ 6 ในหลักสูตรนานาชาติ International Baccalaureate (IB) และมีผลสอบมาตรฐานจากโรงเรียนในสังกัด โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00\nเป็นผู้สำเร็จการศึกษาเทียบเท่าวุฒิการศึกษาชั้นมัธยมศึกษาตอนปลายปีที่ 6 ในหลักสูตรนานาชาติ New Zealand National Certificate of Educational Achievement (NCEA) และมีผลสอบมาตรฐานจากโรงเรียนในสังกัด โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00\nสำหรับหลักสูตรอาชีวศึกษา\nเป็นผู้กำลังศึกษาระดับประกาศนียบัตรวิชาชีพ ชั้นปีที่ 3 มีผลการเรียนระดับประกาศนียบัตรวิชาชีพ 1-3 (5 เทอม) ไม่น้อยกว่า 2.00\nเป็นผู้สำเร็จการศึกษาระดับประกาศนียบัตรวิชาชีพ มีผลการเรียนระดับประกาศนียบัตรวิชาชีพ 1-3 (6 เทอม) ไม่น้อยกว่า 2.00\nสำหรับหลักสูตรเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลาง (เช่น GED)\nเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษาของที่ประชุมอธิการบดีแห่งประเทศไทย\nต้องเป็นผู้สำเร็จการศึกษาในวุฒิ GED เรียบร้อยแล้ว\nต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.00\nคุณสมบัติเฉพาะ\nแฟ้มสะสมผลงานแสดงความสามารถด้านการสื่อสารในช่องทางดิจิทัล (Digital Influencer)\nต้องมีคะแนนสอบวัดระดับภาษาอังกฤษอย่างใดอย่างหนึ่ง CMU TEGS 65 หรือ IELTS 5.0 หรือ TOEFL iBT 45 หรือ TOEFL ITP 450 หรือ Duolingo 80 หรือ TOEIC 600 หรือ SAT EBRW 400\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nหลักฐานผลคะแนนที่ใช้คัดเลือก\nต้องมีคะแนนสอบวัดระดับภาษาอังกฤษอย่างใดอย่างหนึ่ง CMU TEGS 65 หรือ IELTS 5.0 หรือ TOEFL iBT 45 หรือ TOEFL ITP 450 หรือ Duolingo 80 หรือ TOEIC 600 หรือ SAT EBRW 400\nหลักฐานการชำระเงิน\nอื่น ๆ\nแฟ้มสะสมผลงานจะต้องเป็นภาษาอังกฤษเท่านั้น\nแฟ้มสะสมผลงานแสดงความสามารถด้านการสื่อสารในช่องทางดิจิทัล (Digital Influencer)\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 10 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 50 และ การสัมภาษณ์ ร้อยละ 50\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nข้อมูลพื้นฐานส่วนตัว (Resume) หรือประวัติของผู้สมัคร เป็นภาษาอังกฤษเท่านั้น\nต้องมีคะแนนสอบวัดระดับภาษาอังกฤษอย่างใดอย่างหนึ่ง CMU TEGS 65 หรือ IELTS 5.0 หรือ TOEFL iBT 45 หรือ TOEFL ITP 450 หรือ Duolingo 80 หรือ TOEIC 600 หรือ SAT EBRW 400\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nบทความ (Statement of purpose) แสดงความสนใจการเข้าศึกษาต่อในหลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชานวัตกรรมดิจิทัล ประกอบการสมัครเข้าศึกษาในอนาคต และต้องเป็นภาษาอังกฤษเท่านั้น\nจำนวนตัวอักษรไม่ต่ำกว่า 300 คำ\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nใบรับรองผลการศึกษาระดับมัธยมศึกษาตอนปลาย หรือเทียบเท่า\nหมวดที่ 4 : กิจกรรม/รางวัล\nแฟ้มสะสมผลงานแสดงความเป็นเลิศด้านการสื่อสารในช่องทางดิจิทัล (Digital Influencer) โดยจะต้องนำเสนอด้วยภาษาอังกฤษทั้งหมดเท่านั้น\nผลงาน รางวัล การอบรม หรือกิจกรรมเชิงวิชาการ หรือด้านอื่น ๆ ที่เกี่ยวข้องกับความสามารถด้านการสื่อสารในช่องทางดิจิทัล\nผลงานด้านการเป็นอินฟลูเอนเซอร์บนแพลตฟอร์มโซเซียลออนไลน์ต่างๆ\nผลการเรียนอักษรลำดับขั้น C ขึ้นไป ของกระบวนวิชาในหลักสูตร Advanced Placement Program (AP) หรือ ผลการเรียนจากวิทยาลัยการศึกษาตลอดชีวิต มหาวิทยาลัยเชียงใหม่ (LE) (ถ้ามี)\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nใบสมัคร\nบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nอื่น ๆ\nการสอบสัมภาษณ์ในหลักสูตรนวัตกรรมดิจิทัล สอบสัมภาษณ์ผ่านช่องทางออนไลน์เท่านั้น\n0"}'::jsonb, 'GPAX ≥ 2.00; Portfolio ไม่เกิน 10 หน้า; Portfolio 50% และสัมภาษณ์ 50%',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-digital-innovation'
where p.code = 'cmu-00412401108030-1-1'
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
    '{}'::jsonb, '["เป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 2.75","เป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 2.75","เป็นผู้กำลังศึกษาอยู่ Grade 12 ในหลักสูตรนานาชาติและจะมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.75 (5 ภาคการศึกษา)","เป็นผู้สำเร็จการศึกษาใน Grade 12 ในหลักสูตรนานาชาติและมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.75 (6 ภาคการศึกษา)","เป็นผู้กำลังศึกษาอยู่ Year 13 ในหลักสูตรนานาชาติและจะมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.75 (5 ภาคการศึกษา)","เป็นผู้สำเร็จการศึกษาใน Year 13 ในหลักสูตรนานาชาติและมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.75 (6 ภาคการศึกษา)","เป็นผู้สำเร็จการศึกษาและมีผลการศึกษามาตรฐานในระบบการศึกษาอังกฤษอย่างใดอย่างหนึ่ง โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.75","เป็นผู้สำเร็จการศึกษาเทียบเท่าวุฒิการศึกษาชั้นมัธยมศึกษาตอนปลายปีที่ 6 ในหลักสูตรนานาชาติ International Baccalaureate (IB) และมีผลสอบมาตรฐานจากโรงเรียนในสังกัด โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.75","เป็นผู้สำเร็จการศึกษาเทียบเท่าวุฒิการศึกษาชั้นมัธยมศึกษาตอนปลายปีที่ 6 ในหลักสูตรนานาชาติ New Zealand National Certificate of Educational Achievement (NCEA) และมีผลสอบมาตรฐานจากโรงเรียนในสังกัด โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.75","สำหรับหลักสูตรอาชีวศึกษา","เป็นผู้กำลังศึกษาระดับประกาศนียบัตรวิชาชีพ ชั้นปีที่ 3 มีผลการเรียนระดับประกาศนียบัตรวิชาชีพ 1-3 (5 เทอม) ไม่น้อยกว่า 2.75","เป็นผู้สำเร็จการศึกษาระดับประกาศนียบัตรวิชาชีพ มีผลการเรียนระดับประกาศนียบัตรวิชาชีพ 1-3 (6 เทอม) ไม่น้อยกว่า 2.75","สำหรับหลักสูตรเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลาง (เช่น GED)","เป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษาของที่ประชุมอธิการบดีแห่งประเทศไทย","ต้องเป็นผู้สำเร็จการศึกษาในวุฒิ GED เรียบร้อยแล้ว","ต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.75","คุณสมบัติเฉพาะ","รับนักเรียนที่เป็นทายาทโดยกำเนิดในครอบครัวผู้ประกอบการ (บิดา มารดา หรือพี่น้องร่วมบิดามารดา) โดยไม่จำกัดลักษณะและรูปแบบกิจการ ไม่ว่าจะเป็นอาชีพอิสระ กิจการ SME กิจการเพื่อชุมชน กิจการแฟรนไชส์ หรือธุรกิจห้างร้านบริษัท ทั้งนี้เพื่อสร้างโอกาสให้นักเรียนจากครอบครัวผู้ประกอบการในหลากหลายบริบทสามารถเข้าถึงการศึกษาที่มีคุณภาพอย่างเท่าเทียม","มีผลงาน รางวัล หรือกิจกรรมเชิงวิชาการ หรือด้านอื่น ๆ ที่เกี่ยวข้องที่ผู้สมัครเคยได้รับ หรือมีประสบการณ์ในด้านธุรกิจออนไลน์ สตาร์ทอัพ หรือโครงการอื่น ๆ ที่เกี่ยวข้องระดับมัธยมศึกษาตอนปลาย","มีผลสอบมาตรฐานภาษาอังกฤษ (อาทิ CMU TEGS, TOEIC, IELTS หรือ TOEFL เป็นต้น) หรือ ผลสอบมาตรฐานภาษาจีน (อาทิ HSK เป็นต้น) (ถ้ามี)","มีผลการเรียนอักษรลำดับขั้น C ขึ้นไป ของกระบวนวิชาในหลักสูตร Advanced Placement Program (AP) หรือ ผลการเรียนจากวิทยาลัยการศึกษาตลอดชีวิต มหาวิทยาลัยเชียงใหม่ (LE) (ถ้ามี)","กรณีผ่านการคัดเลือก ผู้ยืนยันสิทธิ์รอบที่ 1 ที่ผ่านการคัดเลือกด้วยคุณสมบัติและเกณฑ์ปกติแล้ว แต่มีผลคะแนนในส่วนของภาษาอังกฤษประกอบการคัดเลือกที่ผ่านมาตามรายละเอียดดังนี้","ผลสอบคะแนน TOEIC น้อยกว่าหรือเท่ากับ 599 คะแนน หรือ","ผลสอบ IELTS น้อยกว่าหรือเท่ากับ 4.5 หรือ","ผลสอบคะแนน TOEFL (iBT) น้อยกว่าหรือเท่ากับ 60 คะแนน หรือ","ผลสอบคะแนน TOEFL (CBT) น้อยกว่าหรือเท่ากับ 179 คะแนน หรือ","ผลสอบคะแนน TOEFL (ITP/PBT) น้อยกว่าหรือเท่ากับ 499 คะแนน หรือ","ผลสอบคะแนน New SAT (เฉพาะวิชาภาษาอังกฤษ Reading & Writing) น้อยกว่าหรือเท่ากับ 319 คะแนน หรือ","ผลสอบ A-Level วิชาภาษาอังกฤษ น้อยกว่าหรือเท่ากับ 59 หรือ","ผลสอบคะแนน CMU TEGS น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ","ผลสอบคะแนน CU-TEP น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ","ผลสอบคะแนน TU-GET (PBT) น้อยกว่าหรือเท่ากับ 499 คะแนน หรือ","ผลสอบคะแนน TU-GET (CBT) น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ","ผลสอบคะแนน Duolingo (DET) น้อยกว่าหรือเท่ากับ 84 คะแนน หรือ","ไม่มีผลสอบคะแนนภาษาอังกฤษตามดังกล่าว","ผู้ยืนยันสิทธิ์ในรอบที่ 1 ที่ผ่านการคัดเลือกด้วยผลคะแนนตามที่ระบุในข้างต้นนี้ ต้องลงทะเบียนคอร์สเรียนปรับพื้นฐานภาษาอังกฤษ Pre-sessional English สามารถดูรายละเอียดเพิ่มเติมเกี่ยวกับคอร์สเรียน Pre-sessional English ได้ใน www.icdi.cmu.ac.th"]'::jsonb, 'Portfolio ไม่เกิน 10 หน้า ตามโครงสร้างที่ประกาศ',
    '{"max_pages":10}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานการชำระเงิน","Portfolio และเอกสารเฉพาะโครงการตามประกาศ"]'::jsonb,
    '[{"name":"Portfolio","weight_percent":50},{"name":"สัมภาษณ์","weight_percent":50}]'::jsonb, '{"official_project_code":"00412401108040","official_criteria_text":"คณะ/สาขาวิชา รอบ จำนวนรับตาม ประกาศ(คน) เกณฑ์การรับ จำนวนผู้สมัคร\nรหัสโครงการ 00412401108040\nวิทยาลัยนานาชาตินวัตกรรมดิจิทัล สาขา นวัตกรรมดิจิทัล (นานาชาติ ช่องทาง TCAS)\nหลักสูตร นานาชาติ รูปแบบของหลักสูตร ปกติ\nประเภทโครงการ โครงการพิเศษอื่นๆ (โครงการรับนักเรียนที่มีผลการเรียนดีและเป็นทายาทของครอบครัวผู้ประกอบการทุกประเภท )\nค่าธรรมเนียมการศึกษา ภาคการศึกษาแรก 55,000 บาท\nเอกสารประกอบคำอธิบายสาขา\nBachelor of Science in Digital Innovation\nแนวทางการประกอบอาชีพ\nผู้ประกอบการธุรกิจสตาร์ทอัพ (Entrepreneur/Startup Founder), นวัตกรด้านเทคโนโลยีดิจิทัล (Work as an innovator/ technocrat in digital technologies), ผู้ทำงานในรูปแบบดิจิทัลโนแมด (Work as digital workforce/ digital nomad in private or public sectors), นักวิเคราะห์ธุรกิจ (Business Analyst), ผู้จัดการนวัตกรรมดิจิทัล (Innovation Manager), รอบที่ 1 Portfolio แบบ 1.1: 4\nแบบ 1.2: 0 คุณสมบัติผู้สมัคร\nสำหรับหลักสูตรแกนกลางการศึกษาขั้นพื้นฐานฯ\nเป็นผู้กำลังศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (5 เทอม) ไม่น้อยกว่า 2.75\nเป็นผู้สำเร็จการศึกษาชั้นมัธยมศึกษาปีที่ 6 มีผลการเรียนเฉลี่ยสะสมชั้นมัธยมศึกษาปีที่ 4-6 (6 เทอม) ไม่น้อยกว่า 2.75\nสำหรับหลักสูตรนานาชาติ\nเป็นผู้กำลังศึกษาอยู่ Grade 12 ในหลักสูตรนานาชาติและจะมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.75 (5 ภาคการศึกษา)\nเป็นผู้สำเร็จการศึกษาใน Grade 12 ในหลักสูตรนานาชาติและมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.75 (6 ภาคการศึกษา)\nเป็นผู้กำลังศึกษาอยู่ Year 13 ในหลักสูตรนานาชาติและจะมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.75 (5 ภาคการศึกษา)\nเป็นผู้สำเร็จการศึกษาใน Year 13 ในหลักสูตรนานาชาติและมีผลสอบมาตรฐานจากโรงเรียนในสังกัด และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.75 (6 ภาคการศึกษา)\nเป็นผู้สำเร็จการศึกษาและมีผลการศึกษามาตรฐานในระบบการศึกษาอังกฤษอย่างใดอย่างหนึ่ง โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.75\nเป็นผู้สำเร็จการศึกษาเทียบเท่าวุฒิการศึกษาชั้นมัธยมศึกษาตอนปลายปีที่ 6 ในหลักสูตรนานาชาติ International Baccalaureate (IB) และมีผลสอบมาตรฐานจากโรงเรียนในสังกัด โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.75\nเป็นผู้สำเร็จการศึกษาเทียบเท่าวุฒิการศึกษาชั้นมัธยมศึกษาตอนปลายปีที่ 6 ในหลักสูตรนานาชาติ New Zealand National Certificate of Educational Achievement (NCEA) และมีผลสอบมาตรฐานจากโรงเรียนในสังกัด โดยเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลาย ในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษา ของที่ประชุมอธิการบดีแห่งประเทศไทย และต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.75\nสำหรับหลักสูตรอาชีวศึกษา\nเป็นผู้กำลังศึกษาระดับประกาศนียบัตรวิชาชีพ ชั้นปีที่ 3 มีผลการเรียนระดับประกาศนียบัตรวิชาชีพ 1-3 (5 เทอม) ไม่น้อยกว่า 2.75\nเป็นผู้สำเร็จการศึกษาระดับประกาศนียบัตรวิชาชีพ มีผลการเรียนระดับประกาศนียบัตรวิชาชีพ 1-3 (6 เทอม) ไม่น้อยกว่า 2.75\nสำหรับหลักสูตรเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลาง (เช่น GED)\nเป็นไปตามประกาศเรื่อง เกณฑ์การเทียบวุฒิการศึกษาเท่ากับชั้นมัธยมศึกษาตอนปลายในระบบการคัดเลือกกลางบุคคลเข้าศึกษาในสถาบันอุดมศึกษาของที่ประชุมอธิการบดีแห่งประเทศไทย\nต้องเป็นผู้สำเร็จการศึกษาในวุฒิ GED เรียบร้อยแล้ว\nต้องมีผลการเรียนเฉลี่ยสะสมไม่น้อยกว่า 2.75\nคุณสมบัติเฉพาะ\nรับนักเรียนที่เป็นทายาทโดยกำเนิดในครอบครัวผู้ประกอบการ (บิดา มารดา หรือพี่น้องร่วมบิดามารดา) โดยไม่จำกัดลักษณะและรูปแบบกิจการ ไม่ว่าจะเป็นอาชีพอิสระ กิจการ SME กิจการเพื่อชุมชน กิจการแฟรนไชส์ หรือธุรกิจห้างร้านบริษัท ทั้งนี้เพื่อสร้างโอกาสให้นักเรียนจากครอบครัวผู้ประกอบการในหลากหลายบริบทสามารถเข้าถึงการศึกษาที่มีคุณภาพอย่างเท่าเทียม\nมีผลงาน รางวัล หรือกิจกรรมเชิงวิชาการ หรือด้านอื่น ๆ ที่เกี่ยวข้องที่ผู้สมัครเคยได้รับ หรือมีประสบการณ์ในด้านธุรกิจออนไลน์ สตาร์ทอัพ หรือโครงการอื่น ๆ ที่เกี่ยวข้องระดับมัธยมศึกษาตอนปลาย\nมีผลสอบมาตรฐานภาษาอังกฤษ (อาทิ CMU TEGS, TOEIC, IELTS หรือ TOEFL เป็นต้น) หรือ ผลสอบมาตรฐานภาษาจีน (อาทิ HSK เป็นต้น) (ถ้ามี)\nมีผลการเรียนอักษรลำดับขั้น C ขึ้นไป ของกระบวนวิชาในหลักสูตร Advanced Placement Program (AP) หรือ ผลการเรียนจากวิทยาลัยการศึกษาตลอดชีวิต มหาวิทยาลัยเชียงใหม่ (LE) (ถ้ามี)\nกรณีผ่านการคัดเลือก ผู้ยืนยันสิทธิ์รอบที่ 1 ที่ผ่านการคัดเลือกด้วยคุณสมบัติและเกณฑ์ปกติแล้ว แต่มีผลคะแนนในส่วนของภาษาอังกฤษประกอบการคัดเลือกที่ผ่านมาตามรายละเอียดดังนี้\nผลสอบคะแนน TOEIC น้อยกว่าหรือเท่ากับ 599 คะแนน หรือ\nผลสอบ IELTS น้อยกว่าหรือเท่ากับ 4.5 หรือ\nผลสอบคะแนน TOEFL (iBT) น้อยกว่าหรือเท่ากับ 60 คะแนน หรือ\nผลสอบคะแนน TOEFL (CBT) น้อยกว่าหรือเท่ากับ 179 คะแนน หรือ\nผลสอบคะแนน TOEFL (ITP/PBT) น้อยกว่าหรือเท่ากับ 499 คะแนน หรือ\nผลสอบคะแนน New SAT (เฉพาะวิชาภาษาอังกฤษ Reading & Writing) น้อยกว่าหรือเท่ากับ 319 คะแนน หรือ\nผลสอบ A-Level วิชาภาษาอังกฤษ น้อยกว่าหรือเท่ากับ 59 หรือ\nผลสอบคะแนน CMU TEGS น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ\nผลสอบคะแนน CU-TEP น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ\nผลสอบคะแนน TU-GET (PBT) น้อยกว่าหรือเท่ากับ 499 คะแนน หรือ\nผลสอบคะแนน TU-GET (CBT) น้อยกว่าหรือเท่ากับ 59 คะแนน หรือ\nผลสอบคะแนน Duolingo (DET) น้อยกว่าหรือเท่ากับ 84 คะแนน หรือ\nไม่มีผลสอบคะแนนภาษาอังกฤษตามดังกล่าว\nผู้ยืนยันสิทธิ์ในรอบที่ 1 ที่ผ่านการคัดเลือกด้วยผลคะแนนตามที่ระบุในข้างต้นนี้ ต้องลงทะเบียนคอร์สเรียนปรับพื้นฐานภาษาอังกฤษ Pre-sessional English สามารถดูรายละเอียดเพิ่มเติมเกี่ยวกับคอร์สเรียน Pre-sessional English ได้ใน www.icdi.cmu.ac.th\nเอกสารประกอบการสมัคร\nส่งเอกสารทางออนไลน์เท่านั้น\nใบสมัคร\nสำเนาบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nหลักฐานการชำระเงิน\nอื่น ๆ\nแฟ้มสะสมผลงานจะต้องเป็นภาษาอังกฤษเท่านั้น\nแฟ้มสะสมผลงาน (Portfolio) จำนวนหน้าไม่เกิน 10 หน้า\nค่าน้ำหนักแฟ้มสะสมผลงาน ร้อยละ 50 และ การสัมภาษณ์ ร้อยละ 50\nจัดทำผลงานผ่าน TCASFolio และส่ง URL TCASFolio หรือ ไฟล์ PDF หรือ จัดทำผลงานด้วยตนเอง และส่งแบบไฟล์ PDF หรือ URL สำหรับเข้าถึงผลงาน\nหมวดที่ 1 : ข้อมูลพื้นฐาน ข้อมูลส่วนตัว/คะแนนสอบ\nข้อมูลพื้นฐานส่วนตัว (Resume) หรือประวัติของผู้สมัคร เป็นภาษาอังกฤษเท่านั้น\nหมวดที่ 2 : เรียงความ/คำนำ/Statement of purpose\nบทความ (Statement of purpose) แสดงความสนใจการเข้าศึกษาต่อในหลักสูตรวิทยาศาสตรบัณฑิต สาขาวิชานวัตกรรมดิจิทัล ประกอบการสมัครเข้าศึกษาในอนาคต และต้องเป็นภาษาอังกฤษเท่านั้น\nจำนวนตัวอักษรไม่ต่ำกว่า 300 คำ\nหมวดที่ 3 : หนังสือรับรอง (Recommendation letter)\nการรับรองด้านการศึกษา\nใบรับรองผลการศึกษาระดับมัธยมศึกษาตอนปลาย หรือเทียบเท่า\nการรับรองการเป็นทายาทของครอบครัวผู้ประกอบการ\nกรณีจดทะเบียนบริษัทเป็นนิติบุคคล: ผู้สมัครต้องแนบเอกสารเพิ่มเติมดังต่อไปนี้\nหนังสือจดทะเบียนและชื่อเจ้าของอย่างถูกต้องในฐานข้อมูลกรมพัฒนาธุรกิจการค้า (DBD)\nเอกสารหลักฐานทางราชการระบุตัวตนว่าเป็นทายาทร่วมอย่างชัดเจน\nกรณีไม่ได้จดทะเบียนบริษัทเป็นนิติบุคคล: ผู้สมัครต้องแนบเอกสารและหลักฐานทางเพิ่มเติมดังต่อไปนี้\nผู้สมัครต้องอัดคลิปวีดีโอแนะนำและแสดงเนื้อหาที่ระบุถึงการประกอบอาชีพธุรกิจของบิดา-มารดาของครอบครัวให้ชัดเจน โดยมีความยาวไม่เกิน 5 นาที ผ่านลิงก์ Google Drive แนบในแฟ้มสะสมผลงานที่สามารถกดลิงก์ผ่าน File หรือ Scan QR-Code\nเอกสารหลักฐานทางราชการระบุตัวตนว่าเป็นทายาทร่วมอย่างชัดเจน\nหมวดที่ 4 : กิจกรรม/รางวัล\nแฟ้มสะสมผลงานจะต้องเป็นภาษาอังกฤษทั้งหมด\nผลงาน รางวัล หรือกิจกรรมเชิงวิชาการ หรือด้านอื่น ๆ ที่เกี่ยวข้องที่ผู้สมัครเคยได้รับ หรือมีประสบการณ์ในด้านธุรกิจออนไลน์ สตาร์ทอัพ หรือโครงการอื่น ๆ ที่เกี่ยวข้องระดับมัธยมศึกษาตอนปลาย\nผลสอบมาตรฐานภาษาอังกฤษ (อาทิ CMU TEGS, TOEIC, IELTS หรือ TOEFL เป็นต้น) หรือ ผลสอบมาตรฐานภาษาจีน (อาทิ HSK เป็นต้น) (ถ้ามี)\nผลการเรียนอักษรลำดับขั้น C ขึ้นไป ของกระบวนวิชาในหลักสูตร Advanced Placement Program (AP) หรือ ผลการเรียนจากวิทยาลัยการศึกษาตลอดชีวิต มหาวิทยาลัยเชียงใหม่ (LE) (ถ้ามี)\nหมวดที่่ 5 : ข้อคำถาม\nไม่มี\nเอกสารประกอบการสัมภาษณ์\nใบสมัคร\nบัตรประจำตัวประชาชน\nใบแสดงผลการเรียน\nอื่น ๆ\nการสอบสัมภาษณ์ในหลักสูตรนวัตกรรมดิจิทัล สอบสัมภาษณ์ผ่านช่องทางออนไลน์เท่านั้น\n0"}'::jsonb, 'GPAX ≥ 2.75; Portfolio ไม่เกิน 10 หน้า; Portfolio 50% และสัมภาษณ์ 50%',
    'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-digital-innovation'
where p.code = 'cmu-00412401108040-1-1'
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
    p.id, m.id, 3.25, '{"semesters":4,"graduated":"ตลอดหลักสูตร"}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 แผนวิทย์-คณิต หรือ ปวช. สาขาที่เกี่ยวกับวิศวกรรมคอมพิวเตอร์ เช่น อิเล็กทรอนิกส์หรือสารสนเทศ","รับผู้สมัครจากสถานศึกษาทั่วประเทศ"]'::jsonb, 'ส่ง TCASFolio เป็น PDF ผ่านระบบสมัคร; ประวัติไม่เกิน 1 หน้า A4; หลักฐานผลงาน/รางวัล/กิจกรรม; ประกาศนียบัตรค่ายหรือโครงการวิชาการ (ถ้ามี) ไม่เกิน 2 ใบ; และข้อความแสดงความสนใจหรือความรู้ในสาขาไม่เกิน 1 หน้า A4',
    '{"portfolio_required":true,"portfolio_weight_percent":50,"interview_weight_percent":50}'::jsonb, '["ผ่านการอบรมเขียนโปรแกรมจาก 42 Bangkok และได้ประกาศนียบัตรแบบ completion","ผ่านการอบรมเกี่ยวกับ IoT หรือ AI และได้รับประกาศนียบัตร","ทำโครงงานคอมพิวเตอร์เกี่ยวกับเว็บไซต์หรือโมบายแอปพลิเคชันร่วมกับฐานข้อมูล","แข่งขันทักษะด้านคอมพิวเตอร์ IoT หรือ AI และได้รับรางวัล","ได้รับรางวัลโครงงานหรือสิ่งประดิษฐ์ที่เกี่ยวกับคอมพิวเตอร์ IoT หรือ AI"]'::jsonb, '["TCASFolio ไฟล์ PDF"]'::jsonb,
    '["แฟ้มสะสมผลงาน (TCASFolio) 50 คะแนน","สัมภาษณ์ 50 คะแนน โดยพิจารณาความเข้าใจในสาขา บุคลิกภาพ และความพร้อมเข้าศึกษา"]'::jsonb, '{"official_curriculum_id":14142,"official_project_id":2409,"announced_variants":["1.1","1.2","1.3","1.4","1.5"],"announced_slots_across_variants":40}'::jsonb, 'GPAX 4 ภาคเรียนหรือตลอดหลักสูตรอย่างน้อย 3.25; Portfolio 50 + สัมภาษณ์ 50; ผลงานคอมพิวเตอร์/IoT/AI ได้รับการพิจารณาเป็นกรณีพิเศษ',
    'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4629_2026_08_04-11-01-24_a74b5.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-chumphon-computer-engineering'
where p.code = 'kmitl-chumphon-cpe-portfolio-1-1'
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
    p.id, m.id, 3.5, '{"semesters":4,"graduated":"ตลอดหลักสูตร"}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 แผนวิทย์-คณิต หรือ ปวช. สาขาที่เกี่ยวกับวิศวกรรมคอมพิวเตอร์ เช่น อิเล็กทรอนิกส์หรือสารสนเทศ","กำลังศึกษาหรือสำเร็จจากสถานศึกษาใน ชุมพร สุราษฎร์ธานี ระนอง กระบี่ พังงา ภูเก็ต ตรัง นครศรีธรรมราช พัทลุง สงขลา สตูล ปัตตานี ยะลา นราธิวาส ประจวบคีรีขันธ์ เพชรบุรี ราชบุรี นครปฐม หรือกรุงเทพมหานคร"]'::jsonb, 'ส่ง TCASFolio เป็น PDF ผ่านระบบสมัคร; ประวัติไม่เกิน 1 หน้า A4; หลักฐานผลงาน/รางวัล/กิจกรรม; ประกาศนียบัตรค่ายหรือโครงการวิชาการ (ถ้ามี) ไม่เกิน 2 ใบ; และข้อความแสดงความสนใจหรือความรู้ในสาขาไม่เกิน 1 หน้า A4',
    '{"portfolio_required":true,"portfolio_weight_percent":50,"interview_weight_percent":50}'::jsonb, '["ผ่านการอบรมเขียนโปรแกรมจาก 42 Bangkok และได้ประกาศนียบัตรแบบ completion","ผ่านการอบรมเกี่ยวกับ IoT หรือ AI และได้รับประกาศนียบัตร","ทำโครงงานคอมพิวเตอร์เกี่ยวกับเว็บไซต์หรือโมบายแอปพลิเคชันร่วมกับฐานข้อมูล","แข่งขันทักษะด้านคอมพิวเตอร์ IoT หรือ AI และได้รับรางวัล","ได้รับรางวัลโครงงานหรือสิ่งประดิษฐ์ที่เกี่ยวกับคอมพิวเตอร์ IoT หรือ AI"]'::jsonb, '["TCASFolio ไฟล์ PDF"]'::jsonb,
    '["แฟ้มสะสมผลงาน (TCASFolio) 50 คะแนน","สัมภาษณ์ 50 คะแนน โดยพิจารณาความเข้าใจในสาขา บุคลิกภาพ และความพร้อมเข้าศึกษา"]'::jsonb, '{"official_curriculum_id":14157,"official_project_id":2410}'::jsonb, 'GPAX 4 ภาคเรียนหรือตลอดหลักสูตรอย่างน้อย 3.50; ต้องอยู่ในพื้นที่ 14 จังหวัดภาคใต้และจังหวัดใกล้เคียงตามรายชื่อประกาศ; Portfolio 50 + สัมภาษณ์ 50',
    'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4630_2026_08_04-11-03-46_94eee.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-chumphon-computer-engineering'
where p.code = 'kmitl-chumphon-cpe-good-student-14plus-1-1'
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
    p.id, m.id, 3.25, '{"semesters":4,"graduated":"ตลอดหลักสูตร"}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 แผนวิทย์-คณิต หรือ ปวช. สาขาที่เกี่ยวกับวิศวกรรมคอมพิวเตอร์ เช่น อิเล็กทรอนิกส์หรือสารสนเทศ","ต้องสังกัดสถานศึกษาที่มีข้อตกลงกับ สจล. วิทยาเขตชุมพร และได้รับการเสนอชื่อจากสถานศึกษา"]'::jsonb, 'ส่ง TCASFolio เป็น PDF; ประวัติไม่เกิน 1 หน้า A4; สำเนาหนังสือเสนอชื่อจากสถานศึกษา; หลักฐานผลงาน/รางวัล/กิจกรรมไม่เกิน 3 ผลงาน; ประกาศนียบัตรค่ายหรือโครงการวิชาการ ไม่เกิน 2 ใบ; และข้อความแสดงความสนใจหรือความรู้ในสาขาไม่เกิน 1 หน้า A4',
    '{"portfolio_required":true,"portfolio_weight_percent":50,"interview_weight_percent":50}'::jsonb, '["ผ่านการอบรมเขียนโปรแกรมจาก 42 Bangkok และได้ประกาศนียบัตรแบบ completion","ผ่านการอบรมเกี่ยวกับ IoT หรือ AI และได้รับประกาศนียบัตร","ทำโครงงานคอมพิวเตอร์เกี่ยวกับเว็บไซต์หรือโมบายแอปพลิเคชันร่วมกับฐานข้อมูล","แข่งขันทักษะด้านคอมพิวเตอร์ IoT หรือ AI และได้รับรางวัล","ได้รับรางวัลโครงงานหรือสิ่งประดิษฐ์ที่เกี่ยวกับคอมพิวเตอร์ IoT หรือ AI"]'::jsonb, '["TCASFolio ไฟล์ PDF","สำเนาหนังสือเสนอชื่อผู้สมัครจากสถานศึกษาต้นสังกัด"]'::jsonb,
    '["แฟ้มสะสมผลงาน (TCASFolio) 50 คะแนน","สัมภาษณ์ 50 คะแนน โดยพิจารณาความเข้าใจในสาขา บุคลิกภาพ และความพร้อมเข้าศึกษา"]'::jsonb, '{"official_curriculum_id":14171,"official_project_id":2411,"school_nomination_required":true,"announced_variants":["1.1","1.2"],"announced_slots_across_variants":15}'::jsonb, 'GPAX 4 ภาคเรียนหรือตลอดหลักสูตรอย่างน้อย 3.25; ต้องมาจากสถานศึกษาเครือข่ายและได้รับการเสนอชื่อ; Portfolio 50 + สัมภาษณ์ 50',
    'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4633_2026_08_04-11-33-47_8fcf4.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-chumphon-computer-engineering'
where p.code = 'kmitl-chumphon-cpe-network-1-1'
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
    p.id, m.id, 2.75, '{"semesters":4,"graduated":"ตลอดหลักสูตร"}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 แผนวิทย์-คณิต หรือ ปวช. สาขาที่เกี่ยวกับวิศวกรรมคอมพิวเตอร์ เช่น อิเล็กทรอนิกส์หรือสารสนเทศ","รับผู้สมัครจากสถานศึกษาทุกจังหวัดทั่วประเทศ"]'::jsonb, 'ส่ง TCASFolio เป็น PDF; ประวัติไม่เกิน 1 หน้า A4; ผลงาน/รางวัล/กิจกรรมค่ายวิชาการ ด้าน STEM วิศวกรรมศาสตร์ หรือวิทยาศาสตร์ไม่เกิน 3 ผลงาน; ประกาศนียบัตรค่ายหรือโครงการวิชาการ ไม่เกิน 2 ใบ; และข้อความแสดงความสนใจหรือความรู้ในสาขาไม่เกิน 1 หน้า A4',
    '{"portfolio_required":true,"portfolio_weight_percent":50,"interview_weight_percent":50}'::jsonb, '["ผ่านการอบรมเขียนโปรแกรมจาก 42 Bangkok และได้ประกาศนียบัตรแบบ completion","ผ่านการอบรมเกี่ยวกับ IoT หรือ AI และได้รับประกาศนียบัตร","ทำโครงงานคอมพิวเตอร์เกี่ยวกับเว็บไซต์หรือโมบายแอปพลิเคชันร่วมกับฐานข้อมูล","แข่งขันทักษะด้านคอมพิวเตอร์ IoT หรือ AI และได้รับรางวัล","ได้รับรางวัลโครงงานหรือสิ่งประดิษฐ์ที่เกี่ยวกับคอมพิวเตอร์ IoT หรือ AI"]'::jsonb, '["TCASFolio ไฟล์ PDF"]'::jsonb,
    '["แฟ้มสะสมผลงาน (TCASFolio) 50 คะแนน","สัมภาษณ์ 50 คะแนน โดยพิจารณาความเข้าใจในสาขา บุคลิกภาพ และความพร้อมเข้าศึกษา"]'::jsonb, '{"official_curriculum_id":14187,"official_project_id":2413,"announced_variants":["1.1","1.2"],"announced_slots_across_variants":15}'::jsonb, 'GPAX 4 ภาคเรียนหรือตลอดหลักสูตรอย่างน้อย 2.75; Portfolio เน้น STEM/วิศวกรรม/วิทยาศาสตร์ 50 + สัมภาษณ์ 50',
    'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4632_2026_08_04-11-30-08_2461b.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-chumphon-computer-engineering'
where p.code = 'kmitl-chumphon-cpe-potential-1-1'
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
    p.id, m.id, 3.25, '{"semesters":4,"graduated":"ตลอดหลักสูตร"}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 แผนวิทย์-คณิต หรือ ปวช. สาขาที่เกี่ยวกับวิศวกรรมคอมพิวเตอร์ เช่น อิเล็กทรอนิกส์หรือสารสนเทศ","รับผู้สมัครจากสถานศึกษาทั่วประเทศ"]'::jsonb, 'ส่ง TCASFolio เป็น PDF ผ่านระบบสมัคร; ประวัติไม่เกิน 1 หน้า A4; หลักฐานผลงาน/รางวัล/กิจกรรม; ประกาศนียบัตรค่ายหรือโครงการวิชาการ (ถ้ามี) ไม่เกิน 2 ใบ; และข้อความแสดงความสนใจหรือความรู้ในสาขาไม่เกิน 1 หน้า A4',
    '{"portfolio_required":true,"portfolio_weight_percent":50,"interview_weight_percent":50}'::jsonb, '["ผ่านการอบรมเขียนโปรแกรมจาก 42 Bangkok และได้ประกาศนียบัตรแบบ completion","ผ่านการอบรมเกี่ยวกับ IoT หรือ AI และได้รับประกาศนียบัตร","ทำโครงงานคอมพิวเตอร์เกี่ยวกับเว็บไซต์หรือโมบายแอปพลิเคชันร่วมกับฐานข้อมูล","แข่งขันทักษะด้านคอมพิวเตอร์ IoT หรือ AI และได้รับรางวัล","ได้รับรางวัลโครงงานหรือสิ่งประดิษฐ์ที่เกี่ยวกับคอมพิวเตอร์ IoT หรือ AI"]'::jsonb, '["TCASFolio ไฟล์ PDF"]'::jsonb,
    '["แฟ้มสะสมผลงาน (TCASFolio) 50 คะแนน","สัมภาษณ์ 50 คะแนน โดยพิจารณาความเข้าใจในสาขา บุคลิกภาพ และความพร้อมเข้าศึกษา"]'::jsonb, '{"announced_variant":"1.2","announced_variants":["1.1","1.2","1.3","1.4","1.5"],"announced_slots_across_variants":40}'::jsonb, 'GPAX 4 ภาคเรียนหรือตลอดหลักสูตรอย่างน้อย 3.25; Portfolio 50 + สัมภาษณ์ 50; ผลงานคอมพิวเตอร์/IoT/AI ได้รับการพิจารณาเป็นกรณีพิเศษ',
    'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4629_2026_08_04-11-01-24_a74b5.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-chumphon-computer-engineering'
where p.code = 'kmitl-chumphon-cpe-portfolio-1-2'
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
    p.id, m.id, 3.25, '{"semesters":4,"graduated":"ตลอดหลักสูตร"}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 แผนวิทย์-คณิต หรือ ปวช. สาขาที่เกี่ยวกับวิศวกรรมคอมพิวเตอร์ เช่น อิเล็กทรอนิกส์หรือสารสนเทศ","รับผู้สมัครจากสถานศึกษาทั่วประเทศ"]'::jsonb, 'ส่ง TCASFolio เป็น PDF ผ่านระบบสมัคร; ประวัติไม่เกิน 1 หน้า A4; หลักฐานผลงาน/รางวัล/กิจกรรม; ประกาศนียบัตรค่ายหรือโครงการวิชาการ (ถ้ามี) ไม่เกิน 2 ใบ; และข้อความแสดงความสนใจหรือความรู้ในสาขาไม่เกิน 1 หน้า A4',
    '{"portfolio_required":true,"portfolio_weight_percent":50,"interview_weight_percent":50}'::jsonb, '["ผ่านการอบรมเขียนโปรแกรมจาก 42 Bangkok และได้ประกาศนียบัตรแบบ completion","ผ่านการอบรมเกี่ยวกับ IoT หรือ AI และได้รับประกาศนียบัตร","ทำโครงงานคอมพิวเตอร์เกี่ยวกับเว็บไซต์หรือโมบายแอปพลิเคชันร่วมกับฐานข้อมูล","แข่งขันทักษะด้านคอมพิวเตอร์ IoT หรือ AI และได้รับรางวัล","ได้รับรางวัลโครงงานหรือสิ่งประดิษฐ์ที่เกี่ยวกับคอมพิวเตอร์ IoT หรือ AI"]'::jsonb, '["TCASFolio ไฟล์ PDF"]'::jsonb,
    '["แฟ้มสะสมผลงาน (TCASFolio) 50 คะแนน","สัมภาษณ์ 50 คะแนน โดยพิจารณาความเข้าใจในสาขา บุคลิกภาพ และความพร้อมเข้าศึกษา"]'::jsonb, '{"announced_variant":"1.3","announced_variants":["1.1","1.2","1.3","1.4","1.5"],"announced_slots_across_variants":40}'::jsonb, 'GPAX 4 ภาคเรียนหรือตลอดหลักสูตรอย่างน้อย 3.25; Portfolio 50 + สัมภาษณ์ 50; ผลงานคอมพิวเตอร์/IoT/AI ได้รับการพิจารณาเป็นกรณีพิเศษ',
    'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4629_2026_08_04-11-01-24_a74b5.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-chumphon-computer-engineering'
where p.code = 'kmitl-chumphon-cpe-portfolio-1-3'
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
    p.id, m.id, 3.25, '{"semesters":4,"graduated":"ตลอดหลักสูตร"}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 แผนวิทย์-คณิต หรือ ปวช. สาขาที่เกี่ยวกับวิศวกรรมคอมพิวเตอร์ เช่น อิเล็กทรอนิกส์หรือสารสนเทศ","รับผู้สมัครจากสถานศึกษาทั่วประเทศ"]'::jsonb, 'ส่ง TCASFolio เป็น PDF ผ่านระบบสมัคร; ประวัติไม่เกิน 1 หน้า A4; หลักฐานผลงาน/รางวัล/กิจกรรม; ประกาศนียบัตรค่ายหรือโครงการวิชาการ (ถ้ามี) ไม่เกิน 2 ใบ; และข้อความแสดงความสนใจหรือความรู้ในสาขาไม่เกิน 1 หน้า A4',
    '{"portfolio_required":true,"portfolio_weight_percent":50,"interview_weight_percent":50}'::jsonb, '["ผ่านการอบรมเขียนโปรแกรมจาก 42 Bangkok และได้ประกาศนียบัตรแบบ completion","ผ่านการอบรมเกี่ยวกับ IoT หรือ AI และได้รับประกาศนียบัตร","ทำโครงงานคอมพิวเตอร์เกี่ยวกับเว็บไซต์หรือโมบายแอปพลิเคชันร่วมกับฐานข้อมูล","แข่งขันทักษะด้านคอมพิวเตอร์ IoT หรือ AI และได้รับรางวัล","ได้รับรางวัลโครงงานหรือสิ่งประดิษฐ์ที่เกี่ยวกับคอมพิวเตอร์ IoT หรือ AI"]'::jsonb, '["TCASFolio ไฟล์ PDF"]'::jsonb,
    '["แฟ้มสะสมผลงาน (TCASFolio) 50 คะแนน","สัมภาษณ์ 50 คะแนน โดยพิจารณาความเข้าใจในสาขา บุคลิกภาพ และความพร้อมเข้าศึกษา"]'::jsonb, '{"announced_variant":"1.4","announced_variants":["1.1","1.2","1.3","1.4","1.5"],"announced_slots_across_variants":40}'::jsonb, 'GPAX 4 ภาคเรียนหรือตลอดหลักสูตรอย่างน้อย 3.25; Portfolio 50 + สัมภาษณ์ 50; ผลงานคอมพิวเตอร์/IoT/AI ได้รับการพิจารณาเป็นกรณีพิเศษ',
    'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4629_2026_08_04-11-01-24_a74b5.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-chumphon-computer-engineering'
where p.code = 'kmitl-chumphon-cpe-portfolio-1-4'
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
    p.id, m.id, 3.25, '{"semesters":4,"graduated":"ตลอดหลักสูตร"}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 แผนวิทย์-คณิต หรือ ปวช. สาขาที่เกี่ยวกับวิศวกรรมคอมพิวเตอร์ เช่น อิเล็กทรอนิกส์หรือสารสนเทศ","รับผู้สมัครจากสถานศึกษาทั่วประเทศ"]'::jsonb, 'ส่ง TCASFolio เป็น PDF ผ่านระบบสมัคร; ประวัติไม่เกิน 1 หน้า A4; หลักฐานผลงาน/รางวัล/กิจกรรม; ประกาศนียบัตรค่ายหรือโครงการวิชาการ (ถ้ามี) ไม่เกิน 2 ใบ; และข้อความแสดงความสนใจหรือความรู้ในสาขาไม่เกิน 1 หน้า A4',
    '{"portfolio_required":true,"portfolio_weight_percent":50,"interview_weight_percent":50}'::jsonb, '["ผ่านการอบรมเขียนโปรแกรมจาก 42 Bangkok และได้ประกาศนียบัตรแบบ completion","ผ่านการอบรมเกี่ยวกับ IoT หรือ AI และได้รับประกาศนียบัตร","ทำโครงงานคอมพิวเตอร์เกี่ยวกับเว็บไซต์หรือโมบายแอปพลิเคชันร่วมกับฐานข้อมูล","แข่งขันทักษะด้านคอมพิวเตอร์ IoT หรือ AI และได้รับรางวัล","ได้รับรางวัลโครงงานหรือสิ่งประดิษฐ์ที่เกี่ยวกับคอมพิวเตอร์ IoT หรือ AI"]'::jsonb, '["TCASFolio ไฟล์ PDF"]'::jsonb,
    '["แฟ้มสะสมผลงาน (TCASFolio) 50 คะแนน","สัมภาษณ์ 50 คะแนน โดยพิจารณาความเข้าใจในสาขา บุคลิกภาพ และความพร้อมเข้าศึกษา"]'::jsonb, '{"announced_variant":"1.5","announced_variants":["1.1","1.2","1.3","1.4","1.5"],"announced_slots_across_variants":40}'::jsonb, 'GPAX 4 ภาคเรียนหรือตลอดหลักสูตรอย่างน้อย 3.25; Portfolio 50 + สัมภาษณ์ 50; ผลงานคอมพิวเตอร์/IoT/AI ได้รับการพิจารณาเป็นกรณีพิเศษ',
    'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4629_2026_08_04-11-01-24_a74b5.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-chumphon-computer-engineering'
where p.code = 'kmitl-chumphon-cpe-portfolio-1-5'
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
    p.id, m.id, 3.25, '{"semesters":4,"graduated":"ตลอดหลักสูตร"}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 แผนวิทย์-คณิต หรือ ปวช. สาขาที่เกี่ยวกับวิศวกรรมคอมพิวเตอร์ เช่น อิเล็กทรอนิกส์หรือสารสนเทศ","ต้องสังกัดสถานศึกษาที่มีข้อตกลงกับ สจล. วิทยาเขตชุมพร และได้รับการเสนอชื่อจากสถานศึกษา"]'::jsonb, 'ส่ง TCASFolio เป็น PDF; ประวัติไม่เกิน 1 หน้า A4; สำเนาหนังสือเสนอชื่อจากสถานศึกษา; หลักฐานผลงาน/รางวัล/กิจกรรมไม่เกิน 3 ผลงาน; ประกาศนียบัตรค่ายหรือโครงการวิชาการ ไม่เกิน 2 ใบ; และข้อความแสดงความสนใจหรือความรู้ในสาขาไม่เกิน 1 หน้า A4',
    '{"portfolio_required":true,"portfolio_weight_percent":50,"interview_weight_percent":50}'::jsonb, '["ผ่านการอบรมเขียนโปรแกรมจาก 42 Bangkok และได้ประกาศนียบัตรแบบ completion","ผ่านการอบรมเกี่ยวกับ IoT หรือ AI และได้รับประกาศนียบัตร","ทำโครงงานคอมพิวเตอร์เกี่ยวกับเว็บไซต์หรือโมบายแอปพลิเคชันร่วมกับฐานข้อมูล","แข่งขันทักษะด้านคอมพิวเตอร์ IoT หรือ AI และได้รับรางวัล","ได้รับรางวัลโครงงานหรือสิ่งประดิษฐ์ที่เกี่ยวกับคอมพิวเตอร์ IoT หรือ AI"]'::jsonb, '["TCASFolio ไฟล์ PDF","สำเนาหนังสือเสนอชื่อผู้สมัครจากสถานศึกษาต้นสังกัด"]'::jsonb,
    '["แฟ้มสะสมผลงาน (TCASFolio) 50 คะแนน","สัมภาษณ์ 50 คะแนน โดยพิจารณาความเข้าใจในสาขา บุคลิกภาพ และความพร้อมเข้าศึกษา"]'::jsonb, '{"school_nomination_required":true,"announced_variant":"1.2","announced_variants":["1.1","1.2"],"announced_slots_across_variants":15}'::jsonb, 'GPAX 4 ภาคเรียนหรือตลอดหลักสูตรอย่างน้อย 3.25; ต้องมาจากสถานศึกษาเครือข่ายและได้รับการเสนอชื่อ; Portfolio 50 + สัมภาษณ์ 50',
    'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4633_2026_08_04-11-33-47_8fcf4.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-chumphon-computer-engineering'
where p.code = 'kmitl-chumphon-cpe-network-1-2'
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
    p.id, m.id, 2.75, '{"semesters":4,"graduated":"ตลอดหลักสูตร"}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษาหรือสำเร็จ ม.6 แผนวิทย์-คณิต หรือ ปวช. สาขาที่เกี่ยวกับวิศวกรรมคอมพิวเตอร์ เช่น อิเล็กทรอนิกส์หรือสารสนเทศ","รับผู้สมัครจากสถานศึกษาทุกจังหวัดทั่วประเทศ"]'::jsonb, 'ส่ง TCASFolio เป็น PDF; ประวัติไม่เกิน 1 หน้า A4; ผลงาน/รางวัล/กิจกรรมค่ายวิชาการ ด้าน STEM วิศวกรรมศาสตร์ หรือวิทยาศาสตร์ไม่เกิน 3 ผลงาน; ประกาศนียบัตรค่ายหรือโครงการวิชาการ ไม่เกิน 2 ใบ; และข้อความแสดงความสนใจหรือความรู้ในสาขาไม่เกิน 1 หน้า A4',
    '{"portfolio_required":true,"portfolio_weight_percent":50,"interview_weight_percent":50}'::jsonb, '["ผ่านการอบรมเขียนโปรแกรมจาก 42 Bangkok และได้ประกาศนียบัตรแบบ completion","ผ่านการอบรมเกี่ยวกับ IoT หรือ AI และได้รับประกาศนียบัตร","ทำโครงงานคอมพิวเตอร์เกี่ยวกับเว็บไซต์หรือโมบายแอปพลิเคชันร่วมกับฐานข้อมูล","แข่งขันทักษะด้านคอมพิวเตอร์ IoT หรือ AI และได้รับรางวัล","ได้รับรางวัลโครงงานหรือสิ่งประดิษฐ์ที่เกี่ยวกับคอมพิวเตอร์ IoT หรือ AI"]'::jsonb, '["TCASFolio ไฟล์ PDF"]'::jsonb,
    '["แฟ้มสะสมผลงาน (TCASFolio) 50 คะแนน","สัมภาษณ์ 50 คะแนน โดยพิจารณาความเข้าใจในสาขา บุคลิกภาพ และความพร้อมเข้าศึกษา"]'::jsonb, '{"announced_variant":"1.2","announced_variants":["1.1","1.2"],"announced_slots_across_variants":15}'::jsonb, 'GPAX 4 ภาคเรียนหรือตลอดหลักสูตรอย่างน้อย 2.75; Portfolio เน้น STEM/วิศวกรรม/วิทยาศาสตร์ 50 + สัมภาษณ์ 50',
    'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4632_2026_08_04-11-30-08_2461b.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-chumphon-computer-engineering'
where p.code = 'kmitl-chumphon-cpe-potential-1-2'
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
    p.id, m.id, 3.5, '{"วุฒิไทย-กำลังศึกษา":"อย่างน้อย 4 ภาคการศึกษา","วุฒิไทย-สำเร็จแล้ว":"6 ภาคการศึกษา","Grade 12 / Year 13 / GED":"ประกาศไม่กำหนดผลการเรียน"}'::jsonb, '{"กลุ่มคณิตศาสตร์":3.0,"กลุ่มวิทยาศาสตร์":3.0}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["วุฒิไทยใช้ผลการเรียนอย่างน้อย 4 ภาคการศึกษา หรือ 6 ภาคการศึกษาสำหรับผู้สำเร็จการศึกษา","รับ Grade 12 ระบบอเมริกัน, Year 13 ระบบอังกฤษ หรือ GED; ตารางประกาศไม่กำหนดแผนการเรียนและผลการเรียนสำหรับวุฒิเหล่านี้","แผนการเรียนที่รับ: วิทย์-คณิต, ศิลป์-คำนวณ, แผนการเรียนเกี่ยวกับคอมพิวเตอร์"]'::jsonb, 'คณะกรรมการพิจารณาเฉพาะ Portfolio ที่อยู่ในระบบ KMITL Student iFolio เท่านั้น',
    '{"portfolio_required":true,"portfolio_weight_percent":60,"interview_weight_percent":25,"transcript_weight_percent":15}'::jsonb, '[]'::jsonb, '["ใบสมัครที่พิมพ์จากระบบ admission.reg.kmitl.ac.th","ใบแสดงผลการเรียนอย่างน้อย 4 ภาคการศึกษา หรือ 6 ภาคการศึกษาสำหรับผู้สำเร็จการศึกษา หรือหลักฐาน Grade 12 / Year 13 / GED","บัตรประจำตัวประชาชนของผู้สมัคร"]'::jsonb,
    '["สอบสัมภาษณ์ 25%","Portfolio 60%","ผลการเรียน 15%"]'::jsonb, '{"จำนวนรับ":"วิทยาการคอมพิวเตอร์รวม 25 คนในรอบ 1.1 ทุกโครงการ; ประกาศไม่แยกจำนวนรายโครงการ","การเลือก":"เลือกได้ 1 โครงการ และเลือกอันดับสาขาวิชาได้สูงสุด 2 สาขา","ระบบ Portfolio":"KMITL Student iFolio","ข่าวประกาศทางการ":"news_id 4640"}'::jsonb, 'วุฒิไทย GPAX อย่างน้อย 3.50 และ GPAX กลุ่มคณิตศาสตร์/วิทยาศาสตร์ อย่างละ 3.00; Portfolio 60% + สัมภาษณ์ 25% + ผลการเรียน 15%',
    'https://www.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4640_2026_08_23-19-39-43_c47b2.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-science-computer-science'
where p.code = 'kmitl-science-cs-good-student-1-1'
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
    p.id, m.id, 3.5, '{"วุฒิไทย-กำลังศึกษา":"อย่างน้อย 5 ภาคการศึกษา","วุฒิไทย-สำเร็จแล้ว":"6 ภาคการศึกษา","Grade 12 / Year 13 / GED":"ประกาศไม่กำหนดผลการเรียน"}'::jsonb, '{"กลุ่มคณิตศาสตร์":3.0,"กลุ่มวิทยาศาสตร์":3.0}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["วุฒิไทยใช้ผลการเรียนอย่างน้อย 5 ภาคการศึกษา หรือ 6 ภาคการศึกษาสำหรับผู้สำเร็จการศึกษา","รับ Grade 12 ระบบอเมริกัน, Year 13 ระบบอังกฤษ หรือ GED; ตารางประกาศไม่กำหนดแผนการเรียนและผลการเรียนสำหรับวุฒิเหล่านี้","แผนการเรียนที่รับ: วิทย์-คณิต, ศิลป์-คำนวณ, แผนการเรียนเกี่ยวกับคอมพิวเตอร์"]'::jsonb, 'คณะกรรมการพิจารณาเฉพาะ Portfolio ที่อยู่ในระบบ KMITL Student iFolio เท่านั้น',
    '{"portfolio_required":true,"portfolio_weight_percent":60,"interview_weight_percent":25,"transcript_weight_percent":15}'::jsonb, '[]'::jsonb, '["ใบสมัครที่พิมพ์จากระบบ admission.reg.kmitl.ac.th","ใบแสดงผลการเรียนอย่างน้อย 5 ภาคการศึกษา หรือ 6 ภาคการศึกษาสำหรับผู้สำเร็จการศึกษา หรือหลักฐาน Grade 12 / Year 13 / GED","บัตรประจำตัวประชาชนของผู้สมัคร"]'::jsonb,
    '["สอบสัมภาษณ์ 25%","Portfolio 60%","ผลการเรียน 15%"]'::jsonb, '{"จำนวนรับ":"วิทยาการคอมพิวเตอร์รวม 25 คนในรอบ 1.2 ทุกโครงการ; ประกาศไม่แยกจำนวนรายโครงการ","การเลือก":"เลือกได้ 1 โครงการ และเลือกอันดับสาขาวิชาได้สูงสุด 2 สาขา","ระบบ Portfolio":"KMITL Student iFolio","ข่าวประกาศทางการ":"news_id 4640"}'::jsonb, 'วุฒิไทย GPAX อย่างน้อย 3.50 และ GPAX กลุ่มคณิตศาสตร์/วิทยาศาสตร์ อย่างละ 3.00; Portfolio 60% + สัมภาษณ์ 25% + ผลการเรียน 15%',
    'https://www.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4640_2026_08_23-19-39-43_c47b2.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-science-computer-science'
where p.code = 'kmitl-science-cs-good-student-1-2'
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
    p.id, m.id, 2.75, '{"วุฒิไทย-กำลังศึกษา":"อย่างน้อย 4 ภาคการศึกษา","วุฒิไทย-สำเร็จแล้ว":"6 ภาคการศึกษา","Grade 12 / Year 13 / GED":"ประกาศไม่กำหนดผลการเรียน"}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["วุฒิไทยใช้ผลการเรียนอย่างน้อย 4 ภาคการศึกษา หรือ 6 ภาคการศึกษาสำหรับผู้สำเร็จการศึกษา","รับ Grade 12 ระบบอเมริกัน, Year 13 ระบบอังกฤษ หรือ GED; ตารางประกาศไม่กำหนดแผนการเรียนและผลการเรียนสำหรับวุฒิเหล่านี้","ไม่กำหนดแผนการเรียน (สายสามัญเท่านั้น)"]'::jsonb, 'คณะกรรมการพิจารณาเฉพาะ Portfolio ที่อยู่ในระบบ KMITL Student iFolio เท่านั้น',
    '{"portfolio_required":true,"portfolio_weight_percent":75,"interview_weight_percent":25,"transcript_weight_percent":0}'::jsonb, '["ผ่านการคัดเลือกโครงการพัฒนาอัจฉริยภาพทางวิทยาศาสตร์สำหรับเด็กและเยาวชนของ สวทช. หรือสมาคมวิทยาศาสตร์แห่งประเทศไทย","ผ่านการคัดเลือกการแข่งขันคณิตศาสตร์และวิทยาศาสตร์โอลิมปิกของ สสวท.","ผ่านการสอบและการอบรมโอลิมปิกวิชาการของ สอวน.","มีผลงานหรือรางวัลวิชาการด้านวิทยาศาสตร์-คณิตศาสตร์อย่างน้อย 1 รายการ; สำหรับวิทยาการคอมพิวเตอร์ต้องเป็นระดับจังหวัด ภูมิภาค ชาติ หรือนานาชาติ","ได้รับรางวัลหรือเกียรติบัตรจากงานที่คณะวิทยาศาสตร์ สจล. เป็นเจ้าภาพหรือเจ้าภาพร่วม ยกเว้น Esports","ได้รับรางวัลโครงการแข่งขันเพชรยอดมงกุฎ วิชาคณิตศาสตร์หรือวิทยาศาสตร์"]'::jsonb, '["ใบสมัครที่พิมพ์จากระบบ admission.reg.kmitl.ac.th","ใบแสดงผลการเรียนอย่างน้อย 4 ภาคการศึกษา หรือ 6 ภาคการศึกษาสำหรับผู้สำเร็จการศึกษา หรือหลักฐาน Grade 12 / Year 13 / GED","บัตรประจำตัวประชาชนของผู้สมัคร"]'::jsonb,
    '["สอบสัมภาษณ์ 25%","Portfolio 75%"]'::jsonb, '{"จำนวนรับ":"วิทยาการคอมพิวเตอร์รวม 25 คนในรอบ 1.1 ทุกโครงการ; ประกาศไม่แยกจำนวนรายโครงการ","การเลือก":"เลือกได้ 1 โครงการ และเลือกอันดับสาขาวิชาได้สูงสุด 2 สาขา","ระบบ Portfolio":"KMITL Student iFolio","ข่าวประกาศทางการ":"news_id 4640"}'::jsonb, 'วุฒิไทย GPAX อย่างน้อย 2.75 และมีผลงานวิทยาศาสตร์-คณิตศาสตร์ตามประกาศ; Portfolio 75% + สัมภาษณ์ 25%',
    'https://www.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4640_2026_08_23-19-39-43_c47b2.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-science-computer-science'
where p.code = 'kmitl-science-cs-science-talent-1-1'
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
    p.id, m.id, 2.75, '{"วุฒิไทย-กำลังศึกษา":"อย่างน้อย 5 ภาคการศึกษา","วุฒิไทย-สำเร็จแล้ว":"6 ภาคการศึกษา","Grade 12 / Year 13 / GED":"ประกาศไม่กำหนดผลการเรียน"}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["วุฒิไทยใช้ผลการเรียนอย่างน้อย 5 ภาคการศึกษา หรือ 6 ภาคการศึกษาสำหรับผู้สำเร็จการศึกษา","รับ Grade 12 ระบบอเมริกัน, Year 13 ระบบอังกฤษ หรือ GED; ตารางประกาศไม่กำหนดแผนการเรียนและผลการเรียนสำหรับวุฒิเหล่านี้","ไม่กำหนดแผนการเรียน (สายสามัญเท่านั้น)"]'::jsonb, 'คณะกรรมการพิจารณาเฉพาะ Portfolio ที่อยู่ในระบบ KMITL Student iFolio เท่านั้น',
    '{"portfolio_required":true,"portfolio_weight_percent":75,"interview_weight_percent":25,"transcript_weight_percent":0}'::jsonb, '["ผ่านการคัดเลือกโครงการพัฒนาอัจฉริยภาพทางวิทยาศาสตร์สำหรับเด็กและเยาวชนของ สวทช. หรือสมาคมวิทยาศาสตร์แห่งประเทศไทย","ผ่านการคัดเลือกการแข่งขันคณิตศาสตร์และวิทยาศาสตร์โอลิมปิกของ สสวท.","ผ่านการสอบและการอบรมโอลิมปิกวิชาการของ สอวน.","มีผลงานหรือรางวัลวิชาการด้านวิทยาศาสตร์-คณิตศาสตร์อย่างน้อย 1 รายการ; สำหรับวิทยาการคอมพิวเตอร์ต้องเป็นระดับจังหวัด ภูมิภาค ชาติ หรือนานาชาติ","ได้รับรางวัลหรือเกียรติบัตรจากงานที่คณะวิทยาศาสตร์ สจล. เป็นเจ้าภาพหรือเจ้าภาพร่วม ยกเว้น Esports","ได้รับรางวัลโครงการแข่งขันเพชรยอดมงกุฎ วิชาคณิตศาสตร์หรือวิทยาศาสตร์"]'::jsonb, '["ใบสมัครที่พิมพ์จากระบบ admission.reg.kmitl.ac.th","ใบแสดงผลการเรียนอย่างน้อย 5 ภาคการศึกษา หรือ 6 ภาคการศึกษาสำหรับผู้สำเร็จการศึกษา หรือหลักฐาน Grade 12 / Year 13 / GED","บัตรประจำตัวประชาชนของผู้สมัคร"]'::jsonb,
    '["สอบสัมภาษณ์ 25%","Portfolio 75%"]'::jsonb, '{"จำนวนรับ":"วิทยาการคอมพิวเตอร์รวม 25 คนในรอบ 1.2 ทุกโครงการ; ประกาศไม่แยกจำนวนรายโครงการ","การเลือก":"เลือกได้ 1 โครงการ และเลือกอันดับสาขาวิชาได้สูงสุด 2 สาขา","ระบบ Portfolio":"KMITL Student iFolio","ข่าวประกาศทางการ":"news_id 4640"}'::jsonb, 'วุฒิไทย GPAX อย่างน้อย 2.75 และมีผลงานวิทยาศาสตร์-คณิตศาสตร์ตามประกาศ; Portfolio 75% + สัมภาษณ์ 25%',
    'https://www.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4640_2026_08_23-19-39-43_c47b2.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-science-computer-science'
where p.code = 'kmitl-science-cs-science-talent-1-2'
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
    p.id, m.id, 2.75, '{"วุฒิไทย-กำลังศึกษา":"อย่างน้อย 4 ภาคการศึกษา","วุฒิไทย-สำเร็จแล้ว":"6 ภาคการศึกษา","Grade 12 / Year 13 / GED":"ประกาศไม่กำหนดผลการเรียน"}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["วุฒิไทยใช้ผลการเรียนอย่างน้อย 4 ภาคการศึกษา หรือ 6 ภาคการศึกษาสำหรับผู้สำเร็จการศึกษา","รับ Grade 12 ระบบอเมริกัน, Year 13 ระบบอังกฤษ หรือ GED; ตารางประกาศไม่กำหนดแผนการเรียนและผลการเรียนสำหรับวุฒิเหล่านี้","แผนการเรียนที่รับ: วิทย์-คณิต, ศิลป์-คำนวณ, แผนการเรียนเกี่ยวกับคอมพิวเตอร์","ต้องเป็นบุตรบุคลากร สจล."]'::jsonb, 'คณะกรรมการพิจารณาเฉพาะ Portfolio ที่อยู่ในระบบ KMITL Student iFolio เท่านั้น',
    '{"portfolio_required":true,"portfolio_weight_percent":75,"interview_weight_percent":25,"transcript_weight_percent":0}'::jsonb, '[]'::jsonb, '["ใบสมัครที่พิมพ์จากระบบ admission.reg.kmitl.ac.th","ใบแสดงผลการเรียนอย่างน้อย 4 ภาคการศึกษา หรือ 6 ภาคการศึกษาสำหรับผู้สำเร็จการศึกษา หรือหลักฐาน Grade 12 / Year 13 / GED","บัตรประจำตัวประชาชนของผู้สมัคร","สำเนาทะเบียนบ้านของผู้สมัคร","สำเนาบัตรข้าราชการหรือบัตรพนักงานของผู้ปกครอง"]'::jsonb,
    '["สอบสัมภาษณ์ 25%","Portfolio 75%"]'::jsonb, '{"จำนวนรับ":"วิทยาการคอมพิวเตอร์รวม 25 คนในรอบ 1.1 ทุกโครงการ; ประกาศไม่แยกจำนวนรายโครงการ","การเลือก":"เลือกได้ 1 โครงการ และเลือกอันดับสาขาวิชาได้สูงสุด 2 สาขา","ระบบ Portfolio":"KMITL Student iFolio","ข่าวประกาศทางการ":"news_id 4640"}'::jsonb, 'วุฒิไทย GPAX อย่างน้อย 2.75 และเป็นบุตรบุคลากร สจล.; Portfolio 75% + สัมภาษณ์ 25%',
    'https://www.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4640_2026_08_23-19-39-43_c47b2.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-science-computer-science'
where p.code = 'kmitl-science-cs-staff-child-1-1'
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
    p.id, m.id, 2.75, '{"วุฒิไทย-กำลังศึกษา":"อย่างน้อย 5 ภาคการศึกษา","วุฒิไทย-สำเร็จแล้ว":"6 ภาคการศึกษา","Grade 12 / Year 13 / GED":"ประกาศไม่กำหนดผลการเรียน"}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["วุฒิไทยใช้ผลการเรียนอย่างน้อย 5 ภาคการศึกษา หรือ 6 ภาคการศึกษาสำหรับผู้สำเร็จการศึกษา","รับ Grade 12 ระบบอเมริกัน, Year 13 ระบบอังกฤษ หรือ GED; ตารางประกาศไม่กำหนดแผนการเรียนและผลการเรียนสำหรับวุฒิเหล่านี้","แผนการเรียนที่รับ: วิทย์-คณิต, ศิลป์-คำนวณ, แผนการเรียนเกี่ยวกับคอมพิวเตอร์","ต้องเป็นบุตรบุคลากร สจล."]'::jsonb, 'คณะกรรมการพิจารณาเฉพาะ Portfolio ที่อยู่ในระบบ KMITL Student iFolio เท่านั้น',
    '{"portfolio_required":true,"portfolio_weight_percent":75,"interview_weight_percent":25,"transcript_weight_percent":0}'::jsonb, '[]'::jsonb, '["ใบสมัครที่พิมพ์จากระบบ admission.reg.kmitl.ac.th","ใบแสดงผลการเรียนอย่างน้อย 5 ภาคการศึกษา หรือ 6 ภาคการศึกษาสำหรับผู้สำเร็จการศึกษา หรือหลักฐาน Grade 12 / Year 13 / GED","บัตรประจำตัวประชาชนของผู้สมัคร","สำเนาทะเบียนบ้านของผู้สมัคร","สำเนาบัตรข้าราชการหรือบัตรพนักงานของผู้ปกครอง"]'::jsonb,
    '["สอบสัมภาษณ์ 25%","Portfolio 75%"]'::jsonb, '{"จำนวนรับ":"วิทยาการคอมพิวเตอร์รวม 25 คนในรอบ 1.2 ทุกโครงการ; ประกาศไม่แยกจำนวนรายโครงการ","การเลือก":"เลือกได้ 1 โครงการ และเลือกอันดับสาขาวิชาได้สูงสุด 2 สาขา","ระบบ Portfolio":"KMITL Student iFolio","ข่าวประกาศทางการ":"news_id 4640"}'::jsonb, 'วุฒิไทย GPAX อย่างน้อย 2.75 และเป็นบุตรบุคลากร สจล.; Portfolio 75% + สัมภาษณ์ 25%',
    'https://www.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4640_2026_08_23-19-39-43_c47b2.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-science-computer-science'
where p.code = 'kmitl-science-cs-staff-child-1-2'
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
    p.id, m.id, null, '{"วุฒิไทย-กำลังศึกษา":"อย่างน้อย 5 ภาคการศึกษา","วุฒิไทย-สำเร็จแล้ว":"6 ภาคการศึกษา","Grade 12 / Year 13 / GED":"ประกาศไม่กำหนดผลการเรียน"}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["วุฒิไทยใช้ผลการเรียนอย่างน้อย 5 ภาคการศึกษา หรือ 6 ภาคการศึกษาสำหรับผู้สำเร็จการศึกษา","รับ Grade 12 ระบบอเมริกัน, Year 13 ระบบอังกฤษ หรือ GED; ตารางประกาศไม่กำหนดแผนการเรียนและผลการเรียนสำหรับวุฒิเหล่านี้","ไม่กำหนดแผนการเรียน (สายสามัญเท่านั้น)","ผ่านการอบรมโครงการนักพัฒนามืออาชีพของภาควิชาวิทยาการคอมพิวเตอร์ คณะวิทยาศาสตร์ สจล."]'::jsonb, 'คณะกรรมการพิจารณาเฉพาะ Portfolio ที่อยู่ในระบบ KMITL Student iFolio เท่านั้น',
    '{"portfolio_required":true,"portfolio_weight_percent":75,"interview_weight_percent":25,"transcript_weight_percent":0}'::jsonb, '[]'::jsonb, '["ใบสมัครที่พิมพ์จากระบบ admission.reg.kmitl.ac.th","ใบแสดงผลการเรียนอย่างน้อย 5 ภาคการศึกษา หรือ 6 ภาคการศึกษาสำหรับผู้สำเร็จการศึกษา หรือหลักฐาน Grade 12 / Year 13 / GED","บัตรประจำตัวประชาชนของผู้สมัคร","เกียรติบัตรผ่านการอบรมโครงการนักพัฒนามืออาชีพ"]'::jsonb,
    '["สอบสัมภาษณ์ 25%","Portfolio 75%"]'::jsonb, '{"จำนวนรับ":"วิทยาการคอมพิวเตอร์รวม 25 คนในรอบ 1.2 ทุกโครงการ; ประกาศไม่แยกจำนวนรายโครงการ","การเลือก":"เลือกได้ 1 โครงการ และเลือกอันดับสาขาวิชาได้สูงสุด 2 สาขา","ระบบ Portfolio":"KMITL Student iFolio","ข่าวประกาศทางการ":"news_id 4640"}'::jsonb, 'เฉพาะผู้ผ่านการอบรมโครงการนักพัฒนามืออาชีพของภาควิชาวิทยาการคอมพิวเตอร์ สจล.; Portfolio 75% + สัมภาษณ์ 25%',
    'https://www.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4640_2026_08_23-19-39-43_c47b2.pdf', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-science-computer-science'
where p.code = 'kmitl-science-cs-professional-developer-1-2'
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

commit;
