-- Generated from datasets/tcas70_admissions.json
-- Run supabase_schema.sql before this file.
begin;

insert into public.universities (name, short_name, logo_url)
values ('สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง', 'KMITL', null)
on conflict (name) do update set
    short_name = excluded.short_name,
    logo_url = excluded.logo_url;

insert into public.universities (name, short_name, logo_url)
values ('มหาวิทยาลัยมหิดล', 'MU', null)
on conflict (name) do update set
    short_name = excluded.short_name,
    logo_url = excluded.logo_url;

insert into public.universities (name, short_name, logo_url)
values ('มหาวิทยาลัยเชียงใหม่', 'CMU', null)
on conflict (name) do update set
    short_name = excluded.short_name,
    logo_url = excluded.logo_url;

insert into public.universities (name, short_name, logo_url)
values ('มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี', 'KMUTT', null)
on conflict (name) do update set
    short_name = excluded.short_name,
    logo_url = excluded.logo_url;

insert into public.universities (name, short_name, logo_url)
values ('มหาวิทยาลัยเกษตรศาสตร์', 'KU', null)
on conflict (name) do update set
    short_name = excluded.short_name,
    logo_url = excluded.logo_url;

insert into public.universities (name, short_name, logo_url)
values ('มหาวิทยาลัยธรรมศาสตร์', 'TU', null)
on conflict (name) do update set
    short_name = excluded.short_name,
    logo_url = excluded.logo_url;

insert into public.universities (name, short_name, logo_url)
values ('จุฬาลงกรณ์มหาวิทยาลัย', 'CU', null)
on conflict (name) do update set
    short_name = excluded.short_name,
    logo_url = excluded.logo_url;

insert into public.universities (name, short_name, logo_url)
values ('มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าพระนครเหนือ', 'KMUTNB', null)
on conflict (name) do update set
    short_name = excluded.short_name,
    logo_url = excluded.logo_url;

insert into public.university_campuses (
    university_id, code, name, is_main, official_url, updated_at
)
select u.id, 'main', 'วิทยาเขตหลัก', true, 'https://www.cmu.ac.th/th/campus', now()
from public.universities u
where u.short_name = 'CMU'
on conflict (university_id, code) do update set
        name = excluded.name,
        is_main = excluded.is_main,
        official_url = excluded.official_url,
        updated_at = excluded.updated_at;

insert into public.university_campuses (
    university_id, code, name, is_main, official_url, updated_at
)
select u.id, 'pathum-wan', 'พื้นที่การศึกษาปทุมวัน', true, 'https://www.chula.ac.th/contact/', now()
from public.universities u
where u.short_name = 'CU'
on conflict (university_id, code) do update set
        name = excluded.name,
        is_main = excluded.is_main,
        official_url = excluded.official_url,
        updated_at = excluded.updated_at;

insert into public.university_campuses (
    university_id, code, name, is_main, official_url, updated_at
)
select u.id, 'ladkrabang', 'วิทยาเขตลาดกระบัง', true, 'https://www.kmitl.ac.th/contact', now()
from public.universities u
where u.short_name = 'KMITL'
on conflict (university_id, code) do update set
        name = excluded.name,
        is_main = excluded.is_main,
        official_url = excluded.official_url,
        updated_at = excluded.updated_at;

insert into public.university_campuses (
    university_id, code, name, is_main, official_url, updated_at
)
select u.id, 'chumphon', 'วิทยาเขตชุมพรเขตรอุดมศักดิ์', false, 'https://www.kmitl-chumphon.kmitl.ac.th/contact-us/', now()
from public.universities u
where u.short_name = 'KMITL'
on conflict (university_id, code) do update set
        name = excluded.name,
        is_main = excluded.is_main,
        official_url = excluded.official_url,
        updated_at = excluded.updated_at;

insert into public.university_campuses (
    university_id, code, name, is_main, official_url, updated_at
)
select u.id, 'bangkok', 'วิทยาเขตกรุงเทพมหานคร', true, 'https://www.kmutnb.ac.th/About-(1)/Contact-Directions/Contact.aspx', now()
from public.universities u
where u.short_name = 'KMUTNB'
on conflict (university_id, code) do update set
        name = excluded.name,
        is_main = excluded.is_main,
        official_url = excluded.official_url,
        updated_at = excluded.updated_at;

insert into public.university_campuses (
    university_id, code, name, is_main, official_url, updated_at
)
select u.id, 'prachinburi', 'วิทยาเขตปราจีนบุรี', false, 'https://www.kmutnb.ac.th/faculty-and-agencies/prachin-campus/faculty-of-Industrial-technology-and-management.aspx', now()
from public.universities u
where u.short_name = 'KMUTNB'
on conflict (university_id, code) do update set
        name = excluded.name,
        is_main = excluded.is_main,
        official_url = excluded.official_url,
        updated_at = excluded.updated_at;

insert into public.university_campuses (
    university_id, code, name, is_main, official_url, updated_at
)
select u.id, 'bangmod', 'พื้นที่การศึกษาบางมด', true, 'https://www.kmutt.ac.th/about-kmutt/campus/', now()
from public.universities u
where u.short_name = 'KMUTT'
on conflict (university_id, code) do update set
        name = excluded.name,
        is_main = excluded.is_main,
        official_url = excluded.official_url,
        updated_at = excluded.updated_at;

insert into public.university_campuses (
    university_id, code, name, is_main, official_url, updated_at
)
select u.id, 'bangkhuntien', 'พื้นที่การศึกษาบางขุนเทียน', false, 'https://www.kmutt.ac.th/about-kmutt/contact-us/', now()
from public.universities u
where u.short_name = 'KMUTT'
on conflict (university_id, code) do update set
        name = excluded.name,
        is_main = excluded.is_main,
        official_url = excluded.official_url,
        updated_at = excluded.updated_at;

insert into public.university_campuses (
    university_id, code, name, is_main, official_url, updated_at
)
select u.id, 'ratchaburi', 'พื้นที่การศึกษาราชบุรี', false, 'https://www.kmutt.ac.th/about-kmutt/contact-us/', now()
from public.universities u
where u.short_name = 'KMUTT'
on conflict (university_id, code) do update set
        name = excluded.name,
        is_main = excluded.is_main,
        official_url = excluded.official_url,
        updated_at = excluded.updated_at;

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
select u.id, 'sakon-nakhon', 'วิทยาเขตเฉลิมพระเกียรติ จังหวัดสกลนคร', false, 'https://ku.ac.th/th/campus-information', now()
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
select u.id, 'salaya', 'วิทยาเขตศาลายา', true, 'https://www.mahidol.ac.th/campus/', now()
from public.universities u
where u.short_name = 'MU'
on conflict (university_id, code) do update set
        name = excluded.name,
        is_main = excluded.is_main,
        official_url = excluded.official_url,
        updated_at = excluded.updated_at;

insert into public.university_campuses (
    university_id, code, name, is_main, official_url, updated_at
)
select u.id, 'rangsit', 'ศูนย์รังสิต', true, 'https://engr.tu.ac.th/contact-us', now()
from public.universities u
where u.short_name = 'TU'
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
    u.id, campus.id, 'kmitl-it', 'คณะเทคโนโลยีสารสนเทศ', 'เทคโนโลยีสารสนเทศ', 1, 2570,
    'ปริญญาตรี', 'ไทยและอังกฤษ', 129, 2565,
    4, 'https://www.it.kmitl.ac.th/en/programs/it-program-2565', '[{"title":"โครงการนักเรียนที่มีความสามารถด้านเทคโนโลยีสารสนเทศ","reference_academic_year":2570,"round_label":"Portfolio 1.1","slots_available":50,"status":"unconfirmed","note":"พบในหน้าข้อมูลเตรียมประกาศของคณะ แต่ยังระบุว่ารอประกาศอย่างเป็นทางการ","source_url":"https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1"},{"title":"โครงการนักเรียนที่มีศักยภาพทางวิชาการและเทคโนโลยีสารสนเทศ","reference_academic_year":2570,"round_label":"Portfolio 1.1","slots_available":5,"status":"unconfirmed","note":"ชื่อโครงการและจำนวนรับยังไม่ใช่ประกาศรับสมัครฉบับสมบูรณ์","source_url":"https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1"},{"title":"โครงการนักเรียนที่มีความสามารถด้านภาษาอังกฤษและเทคโนโลยีสารสนเทศ","reference_academic_year":2570,"round_label":"Portfolio 1.1","slots_available":5,"status":"unconfirmed","note":"ชื่อโครงการและจำนวนรับยังไม่ใช่ประกาศรับสมัครฉบับสมบูรณ์","source_url":"https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1"},{"title":"โครงการนักเรียนเรียนดีและมีความสนใจทางเทคโนโลยีสารสนเทศ - TCAS69 (ข้อมูลอ้างอิง)","reference_academic_year":2569,"round_label":"Portfolio","slots_available":115,"status":"unconfirmed","min_gpax":3.0,"gpax_summary":"GPAX ไม่น้อยกว่า 3.00","tuition_fee_per_semester":32000,"application_fee":300,"selection_summary":"TGAT1 20 + TGAT2 20 + TPAT3 40 + Portfolio 10 + สัมภาษณ์ 10","qualification_summary":"ม.6/เทียบเท่า และมีผลงานหรือกิจกรรมวิชาการ/คอมพิวเตอร์ตามประกาศ","portfolio_summary":"ยื่น KMITL Student iFolio และเลือกผลงานเด่น 3 รายการ","application_period":"1 ต.ค. - 22 ธ.ค. 2568 (กำหนดการของ TCAS69)","note":"เป็นประกาศ TCAS69 ใช้เตรียมตัวได้ แต่ห้ามใช้ยืนยันคุณสมบัติ จำนวนรับ หรือวันสมัคร TCAS70","source_url":"https://www.reg.kmitl.ac.th/TCAS_old/news/files/2569_1_news1_4088_2025_09_25-14-42-31_e436c.pdf"},{"title":"โครงการนักเรียนที่มีความสามารถทางด้านเทคโนโลยีสารสนเทศ - TCAS69 (ข้อมูลอ้างอิง)","reference_academic_year":2569,"round_label":"Portfolio","slots_available":20,"status":"unconfirmed","min_gpax":2.75,"gpax_summary":"GPAX ไม่น้อยกว่า 2.75","tuition_fee_per_semester":32000,"application_fee":300,"selection_summary":"TGAT1 20 + TGAT2 20 + TPAT3 30 + Portfolio 15 + สัมภาษณ์ 15","qualification_summary":"ต้องมีผลงานคอมพิวเตอร์/IT เช่น รางวัล ผลงานใช้งานจริง NSC YSC สิทธิบัตร หรือ Super AI Engineer ตามประกาศ","portfolio_summary":"ยื่น KMITL Student iFolio และเลือกผลงานเด่น 3 รายการ","application_period":"1 ต.ค. - 22 ธ.ค. 2568 (กำหนดการของ TCAS69)","note":"เป็นประกาศ TCAS69 ใช้เตรียมตัวได้ แต่ห้ามใช้ยืนยันคุณสมบัติ จำนวนรับ หรือวันสมัคร TCAS70","source_url":"https://www.reg.kmitl.ac.th/TCAS_old/news/files/2569_1_news1_4088_2025_09_25-14-42-31_e436c.pdf"},{"title":"โครงการนักเรียนที่มีความสามารถทางด้านภาษาอังกฤษและเทคโนโลยีสารสนเทศ - TCAS69 (ข้อมูลอ้างอิง)","reference_academic_year":2569,"round_label":"Portfolio","slots_available":5,"status":"unconfirmed","min_gpax":3.0,"gpax_summary":"GPAX ไม่น้อยกว่า 3.00","tuition_fee_per_semester":32000,"application_fee":300,"selection_summary":"TGAT2 30 + TPAT3 30 + Portfolio 20 + สัมภาษณ์ 20","qualification_summary":"มีผลงานวิชาการ/คอมพิวเตอร์ และคะแนนภาษาอังกฤษที่ยังไม่หมดอายุตามประกาศ","portfolio_summary":"ยื่น KMITL Student iFolio และเลือกผลงานเด่น 3 รายการ","application_period":"1 ต.ค. - 22 ธ.ค. 2568 (กำหนดการของ TCAS69)","note":"เป็นประกาศ TCAS69 ใช้เตรียมตัวได้ แต่ห้ามใช้ยืนยันคุณสมบัติ จำนวนรับ หรือวันสมัคร TCAS70","source_url":"https://www.reg.kmitl.ac.th/TCAS_old/news/files/2569_1_news1_4088_2025_09_25-14-42-31_e436c.pdf","english_score_summary":"IELTS 6.0 / TOEFL iBT 78 / TOEFL PBT 598 / TOEIC 825"}]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'ladkrabang'
where u.short_name = 'KMITL'
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
    u.id, campus.id, 'kmitl-dsba', 'คณะเทคโนโลยีสารสนเทศ', 'วิทยาการข้อมูลและการวิเคราะห์เชิงธุรกิจ', 1, 2570,
    'ปริญญาตรี', 'ไทยและอังกฤษ', 132, 2565,
    4, 'https://www.it.kmitl.ac.th/en/programs/datasci-program-2565', '[{"title":"โครงการนักเรียนที่มีความสามารถด้านเทคโนโลยีสารสนเทศ","reference_academic_year":2570,"round_label":"Portfolio 1.1","slots_available":5,"status":"unconfirmed","note":"พบในหน้าข้อมูลเตรียมประกาศของคณะ แต่ยังระบุว่ารอประกาศอย่างเป็นทางการ","source_url":"https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1"},{"title":"โครงการนักเรียนที่มีศักยภาพทางวิชาการและเทคโนโลยีสารสนเทศ","reference_academic_year":2570,"round_label":"Portfolio 1.1","slots_available":2,"status":"unconfirmed","note":"ชื่อโครงการและจำนวนรับยังไม่ใช่ประกาศรับสมัครฉบับสมบูรณ์","source_url":"https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1"},{"title":"โครงการนักเรียนเรียนดีและมีความสนใจทางเทคโนโลยีสารสนเทศ - TCAS69 (ข้อมูลอ้างอิง)","reference_academic_year":2569,"round_label":"Portfolio","slots_available":20,"status":"unconfirmed","min_gpax":3.0,"gpax_summary":"GPAX ไม่น้อยกว่า 3.00","tuition_fee_per_semester":32000,"application_fee":300,"selection_summary":"TGAT1 20 + TGAT2 20 + TPAT3 40 + Portfolio 10 + สัมภาษณ์ 10","qualification_summary":"ม.6/เทียบเท่า และมีผลงานหรือกิจกรรมวิชาการ/คอมพิวเตอร์ตามประกาศ","portfolio_summary":"ยื่น KMITL Student iFolio และเลือกผลงานเด่น 3 รายการ","application_period":"1 ต.ค. - 22 ธ.ค. 2568 (กำหนดการของ TCAS69)","note":"เป็นประกาศ TCAS69 ใช้เตรียมตัวได้ แต่ห้ามใช้ยืนยันคุณสมบัติ จำนวนรับ หรือวันสมัคร TCAS70","source_url":"https://www.reg.kmitl.ac.th/TCAS_old/news/files/2569_1_news1_4088_2025_09_25-14-42-31_e436c.pdf"},{"title":"โครงการนักเรียนที่มีความสามารถทางด้านเทคโนโลยีสารสนเทศ - TCAS69 (ข้อมูลอ้างอิง)","reference_academic_year":2569,"round_label":"Portfolio","slots_available":10,"status":"unconfirmed","min_gpax":2.75,"gpax_summary":"GPAX ไม่น้อยกว่า 2.75","tuition_fee_per_semester":32000,"application_fee":300,"selection_summary":"TGAT1 20 + TGAT2 20 + TPAT3 30 + Portfolio 15 + สัมภาษณ์ 15","qualification_summary":"ต้องมีผลงานคอมพิวเตอร์/IT ตามรายการที่ประกาศกำหนด","portfolio_summary":"ยื่น KMITL Student iFolio และเลือกผลงานเด่น 3 รายการ","application_period":"1 ต.ค. - 22 ธ.ค. 2568 (กำหนดการของ TCAS69)","note":"เป็นประกาศ TCAS69 ใช้เตรียมตัวได้ แต่ห้ามใช้ยืนยันคุณสมบัติ จำนวนรับ หรือวันสมัคร TCAS70","source_url":"https://www.reg.kmitl.ac.th/TCAS_old/news/files/2569_1_news1_4088_2025_09_25-14-42-31_e436c.pdf"}]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'ladkrabang'
where u.short_name = 'KMITL'
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
    u.id, campus.id, 'kmitl-ait', 'คณะเทคโนโลยีสารสนเทศ', 'เทคโนโลยีปัญญาประดิษฐ์', 1, 2570,
    'ปริญญาตรี', 'ไทยและอังกฤษ', 120, 2566,
    4, 'https://www.it.kmitl.ac.th/en/programs/ait-program', '[{"title":"โครงการนักเรียนที่มีความสามารถด้านเทคโนโลยีสารสนเทศ","reference_academic_year":2570,"round_label":"Portfolio 1.1","slots_available":5,"status":"unconfirmed","note":"พบในหน้าข้อมูลเตรียมประกาศของคณะ แต่ยังระบุว่ารอประกาศอย่างเป็นทางการ","source_url":"https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1"},{"title":"โครงการนักเรียนที่มีศักยภาพทางวิชาการและเทคโนโลยีสารสนเทศ","reference_academic_year":2570,"round_label":"Portfolio 1.1","slots_available":1,"status":"unconfirmed","note":"ชื่อโครงการและจำนวนรับยังไม่ใช่ประกาศรับสมัครฉบับสมบูรณ์","source_url":"https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1"},{"title":"โครงการนักเรียนที่มีความสามารถด้านภาษาอังกฤษและเทคโนโลยีสารสนเทศ","reference_academic_year":2570,"round_label":"Portfolio 1.1","slots_available":1,"status":"unconfirmed","note":"หน้าเตรียมข้อมูลระบุว่าโครงการนี้ไม่เปิดรับ DSBA","source_url":"https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1"},{"title":"โครงการนักเรียนเรียนดีและมีความสนใจทางเทคโนโลยีสารสนเทศ - TCAS69 (ข้อมูลอ้างอิง)","reference_academic_year":2569,"round_label":"Portfolio","slots_available":20,"status":"unconfirmed","min_gpax":3.0,"gpax_summary":"GPAX ไม่น้อยกว่า 3.00","tuition_fee_per_semester":32000,"application_fee":300,"selection_summary":"TGAT1 20 + TGAT2 20 + TPAT3 40 + Portfolio 10 + สัมภาษณ์ 10","qualification_summary":"ม.6/เทียบเท่า และมีผลงานหรือกิจกรรมวิชาการ/คอมพิวเตอร์ตามประกาศ","portfolio_summary":"ยื่น KMITL Student iFolio และเลือกผลงานเด่น 3 รายการ","application_period":"1 ต.ค. - 22 ธ.ค. 2568 (กำหนดการของ TCAS69)","note":"เป็นประกาศ TCAS69 ใช้เตรียมตัวได้ แต่ห้ามใช้ยืนยันคุณสมบัติ จำนวนรับ หรือวันสมัคร TCAS70","source_url":"https://www.reg.kmitl.ac.th/TCAS_old/news/files/2569_1_news1_4088_2025_09_25-14-42-31_e436c.pdf"},{"title":"โครงการนักเรียนที่มีความสามารถทางด้านเทคโนโลยีสารสนเทศ - TCAS69 (ข้อมูลอ้างอิง)","reference_academic_year":2569,"round_label":"Portfolio","slots_available":10,"status":"unconfirmed","min_gpax":2.75,"gpax_summary":"GPAX ไม่น้อยกว่า 2.75","tuition_fee_per_semester":32000,"application_fee":300,"selection_summary":"TGAT1 20 + TGAT2 20 + TPAT3 30 + Portfolio 15 + สัมภาษณ์ 15","qualification_summary":"ต้องมีผลงานคอมพิวเตอร์/IT ตามรายการที่ประกาศกำหนด","portfolio_summary":"ยื่น KMITL Student iFolio และเลือกผลงานเด่น 3 รายการ","application_period":"1 ต.ค. - 22 ธ.ค. 2568 (กำหนดการของ TCAS69)","note":"เป็นประกาศ TCAS69 ใช้เตรียมตัวได้ แต่ห้ามใช้ยืนยันคุณสมบัติ จำนวนรับ หรือวันสมัคร TCAS70","source_url":"https://www.reg.kmitl.ac.th/TCAS_old/news/files/2569_1_news1_4088_2025_09_25-14-42-31_e436c.pdf"}]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'ladkrabang'
where u.short_name = 'KMITL'
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
    u.id, campus.id, 'kmitl-bit', 'คณะเทคโนโลยีสารสนเทศ', 'เทคโนโลยีสารสนเทศทางธุรกิจ (หลักสูตรนานาชาติ)', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', 126, 2565,
    4, 'https://www.it.kmitl.ac.th/en/programs/bit-program-2565', '[{"title":"หน้ารับสมัคร TCAS70 รอบ Portfolio","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"พบชื่อหลักสูตรในหน้ารอบ 1 TCAS70 แล้ว แต่วันปิดรับสมัครยังเป็น ''-'' และยังไม่พบประกาศคณะหรือโครงการฉบับรายละเอียด จึงยังยืนยันว่าเปิดยื่นไม่ได้","source_url":"https://www1.reg.kmitl.ac.th/TCAS_old/home.php?round=1"}]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'ladkrabang'
where u.short_name = 'KMITL'
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
    u.id, campus.id, 'mu-ict', 'คณะเทคโนโลยีสารสนเทศและการสื่อสาร', 'เทคโนโลยีสารสนเทศและการสื่อสาร (ICT)', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', null, null,
    4, 'https://www.ict.mahidol.ac.th/th/programs/', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'salaya'
where u.short_name = 'MU'
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
    u.id, campus.id, 'cmu-cpe', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี ภาคปกติ', 'ไทย', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfacultybyid.php?fid=703', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'main'
where u.short_name = 'CMU'
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
    u.id, campus.id, 'kmutt-sit-cs', 'คณะเทคโนโลยีสารสนเทศ', 'วิทยาการคอมพิวเตอร์ (หลักสูตรภาษาอังกฤษ)', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', 134, 2566,
    4, 'https://www.sit.kmutt.ac.th/bsc/bsc-cs-2/', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'bangmod'
where u.short_name = 'KMUTT'
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
    u.id, campus.id, 'kmutt-sit-dsi', 'คณะเทคโนโลยีสารสนเทศ', 'นวัตกรรมบริการดิจิทัล', 1, 2570,
    'ปริญญาตรี', 'ไทย', 121, null,
    4, 'https://www.sit.kmutt.ac.th/en/bsc/bsc-dsi-2/', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'bangmod'
where u.short_name = 'KMUTT'
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
    u.id, campus.id, 'kmutt-sit-it', 'คณะเทคโนโลยีสารสนเทศ', 'เทคโนโลยีสารสนเทศ', 1, 2570,
    'ปริญญาตรี', 'ไทยและอังกฤษ', null, 2567,
    4, 'https://www.sit.kmutt.ac.th/bsc/bsc-it-2/', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'bangmod'
where u.short_name = 'KMUTT'
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
    u.id, campus.id, 'mu-computer-engineering', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://www.eg.mahidol.ac.th/egmu/admission/tcas-admission.html', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'salaya'
where u.short_name = 'MU'
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
    u.id, campus.id, 'ku-csc-computer-science', 'คณะวิทยาศาสตร์และวิศวกรรมศาสตร์ วิทยาเขตเฉลิมพระเกียรติ จังหวัดสกลนคร', 'วิทยาการคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://misreg.csc.ku.ac.th/admission/?page_id=63', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'sakon-nakhon'
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
    u.id, campus.id, 'ku-csc-computer-engineering', 'คณะวิทยาศาสตร์และวิศวกรรมศาสตร์ วิทยาเขตเฉลิมพระเกียรติ จังหวัดสกลนคร', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://misreg.csc.ku.ac.th/admission/?page_id=63', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'sakon-nakhon'
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
    u.id, campus.id, 'tu-siit-computer-engineering', 'สถาบันเทคโนโลยีนานาชาติสิรินธร', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', null, null,
    4, 'https://admissions.siit.tu.ac.th/undergraduate/', '[]'::jsonb, 'official', now()
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
    u.id, campus.id, 'tu-siit-digital-engineering', 'สถาบันเทคโนโลยีนานาชาติสิรินธร', 'วิศวกรรมดิจิทัล', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', null, null,
    4, 'https://admissions.siit.tu.ac.th/undergraduate/', '[]'::jsonb, 'official', now()
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
    u.id, campus.id, 'kmutt-cpe', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://join.kmutt.ac.th/projects', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'bangmod'
where u.short_name = 'KMUTT'
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
    u.id, campus.id, 'kmutt-cpe-international', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมคอมพิวเตอร์ (หลักสูตรนานาชาติ)', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', null, null,
    4, 'https://join.kmutt.ac.th/projects', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'bangmod'
where u.short_name = 'KMUTT'
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
    u.id, campus.id, 'kmutt-media-technology', 'คณะสถาปัตยกรรมศาสตร์และการออกแบบ', 'เทคโนโลยีมีเดีย', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://join.kmutt.ac.th/projects', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'bangkhuntien'
where u.short_name = 'KMUTT'
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
    u.id, campus.id, 'kmutt-game-design', 'คณะสถาปัตยกรรมศาสตร์และการออกแบบ', 'การออกแบบเกมและการพัฒนา (หลักสูตรนานาชาติ)', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', null, null,
    4, 'https://join.kmutt.ac.th/projects', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'bangkhuntien'
where u.short_name = 'KMUTT'
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
    u.id, campus.id, 'kmutt-ai-systems', 'คณะวิศวกรรมศาสตร์ (พื้นที่การศึกษาราชบุรี)', 'วิศวกรรมระบบอัจฉริยะ', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://join.kmutt.ac.th/projects', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'ratchaburi'
where u.short_name = 'KMUTT'
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
    u.id, campus.id, 'cmu-cs', 'คณะวิทยาศาสตร์', 'วิทยาการคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'main'
where u.short_name = 'CMU'
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
    u.id, campus.id, 'cmu-data-science', 'คณะวิทยาศาสตร์', 'วิทยาการข้อมูล', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'main'
where u.short_name = 'CMU'
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
    u.id, campus.id, 'cmu-cyber', 'คณะวิศวกรรมศาสตร์', 'ระบบสารสนเทศและความมั่นคงปลอดภัยไซเบอร์ (นานาชาติ)', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'main'
where u.short_name = 'CMU'
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
    u.id, campus.id, 'cmu-software-engineering', 'วิทยาลัยศิลปะ สื่อ และเทคโนโลยี', 'วิศวกรรมซอฟต์แวร์ (นานาชาติ)', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'main'
where u.short_name = 'CMU'
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
    u.id, campus.id, 'cmu-digital-game', 'วิทยาลัยศิลปะ สื่อ และเทคโนโลยี', 'ดิจิทัลเกม', 1, 2570,
    'ปริญญาตรี', 'สองภาษา', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'main'
where u.short_name = 'CMU'
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
    u.id, campus.id, 'cmu-digital-industry', 'วิทยาลัยศิลปะ สื่อ และเทคโนโลยี', 'บูรณาการอุตสาหกรรมดิจิทัล', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'main'
where u.short_name = 'CMU'
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
    u.id, campus.id, 'cmu-modern-it', 'วิทยาลัยศิลปะ สื่อ และเทคโนโลยี', 'การจัดการสมัยใหม่และเทคโนโลยีสารสนเทศ', 1, 2570,
    'ปริญญาตรี', 'สองภาษา', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'main'
where u.short_name = 'CMU'
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
    u.id, campus.id, 'cmu-digital-innovation', 'วิทยาลัยนานาชาตินวัตกรรมดิจิทัล', 'นวัตกรรมดิจิทัล (นานาชาติ)', 1, 2570,
    'ปริญญาตรี', 'อังกฤษ', null, null,
    4, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'main'
where u.short_name = 'CMU'
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
    u.id, campus.id, 'kmitl-chumphon-computer-engineering', 'วิทยาเขตชุมพรเขตรอุดมศักดิ์', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://admission.reg.kmitl.ac.th/', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'chumphon'
where u.short_name = 'KMITL'
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
    u.id, campus.id, 'kmitl-science-computer-science', 'คณะวิทยาศาสตร์', 'วิทยาการคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี', null, 130, 2569,
    null, 'https://www.science.kmitl.ac.th/curriculums/bachelor/computer-science-2569', '[]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'ladkrabang'
where u.short_name = 'KMITL'
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
    u.id, campus.id, 'cu-engineering-computer-engineering', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', 138, 2566,
    4, 'https://www.cp.eng.chula.ac.th/future/bachelor', '[{"title":"TCAS1: Portfolio CP","reference_academic_year":2569,"round_label":"TCAS รอบ 1","slots_available":65,"status":"unconfirmed","min_gpax":3.0,"gpax_summary":"GPAX ม.4-ม.6 รวม 5 ภาค ไม่น้อยกว่า 3.00","application_fee":0,"selection_summary":"Portfolio ด้านวิชาการ/วิศวกรรม 100 คะแนน ต้องได้อย่างน้อย 70; สัมภาษณ์ 100 คะแนน ต้องได้อย่างน้อย 70","qualification_summary":"ม.6 ปีการศึกษา 2568 และมีผลงานวิชาการระดับชาติ/นานาชาติตามรายการในประกาศ","portfolio_summary":"ไฟล์ PDF เนื้อหาไม่เกิน 10 หน้า เน้นผลงานคณิตศาสตร์ วิทยาศาสตร์ ฟิสิกส์ เคมี วิศวกรรมคอมพิวเตอร์ หรือวิศวกรรม","application_period":"3-17 พ.ย. 2568 (กำหนดการของ TCAS69)","note":"เป็นรูปแบบรับสมัครปี 2569 ใช้ดูแนวทางเท่านั้น ยังไม่ยืนยันว่าจะเปิดเหมือนเดิมใน TCAS70","source_url":"https://admission.chula.ac.th/upload/adm_announce/file_235_2_4922.pdf"},{"title":"หน้าประกาศรับสมัคร TCAS70","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"หน้าทางการยังแสดงว่าไม่พบประกาศรับสมัครสำหรับหลักสูตรนี้","source_url":"https://admission.chula.ac.th/admission_c1.php"}]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'pathum-wan'
where u.short_name = 'CU'
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
    u.id, campus.id, 'cu-engineering-cedt', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมคอมพิวเตอร์และเทคโนโลยีดิจิทัล (CEDT)', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', 124, 2566,
    3.5, 'https://www.cp.eng.chula.ac.th/cedt', '[{"title":"TCAS1: Portfolio CEDT","reference_academic_year":2569,"round_label":"TCAS รอบ 1","slots_available":220,"status":"unconfirmed","min_gpax":3.0,"gpax_summary":"GPAX ม.6 หรือ ปวช. รวม 5 ภาค ไม่น้อยกว่า 3.00","application_fee":0,"selection_summary":"Portfolio ผลงานวิชาการ/วิศวกรรมคอมพิวเตอร์ 100 คะแนน ต้องได้อย่างน้อย 70; สัมภาษณ์ 100 คะแนน ต้องได้อย่างน้อย 70","qualification_summary":"ม.6 หรือ ปวช.3 ปีการศึกษา 2568 และมีผลงานคอมพิวเตอร์/วิชาการตามรายการในประกาศ","portfolio_summary":"ไฟล์ PDF เนื้อหาไม่เกิน 10 หน้า มีประวัติ เหตุผลที่เลือกสาขา ผลงานเด่น และกิจกรรม","application_period":"3-17 พ.ย. 2568 (กำหนดการของ TCAS69)","note":"เป็นรูปแบบรับสมัครปี 2569 ใช้ดูแนวทางเท่านั้น ยังไม่ยืนยันว่าจะเปิดเหมือนเดิมใน TCAS70","source_url":"https://admission.chula.ac.th/upload/adm_announce/file_238_1_5249.pdf"},{"title":"หน้าประกาศรับสมัคร TCAS70","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"หน้าทางการยังแสดงว่าไม่พบประกาศรับสมัครสำหรับหลักสูตรนี้","source_url":"https://admission.chula.ac.th/admission_c1.php"}]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'pathum-wan'
where u.short_name = 'CU'
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
    u.id, campus.id, 'cu-engineering-ice', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมสารสนเทศและการสื่อสาร (ICE) (หลักสูตรนานาชาติ)', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'อังกฤษ', null, null,
    null, 'https://www.ise.eng.chula.ac.th/academics/ice/info', '[{"title":"หน้าประกาศรับสมัคร TCAS70","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"หน้าทางการยังแสดงว่าไม่พบประกาศรับสมัครสำหรับหลักสูตรนี้","source_url":"https://admission.chula.ac.th/admission_c1.php"}]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'pathum-wan'
where u.short_name = 'CU'
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
    u.id, campus.id, 'cu-engineering-robotics-ai', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมหุ่นยนต์และปัญญาประดิษฐ์ (RAIE) (หลักสูตรนานาชาติ)', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'อังกฤษ', null, null,
    null, 'https://www.ise.eng.chula.ac.th/academics/robotics-ai/info', '[{"title":"หน้าประกาศรับสมัคร TCAS70","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"หน้าทางการยังแสดงว่าไม่พบประกาศรับสมัครสำหรับหลักสูตรนี้","source_url":"https://admission.chula.ac.th/admission_c1.php"}]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'pathum-wan'
where u.short_name = 'CU'
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
    u.id, campus.id, 'cu-engineering-semiconductor', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมเซมิคอนดักเตอร์ (SEMI) (หลักสูตรนานาชาติ)', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'อังกฤษ', null, null,
    null, 'https://www.ise.eng.chula.ac.th/academics/semi/info', '[{"title":"หน้าประกาศรับสมัคร TCAS70","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"หน้าทางการยังแสดงว่าไม่พบประกาศรับสมัครสำหรับหลักสูตรนี้","source_url":"https://admission.chula.ac.th/admission_c1.php"}]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'pathum-wan'
where u.short_name = 'CU'
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
    u.id, campus.id, 'cu-science-computer-science', 'คณะวิทยาศาสตร์', 'วิทยาการคอมพิวเตอร์', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', 136, 2566,
    4, 'https://www.math.sc.chula.ac.th/th/program/undergraduate/computer-science/', '[{"title":"โครงการพัฒนาอัจฉริยภาพทางวิทยาศาสตร์สำหรับเด็กและเยาวชน","reference_academic_year":2569,"round_label":"TCAS รอบ 1 Portfolio","slots_available":null,"status":"unconfirmed","selection_summary":"Portfolio ด้านคณิตศาสตร์/วิทยาศาสตร์หรือผลงานระดับชาติ-นานาชาติ 100 คะแนน ต้องได้อย่างน้อย 70 คะแนน แล้วสอบสัมภาษณ์","qualification_summary":"ผู้ได้รับคัดเลือกในโครงการพัฒนาอัจฉริยภาพฯ ของ สวทช. ผู้ผ่านโครงงานวิทยาศาสตร์ระดับชาติ หรือผู้แทนประเทศไทย IYPT ตามประกาศ","portfolio_summary":"แฟ้มผลงานกิจกรรมด้านคณิตศาสตร์และวิทยาศาสตร์ หรือผลงานวิทยาศาสตร์ระดับชาติ/นานาชาติ","note":"ประกาศรับรวม 25 คนสำหรับ 16 สาขาและเลือกสาขาในวันสัมภาษณ์ จึงไม่ระบุจำนวนรับเฉพาะวิทยาการคอมพิวเตอร์ และห้ามใช้แทน TCAS70","source_url":"https://admission.chula.ac.th/upload/adm_announce/file_245_1_2310.pdf"},{"title":"หน้าประกาศรับสมัคร TCAS70","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"หน้าทางการยังแสดงว่าไม่พบประกาศรับสมัครสำหรับหลักสูตรนี้","source_url":"https://admission.chula.ac.th/admission_c1.php"}]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'pathum-wan'
where u.short_name = 'CU'
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
    u.id, campus.id, 'cu-cbs-management-information-systems', 'คณะพาณิชยศาสตร์และการบัญชี', 'ระบบสารสนเทศทางการจัดการ', 1, 2570,
    'บริหารธุรกิจบัณฑิต', 'ไทย', 136, null,
    null, 'https://bba.acc.chula.ac.th/files/MIS_EN.pdf', '[{"title":"หน้าประกาศรับสมัคร TCAS70","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"หน้าทางการยังแสดงว่าไม่พบประกาศรับสมัครสำหรับหลักสูตรนี้","source_url":"https://admission.chula.ac.th/admission_c1.php"}]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'pathum-wan'
where u.short_name = 'CU'
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
    u.id, campus.id, 'cu-cbs-statistics-data-science', 'คณะพาณิชยศาสตร์และการบัญชี', 'สถิติและวิทยาการข้อมูล', 1, 2570,
    'สถิติศาสตรบัณฑิต', 'ไทย', 133, 2564,
    null, 'https://stat.cbs.chula.ac.th/index.php/th/our-programs/bachelor/2564', '[{"title":"หน้าประกาศรับสมัคร TCAS70","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"หน้าทางการยังแสดงว่าไม่พบประกาศรับสมัครสำหรับหลักสูตรนี้","source_url":"https://admission.chula.ac.th/admission_c1.php"}]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'pathum-wan'
where u.short_name = 'CU'
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
    u.id, campus.id, 'cu-cbs-information-technology-business', 'คณะพาณิชยศาสตร์และการบัญชี', 'เทคโนโลยีสารสนเทศเพื่อธุรกิจ', 1, 2570,
    'สถิติศาสตรบัณฑิต', 'ไทย', 133, 2564,
    null, 'https://stat.cbs.chula.ac.th/index.php/th/our-programs/bachelor/2564', '[{"title":"หน้าประกาศรับสมัคร TCAS70","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"หน้าทางการยังแสดงว่าไม่พบประกาศรับสมัครสำหรับหลักสูตรนี้","source_url":"https://admission.chula.ac.th/admission_c1.php"}]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'pathum-wan'
where u.short_name = 'CU'
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

insert into public.faculties_and_majors (
    university_id, campus_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, admission_previews, data_status, updated_at
)
select
    u.id, campus.id, 'kmitl-engineering-computer-engineering', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://www.ce.kmitl.ac.th/', '[{"title":"สถานะ TCAS70 รอบ 1 ของวิศวกรรมคอมพิวเตอร์","reference_academic_year":2570,"round_label":"Portfolio","slots_available":null,"status":"unconfirmed","note":"มีชื่อหลักสูตรในหน้ารอบ 1 แล้ว แต่วันปิดรับสมัครยังเป็น ''-'' และยังไม่พบประกาศคณะวิศวกรรมศาสตร์ฉบับรายละเอียด จึงยังยืนยันว่าเปิดยื่นไม่ได้","source_url":"https://www1.reg.kmitl.ac.th/TCAS_old/home.php?round=1"},{"title":"ประกาศคณะวิศวกรรมศาสตร์ TCAS69 (ใช้เป็นข้อมูลอ้างอิง)","reference_academic_year":2569,"round_label":"Portfolio","slots_available":40,"status":"unconfirmed","tuition_fee_per_semester":25000,"selection_summary":"Portfolio/ผลงาน และบางโครงการใช้ TGAT กับ TPAT3 ก่อนสัมภาษณ์","note":"ปี 2569 เปิด 5 โครงการ รับวิศวกรรมคอมพิวเตอร์ 40 คน ข้อมูลนี้ใช้ดูแนวทางเท่านั้น ไม่ใช่เกณฑ์หรือจำนวนรับ TCAS70","source_url":"https://www.reg.kmitl.ac.th/TCAS_old/news/files/2569_1_news1_4112_2025_11_11-12-54-28_46fcd.pdf"}]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'ladkrabang'
where u.short_name = 'KMITL'
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
    u.id, campus.id, 'kmitl-engineering-software-international', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมซอฟต์แวร์ (หลักสูตรนานาชาติ)', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'อังกฤษ', null, 2567,
    4, 'https://office.kmitl.ac.th/oaq/curriculum/', '[{"title":"คณะวิศวกรรมศาสตร์ TCAS69 - วิศวกรรมซอฟต์แวร์นานาชาติ","reference_academic_year":2569,"round_label":"Portfolio","slots_available":10,"status":"unconfirmed","tuition_fee_per_semester":90000,"application_fee":300,"selection_summary":"เลือก 1 ใน 5 โครงการหลัก; ใช้ผลงาน หรือ TGAT/TPAT3 ตามประเภทโครงการ แล้วสอบสัมภาษณ์","portfolio_summary":"สร้าง iFolio และส่งผลงานเด่น 1 ผลงาน","application_period":"ถึง 22 ธ.ค. 2568 (กำหนดการของ TCAS69)","note":"เป็นจำนวนรับและค่าเรียน TCAS69 ไม่ใช่ประกาศ TCAS70","source_url":"https://www.reg.kmitl.ac.th/TCAS_old/news/files/2569_1_news1_4112_2025_11_11-12-54-28_46fcd.pdf"},{"title":"Direct Admission ปี 2568 (ใช้เป็นข้อมูลอ้างอิง)","reference_academic_year":2568,"round_label":"Direct Admission","slots_available":50,"status":"unconfirmed","gpax_summary":"ไม่กำหนด GPAX รวม; GPA คณิตศาสตร์ 3.00 เป็นหนึ่งในทางเลือกของเกณฑ์คณิตศาสตร์","application_fee":1000,"selection_summary":"ผลการเรียน/คะแนนมาตรฐาน เอกสารประกอบ และสัมภาษณ์","note":"เป็น Direct Admission ปี 2568 ไม่ใช่เกณฑ์ TCAS70 และรูปแบบรอบอาจเปลี่ยนได้","source_url":"https://www.eng.kmitl.ac.th/direct-admission/"},{"title":"ประกาศค่าธรรมเนียมปีการศึกษา 2569","reference_academic_year":2569,"round_label":"ข้อมูลค่าเล่าเรียน","slots_available":null,"status":"unconfirmed","tuition_fee_per_semester":90000,"note":"เป็นอัตราค่าธรรมเนียมปี 2569 ใช้อ้างอิงงบประมาณเท่านั้น ต้องตรวจอัตราปีเข้าเรียนอีกครั้ง","source_url":"https://www1.reg.kmitl.ac.th/TCAS_old/news/files/2569_1_news1_4381_2026_03_18-09-14-13_b207a.pdf"},{"title":"หน้ารับสมัคร TCAS70 รอบ Portfolio","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"พบชื่อหลักสูตรในหน้ารอบ 1 TCAS70 แล้ว แต่วันปิดรับสมัครยังเป็น ''-'' และยังไม่พบประกาศคณะหรือโครงการฉบับรายละเอียด จึงยังยืนยันว่าเปิดยื่นไม่ได้","source_url":"https://www1.reg.kmitl.ac.th/TCAS_old/home.php?round=1"}]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'ladkrabang'
where u.short_name = 'KMITL'
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
    u.id, campus.id, 'kmitl-engineering-computer-innovation-international', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมนวัตกรรมคอมพิวเตอร์ (หลักสูตรนานาชาติ)', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'อังกฤษ', null, null,
    4, 'https://office.kmitl.ac.th/oaq/curriculum/', '[{"title":"หน้ารับสมัคร TCAS70 รอบ Portfolio","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"พบชื่อหลักสูตรในหน้ารอบ 1 TCAS70 แล้ว แต่วันปิดรับสมัครยังเป็น ''-'' และยังไม่พบประกาศคณะหรือโครงการฉบับรายละเอียด จึงยังยืนยันว่าเปิดยื่นไม่ได้","source_url":"https://www1.reg.kmitl.ac.th/TCAS_old/home.php?round=1"}]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'ladkrabang'
where u.short_name = 'KMITL'
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
    u.id, campus.id, 'kmitl-engineering-information-engineering', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมสารสนเทศ', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://office.kmitl.ac.th/oaq/curriculum/', '[{"title":"หน้ารับสมัคร TCAS70 รอบ Portfolio","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"พบชื่อหลักสูตรในหน้ารอบ 1 TCAS70 แล้ว แต่วันปิดรับสมัครยังเป็น ''-'' และยังไม่พบประกาศคณะหรือโครงการฉบับรายละเอียด จึงยังยืนยันว่าเปิดยื่นไม่ได้","source_url":"https://www1.reg.kmitl.ac.th/TCAS_old/home.php?round=1"}]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'ladkrabang'
where u.short_name = 'KMITL'
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
    u.id, campus.id, 'kmitl-engineering-robotics-ai-international', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมหุ่นยนต์และปัญญาประดิษฐ์ (หลักสูตรนานาชาติ)', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'อังกฤษ', null, null,
    4, 'https://office.kmitl.ac.th/oaq/curriculum/', '[{"title":"คณะวิศวกรรมศาสตร์ TCAS69 - วิศวกรรมหุ่นยนต์และ AI นานาชาติ","reference_academic_year":2569,"round_label":"Portfolio","slots_available":10,"status":"unconfirmed","tuition_fee_per_semester":105000,"application_fee":300,"selection_summary":"เลือก 1 ใน 5 โครงการหลัก; ใช้ผลงาน หรือ TGAT/TPAT3 ตามประเภทโครงการ แล้วสอบสัมภาษณ์","portfolio_summary":"สร้าง iFolio และส่งผลงานเด่น 1 ผลงาน","application_period":"ถึง 22 ธ.ค. 2568 (กำหนดการของ TCAS69)","note":"เป็นจำนวนรับและค่าเรียน TCAS69 ไม่ใช่ประกาศ TCAS70","source_url":"https://www.reg.kmitl.ac.th/TCAS_old/news/files/2569_1_news1_4112_2025_11_11-12-54-28_46fcd.pdf"},{"title":"หน้ารับสมัคร TCAS70 รอบ Portfolio","reference_academic_year":2570,"round_label":"สถานะล่าสุด","slots_available":null,"status":"unconfirmed","note":"พบชื่อหลักสูตรในหน้ารอบ 1 TCAS70 แล้ว แต่วันปิดรับสมัครยังเป็น ''-'' และยังไม่พบประกาศคณะหรือโครงการฉบับรายละเอียด จึงยังยืนยันว่าเปิดยื่นไม่ได้","source_url":"https://www1.reg.kmitl.ac.th/TCAS_old/home.php?round=1"}]'::jsonb, 'official', now()
from public.universities u
join public.university_campuses campus
  on campus.university_id = u.id and campus.code = 'ladkrabang'
where u.short_name = 'KMITL'
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
    u.id, campus.id, 'tu-engineering-computer-engineering', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', null, 2566,
    4, 'https://engr.tu.ac.th/bachelor', '[{"title":"โครงการรับตรง คณะวิศวกรรมศาสตร์","reference_academic_year":2569,"round_label":"Portfolio","slots_available":20,"status":"unconfirmed","min_gpax":2.75,"gpax_summary":"GPAX ขั้นต่ำ 2.75","application_fee":200,"selection_summary":"TPAT3 40% + Portfolio 40% + สัมภาษณ์ 20%","qualification_summary":"ม.6/เทียบเท่า รวมผู้เทียบวุฒิต่างประเทศหรือหลักสูตรนานาชาติ ตามรายละเอียดในประกาศ","portfolio_summary":"PDF ไม่เกิน 10 หน้า ไม่รวมปก เน้นผลงานวิชาการ วิทยาศาสตร์ คณิตศาสตร์ เทคโนโลยี และวิศวกรรมศาสตร์","application_period":"15 ต.ค. - 17 พ.ย. 2568 (กำหนดการของ TCAS69)","note":"เป็นเกณฑ์และจำนวนรับ TCAS69 ใช้เตรียมตัวได้ แต่ห้ามใช้ยืนยันการสมัคร TCAS70","source_url":"https://www.tuadmissions.in.th/img/2025111008462947.pdf"},{"title":"รอบที่ 1 Portfolio คณะวิศวกรรมศาสตร์","reference_academic_year":2568,"round_label":"Portfolio","slots_available":10,"status":"unconfirmed","min_gpax":3.0,"gpax_summary":"GPAX ขั้นต่ำ 3.00","selection_summary":"TPAT3 40% + Portfolio 40% + สัมภาษณ์ 20%","qualification_summary":"ม.6/เทียบเท่า มีหน่วยกิตวิทยาศาสตร์อย่างน้อย 22 และคณิตศาสตร์อย่างน้อย 12","portfolio_summary":"ไฟล์ PDF ไม่เกิน 10 หน้า เน้นวิทยาศาสตร์ คณิตศาสตร์ เทคโนโลยี วิศวกรรม และผลงาน/รางวัลที่เกี่ยวข้อง","application_period":"5-26 พ.ย. 2567 (กำหนดการของ TCAS68)","note":"หน้าอ้างอิงยังเป็น TCAS68 ใช้ดูรูปแบบเก่าเท่านั้น ไม่ใช่เกณฑ์ TCAS70","source_url":"https://engr.tu.ac.th/admission/bachelor"}]'::jsonb, 'official', now()
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
    u.id, campus.id, 'tu-engineering-software-engineering', 'คณะวิศวกรรมศาสตร์', 'วิศวกรรมซอฟต์แวร์', 1, 2570,
    'วิศวกรรมศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://engr.tu.ac.th/bachelor', '[{"title":"โครงการรับตรง วิศวกรรมซอฟต์แวร์ (โครงการพิเศษ)","reference_academic_year":2569,"round_label":"Portfolio","slots_available":35,"status":"unconfirmed","min_gpax":2.75,"gpax_summary":"GPAX ขั้นต่ำ 2.75","application_fee":200,"selection_summary":"Portfolio 40% + TPAT3 40% + สัมภาษณ์ 20%","qualification_summary":"ม.6, ปวช.ช่างอุตสาหกรรม, กศน. หรือเทียบวุฒิต่างประเทศ/หลักสูตรนานาชาติ ตามประกาศ","portfolio_summary":"PDF ไม่เกิน 10 หน้า ไม่รวมปก มีประวัติ/การศึกษา Statement of Purpose ผลงานวิชาการและกิจกรรม","application_period":"15 ต.ค. - 17 พ.ย. 2568 (กำหนดการของ TCAS69)","note":"เป็นเกณฑ์และจำนวนรับ TCAS69 ใช้เตรียมตัวได้ แต่ห้ามใช้ยืนยันการสมัคร TCAS70","source_url":"https://www.tuadmissions.in.th/img/2025111008462947.pdf"}]'::jsonb, 'official', now()
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
    u.id, campus.id, 'tu-science-computer-science', 'คณะวิทยาศาสตร์และเทคโนโลยี', 'วิทยาการคอมพิวเตอร์ (คอมพิวเตอร์และวิทยาการสารสนเทศ)', 1, 2570,
    'วิทยาศาสตรบัณฑิต', 'ไทย', null, null,
    4, 'https://cs.sci.tu.ac.th/comsci-cis-th-2/', '[{"title":"โครงการรับตรง วิทยาการคอมพิวเตอร์","reference_academic_year":2569,"round_label":"Portfolio","slots_available":20,"status":"unconfirmed","min_gpax":3.0,"gpax_summary":"GPAX ขั้นต่ำ 3.00","application_fee":200,"selection_summary":"Portfolio 50% + TGAT1 15% + TGAT2 15% + TGAT3 5% + TPAT3 15%","qualification_summary":"ม.6 มีหน่วยกิตวิทยาศาสตร์อย่างน้อย 22 และคณิตศาสตร์อย่างน้อย 12","portfolio_summary":"PDF ไม่เกิน 10 หน้า ไม่รวมปก มี Statement of Purpose และผลงานนวัตกรรม/กิจกรรม/รางวัลที่เกี่ยวข้อง","application_period":"15 ต.ค. - 17 พ.ย. 2568 (กำหนดการของ TCAS69)","note":"เป็นเกณฑ์และจำนวนรับ TCAS69 ใช้เตรียมตัวได้ แต่ห้ามใช้ยืนยันการสมัคร TCAS70","source_url":"https://www.tuadmissions.in.th/img/2025111008462947.pdf"}]'::jsonb, 'official', now()
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

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'tu-direct-cpe-2570', 'tu-direct-cpe', 'รับตรง Portfolio — วิศวกรรมคอมพิวเตอร์', 2570, 1,
    'Portfolio', '1', 'portfolio', 'official',
    true, null, 200,
    null, 'https://www.tuadmissions.in.th/img/2026082807385532.pdf', 'ประกาศรับตรง รอบ 1 Portfolio ปีการศึกษา 2570',
    '2026-08-28', '2026-08-28', 'ประกาศแล้ว เปิดระบบ 14 ก.ย. 2569; ค่าสมัคร 200 บาทต่อสาขา ไม่รวมค่าธรรมเนียมธนาคาร', now()
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
    u.id, 'tu-direct-software-2570', 'tu-direct-software', 'รับตรง Portfolio — วิศวกรรมซอฟต์แวร์ (โครงการพิเศษ)', 2570, 1,
    'Portfolio', '1', 'portfolio', 'official',
    true, null, 200,
    null, 'https://www.tuadmissions.in.th/img/2026082807385532.pdf', 'ประกาศรับตรง รอบ 1 Portfolio ปีการศึกษา 2570',
    '2026-08-28', '2026-08-28', 'ประกาศแล้ว เปิดระบบ 14 ก.ย. 2569; ค่าสมัคร 200 บาทต่อสาขา ไม่รวมค่าธรรมเนียมธนาคาร', now()
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
    u.id, 'tu-direct-cs-2570', 'tu-direct-cs', 'รับตรง Portfolio — วิทยาการคอมพิวเตอร์ (ภาคปกติ)', 2570, 1,
    'Portfolio', '1', 'portfolio', 'official',
    true, null, 200,
    null, 'https://www.tuadmissions.in.th/img/2026082807385532.pdf', 'ประกาศรับตรง รอบ 1 Portfolio ปีการศึกษา 2570',
    '2026-08-28', '2026-08-28', 'ประกาศแล้ว เปิดระบบ 14 ก.ย. 2569; ค่าสมัคร 200 บาทต่อสาขา ไม่รวมค่าธรรมเนียมธนาคาร', now()
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
    u.id, 'tu-posn-2570', 'tu-posn', 'ผู้มีความสามารถดีเด่นด้านวิชาการ — สอวน. ค่าย 2', 2570, 1,
    'Portfolio', '1', 'portfolio', 'official',
    true, 1, 200,
    null, 'https://www.tuadmissions.in.th/img/2026082706504458.pdf', 'ประกาศโครงการ สอวน. และ สสวท. รอบ 1 Portfolio ปีการศึกษา 2570',
    '2026-08-27', '2026-08-28', 'โควตาบางคณะใช้ร่วมหลายสาขา ไม่ใช่จำนวนรับสาขาเดียว; เลือกได้ 1 กลุ่ม 1 คณะ/หลักสูตร/สาขา และตรวจข้อห้ามสมัครซ้ำในประกาศหน้า 2', now()
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
    u.id, 'tu-ipst-2570', 'tu-ipst', 'ผู้มีความสามารถดีเด่นด้านวิชาการ — สสวท.', 2570, 1,
    'Portfolio', '1', 'portfolio', 'official',
    true, 1, 200,
    null, 'https://www.tuadmissions.in.th/img/2026082706504458.pdf', 'ประกาศโครงการ สอวน. และ สสวท. รอบ 1 Portfolio ปีการศึกษา 2570',
    '2026-08-27', '2026-08-28', 'โควตาบางคณะใช้ร่วมหลายสาขา ไม่ใช่จำนวนรับสาขาเดียว; เลือกได้ 1 กลุ่ม 1 คณะ/หลักสูตร/สาขา และตรวจข้อห้ามสมัครซ้ำในประกาศหน้า 2', now()
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
    u.id, 'muict-ict-portfolio', 'muict-ict-portfolio', 'รอบ 1 ICT – Portfolio', 2570, 1,
    '1 Portfolio', 'ICT', 'Portfolio', 'official',
    true, null, null,
    null, 'https://www.ict.mahidol.ac.th/th/ict-round-1-ict-portfolio-academic-year-2027/', 'ประกาศ! รอบ 1 ICT – Portfolio ปีการศึกษา 2570',
    '2026-07-02', '2026-08-23T00:00:00+07:00', 'ประกาศเฉพาะคณะ ICT; กิจกรรมหลังประกาศผลใช้ปฏิทินกลาง MU-TCAS รอบ 1/1 ที่ประกาศ 10 ส.ค. 2569', now()
from public.universities u
where u.short_name = 'MU'
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
    u.id, 'muict-mu-portfolio-1-1', 'muict-mu-portfolio', 'MU – Portfolio (TCAS 1)', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://www.ict.mahidol.ac.th/th/ict-round-2-mu-portfolio-academic-year-2027/', 'ประกาศ! รอบ 2 MU – PORTFOLIO (TCAS 1) ปีการศึกษา 2570',
    '2026-07-02', '2026-08-23T00:00:00+07:00', 'เกณฑ์เฉพาะคณะ ICT และปฏิทินกลาง MU-TCAS รอบ 1/1 ตรวจล่าสุด 23 ส.ค. 2569', now()
from public.universities u
where u.short_name = 'MU'
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
    u.id, 'muict-mu-portfolio-1-2', 'muict-mu-portfolio', 'MU – Portfolio (TCAS 1)', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, null,
    null, 'https://www.ict.mahidol.ac.th/th/ict-round-2-mu-portfolio-academic-year-2027/', 'ประกาศ! รอบ 2 MU – PORTFOLIO (TCAS 1) ปีการศึกษา 2570',
    '2026-07-02', '2026-08-23T00:00:00+07:00', 'หน้า ICT ปิดรับ 10 ม.ค. 2570 เร็วกว่าปฏิทินกลางที่ปิด 15 ม.ค. 2570 จึงใช้เส้นตายเฉพาะคณะซึ่งปลอดภัยกว่า; รอบ 1/2 เปิดเฉพาะที่นั่งคงเหลือจาก 1/1', now()
from public.universities u
where u.short_name = 'MU'
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
    u.id, 'cmu-cpe-gifted-computer-1-1', 'cmu-cpe-gifted-computer', 'โครงการรับนักเรียนที่มีอัจฉริยภาพทางคอมพิวเตอร์', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfacultybyid.php?fid=703', 'รหัสโครงการ 00410608108010 วิศวกรรมคอมพิวเตอร์',
    null, '2026-08-23T00:00:00+07:00', 'ค่าธรรมเนียมภาคการศึกษาแรก 23,000 บาท', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-cpe-gifted-computer-1-2', 'cmu-cpe-gifted-computer', 'โครงการรับนักเรียนที่มีอัจฉริยภาพทางคอมพิวเตอร์', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfacultybyid.php?fid=703', 'รหัสโครงการ 00410608108010 วิศวกรรมคอมพิวเตอร์',
    null, '2026-08-23T00:00:00+07:00', 'แบบ 1.2 เพิ่มเกณฑ์ TGAT/TPAT; ค่าธรรมเนียมภาคการศึกษาแรก 23,000 บาท', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-cpe-good-grade-1-1', 'cmu-cpe-good-grade', 'โครงการรับนักเรียนผู้มีผลการเรียนดีเด่น', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfacultybyid.php?fid=704', 'รหัสโครงการ 00410608108020 วิศวกรรมคอมพิวเตอร์',
    null, '2026-08-23T00:00:00+07:00', 'ค่าธรรมเนียมภาคการศึกษาแรก 23,000 บาท', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-cpe-good-grade-1-2', 'cmu-cpe-good-grade', 'โครงการรับนักเรียนผู้มีผลการเรียนดีเด่น', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfacultybyid.php?fid=704', 'รหัสโครงการ 00410608108020 วิศวกรรมคอมพิวเตอร์',
    null, '2026-08-23T00:00:00+07:00', 'แบบ 1.2 เพิ่มเกณฑ์ TGAT/TPAT; ค่าธรรมเนียมภาคการศึกษาแรก 23,000 บาท', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-cpe-engineering-ability-1-1', 'cmu-cpe-engineering-ability', 'โครงการรับนักเรียนผู้มีความรู้ ความสามารถทางวิศวกรรม', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfacultybyid.php?fid=706', 'รหัสโครงการ 00410608108031 วิศวกรรมคอมพิวเตอร์',
    null, '2026-08-23T00:00:00+07:00', 'เปิดแบบ 1.1 จำนวน 5 คน; หน้าเว็บระบุแบบ 1.2 จำนวน 0 คน', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'kmitl-it-ability-1-1', 'kmitl-it-ability', 'โครงการนักเรียนมีความสามารถด้านเทคโนโลยีสารสนเทศ', 2570, 1,
    '1-1 Portfolio', '1.1', 'Portfolio', 'draft_waiting_official',
    false, 3, 300,
    32000, 'https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1', 'รอบที่ 1-1 Portfolio TCAS 2570 (รอประกาศอย่างเป็นทางการ)',
    null, '2026-08-23T00:00:00+07:00', 'ห้ามแสดงต่อผู้ใช้จนกว่าสถานะหน้าเว็บจะเป็นประกาศอย่างเป็นทางการ', now()
from public.universities u
where u.short_name = 'KMITL'
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
    u.id, 'kmitl-academic-it-1-1', 'kmitl-academic-it', 'โครงการนักเรียนที่มีศักยภาพทางวิชาการและเทคโนโลยีสารสนเทศ', 2570, 1,
    '1-1 Portfolio', '1.1', 'Portfolio', 'draft_waiting_official',
    false, 3, 300,
    32000, 'https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1', 'รอบที่ 1-1 Portfolio TCAS 2570 (รอประกาศอย่างเป็นทางการ)',
    null, '2026-08-23T00:00:00+07:00', 'ห้ามแสดงต่อผู้ใช้จนกว่าสถานะหน้าเว็บจะเป็นประกาศอย่างเป็นทางการ', now()
from public.universities u
where u.short_name = 'KMITL'
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
    u.id, 'kmitl-english-it-1-1', 'kmitl-english-it', 'โครงการนักเรียนที่มีความสามารถด้านภาษาอังกฤษและเทคโนโลยีสารสนเทศ', 2570, 1,
    '1-1 Portfolio', '1.1', 'Portfolio', 'draft_waiting_official',
    false, 2, 300,
    32000, 'https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1', 'รอบที่ 1-1 Portfolio TCAS 2570 (รอประกาศอย่างเป็นทางการ)',
    null, '2026-08-23T00:00:00+07:00', 'ห้ามแสดงต่อผู้ใช้จนกว่าสถานะหน้าเว็บจะเป็นประกาศอย่างเป็นทางการ', now()
from public.universities u
where u.short_name = 'KMITL'
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
    u.id, 'kmutt-sit-active-recruitment-1', 'kmutt-sit-active-recruitment', 'โครงการ Active Recruitment คณะเทคโนโลยีสารสนเทศ', 2570, 1,
    '1 Portfolio', 'ครั้งที่ 1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://join.kmutt.ac.th/projects/d3746263-568f-4250-bd7d-0ff9dc0d8210', 'รอบที่ 1 โครงการ Active Recruitment คณะเทคโนโลยีสารสนเทศ (ครั้งที่ 1) ปีการศึกษา 2570',
    '2026-08-05', '2026-08-23T00:00:00+07:00', 'ประกาศมหาวิทยาลัยและเกณฑ์รายหลักสูตรลงวันที่ 5 ส.ค. 2569; 350 บาทเป็นค่าสมัคร/ค่าสอบคัดเลือกที่ชำระภายหลังเฉพาะผู้ผ่านการคัดเลือก ไม่ใช่ค่าธรรมเนียมตอนยื่นใบสมัคร', now()
from public.universities u
where u.short_name = 'KMUTT'
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
    u.id, 'kmutt-sit-active-recruitment-3', 'kmutt-sit-active-recruitment', 'โครงการ Active Recruitment คณะเทคโนโลยีสารสนเทศ', 2570, 1,
    '1 Portfolio', 'ครั้งที่ 3', 'Portfolio', 'official',
    true, null, null,
    null, 'https://join.kmutt.ac.th/projects/59adc3a3-b38c-4527-85e0-690a4cf14b91', 'รอบที่ 1 โครงการ Active Recruitment คณะเทคโนโลยีสารสนเทศ (ครั้งที่ 3) ปีการศึกษา 2570',
    '2026-08-17', '2026-08-23T00:00:00+07:00', 'หน้าโครงการและไฟล์เกณฑ์เฉพาะครั้งที่ 3 ประกาศแล้ว แต่สถานะระบบสมัครยังเป็นกำลังจะเปิด; 350 บาทชำระภายหลังเฉพาะผู้ผ่านการคัดเลือก', now()
from public.universities u
where u.short_name = 'KMUTT'
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
    u.id, 'mu-computer-engineering-portfolio-1-1', 'mu-computer-engineering-portfolio', 'TCAS 1/1 วิศวกรรมคอมพิวเตอร์', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    30000, 'https://www.eg.mahidol.ac.th/egmu/admission/tcas-admission.html', 'เกณฑ์คุณสมบัติขั้นต่ำ TCAS70/1 วิศวกรรมคอมพิวเตอร์ มหาวิทยาลัยมหิดล',
    '2026-08-10', '2026-08-23T00:00:00+07:00', 'รับ 10 คนในรอบ 1/1; ไม่เปิดรอบ 1/2; ค่าเล่าเรียนรวมตลอดหลักสูตร 240,000 บาท', now()
from public.universities u
where u.short_name = 'MU'
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
    u.id, 'ku-csc-education-opportunity-1-1', 'ku-csc-education-opportunity', 'โครงการขยายโอกาสทางการศึกษา วิทยาเขตเฉลิมพระเกียรติ จังหวัดสกลนคร', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://misreg.csc.ku.ac.th/admission/?page_id=63', 'ประกาศรับสมัคร TCAS70 รอบที่ 1 โครงการขยายโอกาสทางการศึกษา',
    '2026-08-21', '2026-08-23T00:00:00+07:00', 'นำเข้าเฉพาะสาขาสายคอมที่ประกาศจำนวนรับและเกณฑ์แล้ว; วิทยาการคอมพิวเตอร์ไม่มีสัมภาษณ์ และวิศวกรรมคอมพิวเตอร์ต้องผ่าน GPAX ขั้นต่ำตามประกาศ', now()
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
    u.id, 'tu-siit-osp-2027', 'tu-siit-osp', 'Outstanding Student Program (OSP)', 2570, 1,
    '1 Portfolio', 'OSP / Inter Portfolio 1', 'Scholarship exam + Inter Portfolio', 'official',
    true, null, null,
    null, 'https://admissions.siit.tu.ac.th/admission_box/outstanding-student-program-osp/', 'Outstanding Student Program (OSP) Academic Year 2027',
    '2026-03-30', '2026-08-23T00:00:00+07:00', 'เป็นเส้นทางสอบชิงทุนและรับเข้าศึกษา; ผู้ผ่าน OSP ทุกคนต้องสมัคร Inter Portfolio 1 ต่อ โดยประกาศระบุว่าไม่ต้องทำ Portfolio', now()
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
    u.id, 'kmutt-sit-active-recruitment-2', 'kmutt-sit-active-recruitment', 'โครงการ Active Recruitment คณะเทคโนโลยีสารสนเทศ', 2570, 1,
    '1 Portfolio', 'ครั้งที่ 2', 'Portfolio', 'official',
    true, null, null,
    null, 'https://join.kmutt.ac.th/projects/c02bf829-5c3c-408d-8bd9-515baebb80dd', 'รอบที่ 1 โครงการ Active Recruitment คณะเทคโนโลยีสารสนเทศ (ครั้งที่ 2) ปีการศึกษา 2570',
    '2026-08-05', '2026-08-23T00:00:00+07:00', 'เกณฑ์รายหลักสูตรลงวันที่ 5 ส.ค. 2569; หน้าโครงการอัปเดต 17 ส.ค. 2569; 350 บาทชำระภายหลังเฉพาะผู้ผ่านการคัดเลือก', now()
from public.universities u
where u.short_name = 'KMUTT'
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
    u.id, 'kmutt-active-recruitment-general', 'kmutt-active-recruitment-general', 'โครงการ Active Recruitment', 2570, 1,
    '1 Portfolio', 'ทั่วไป', 'Portfolio', 'official',
    true, null, null,
    null, 'https://join.kmutt.ac.th/projects/b82694a9-f0a6-4a3a-b18f-0de4f1e8bbfc', 'รอบที่ 1 โครงการ Active Recruitment ปีการศึกษา 2570',
    '2026-08-17', '2026-08-23T00:00:00+07:00', 'นำเข้าเฉพาะหลักสูตรสายคอม/IT/เกมที่มีเกณฑ์และจำนวนรับในเอกสารวันที่ 17 ส.ค. 2569', now()
from public.universities u
where u.short_name = 'KMUTT'
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
    u.id, 'kmutt-direct-good-grade', 'kmutt-direct-good-grade', 'โครงการคัดเลือกตรง ประเภทเรียนดี', 2570, 1,
    '1 Portfolio', 'เรียนดี', 'Portfolio', 'official',
    true, null, null,
    null, 'https://join.kmutt.ac.th/projects/fe4b52a7-d942-4807-9b59-1527675dad89', 'รอบที่ 1 โครงการคัดเลือกตรง ประเภทเรียนดี ปีการศึกษา 2570',
    '2026-08-20', '2026-08-23T00:00:00+07:00', 'จำนวนรับเป็นจำนวนผู้มีสิทธิ์เข้าศึกษา ไม่ใช่จำนวนเรียกสอบ; หน้าโครงการอัปเดต 20 ส.ค. 2569', now()
from public.universities u
where u.short_name = 'KMUTT'
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
    u.id, 'kmutt-international-admission-1', 'kmutt-international-admission', 'KMUTT International Admission', 2570, 1,
    '1 Portfolio', 'ครั้งที่ 1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://join.kmutt.ac.th/projects/b44debb2-6551-4eca-9e65-8ed7a7a3a179', 'รอบที่ 1 โครงการ KMUTT International Admission (ครั้งที่ 1) ปีการศึกษา 2570',
    '2026-08-20', '2026-08-23T00:00:00+07:00', 'นำเข้าเฉพาะ CPE, CS และ Game Design ที่ประกาศเกณฑ์ครบ; หน้าโครงการอัปเดต 20 ส.ค. 2569', now()
from public.universities u
where u.short_name = 'KMUTT'
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
    u.id, 'cmu-00410507106011-1-1', 'cmu-00410507106011', 'การรับนักเรียนพิการ', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410507106011; ค่าธรรมเนียมภาคการศึกษาแรก 18,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00410507107010-1-1', 'cmu-00410507107010', 'โครงการสานฝันปั้นนักวิทยาศาสตร์', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410507107010; ค่าธรรมเนียมภาคการศึกษาแรก 18,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00410507107020-1-1', 'cmu-00410507107020', 'โครงการสนับสนุนการจัดตั้งห้องเรียนวิทยาศาสตร์ในโรงเรียนฯ (วมว.)', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410507107020; ค่าธรรมเนียมภาคการศึกษาแรก 18,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00410507107030-1-1', 'cmu-00410507107030', 'โครงการรับนักเรียนจากค่ายโอลิมปิกวิชาการ', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410507107030; ค่าธรรมเนียมภาคการศึกษาแรก 18,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00410507107040-1-1', 'cmu-00410507107040', 'โครงการพัฒนาอัจฉริยภาพสำหรับเด็กและเยาวชน (ร่วมกับ สวทช.)', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410507107040; ค่าธรรมเนียมภาคการศึกษาแรก 18,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00410507107050-1-1', 'cmu-00410507107050', 'โครงการรับผู้มีความสามารถพิเศษทางวิทยาศาสตร์และเทคโนโลยี', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410507107050; ค่าธรรมเนียมภาคการศึกษาแรก 18,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00410508106011-1-1', 'cmu-00410508106011', 'การรับนักเรียนพิการ', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410508106011; ค่าธรรมเนียมภาคการศึกษาแรก 18,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00410508107010-1-1', 'cmu-00410508107010', 'โครงการรับนักเรียนจากค่ายโอลิมปิกวิชาการ', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410508107010; ค่าธรรมเนียมภาคการศึกษาแรก 18,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00410508107020-1-1', 'cmu-00410508107020', 'โครงการพัฒนาอัจฉริยภาพสำหรับเด็กและเยาวชน (ร่วมกับ สวทช.)', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410508107020; ค่าธรรมเนียมภาคการศึกษาแรก 18,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00410508107030-1-1', 'cmu-00410508107030', 'โครงการสนับสนุนการจัดตั้งห้องเรียนวิทยาศาสตร์ในโรงเรียนฯ (วมว.)', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410508107030; ค่าธรรมเนียมภาคการศึกษาแรก 18,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00410508107040-1-1', 'cmu-00410508107040', 'โครงการสานฝันปั้นนักวิทยาศาสตร์', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410508107040; ค่าธรรมเนียมภาคการศึกษาแรก 18,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00410608108040-1-1', 'cmu-00410608108040', 'โครงการความร่วมมือสร้างสังคมแห่งการเรียนรู้นวัตกรรมด้านพลังงานและสิ่งแวดล้อม', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410608108040; ค่าธรรมเนียมภาคการศึกษาแรก 23,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00410666108010-1-1', 'cmu-00410666108010', 'โครงการรับนักเรียนที่มีอัจฉริยภาพทางคอมพิวเตอร์', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410666108010; ค่าธรรมเนียมภาคการศึกษาแรก 80,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00410666108010-1-2', 'cmu-00410666108010', 'โครงการรับนักเรียนที่มีอัจฉริยภาพทางคอมพิวเตอร์', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410666108010; ค่าธรรมเนียมภาคการศึกษาแรก 80,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00410666108020-1-1', 'cmu-00410666108020', 'โครงการรับนักเรียนผู้มีความสามารถทางภาษาอังกฤษ', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410666108020; ค่าธรรมเนียมภาคการศึกษาแรก 80,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00410666108020-1-2', 'cmu-00410666108020', 'โครงการรับนักเรียนผู้มีความสามารถทางภาษาอังกฤษ', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410666108020; ค่าธรรมเนียมภาคการศึกษาแรก 80,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00410666108030-1-1', 'cmu-00410666108030', 'โครงการรับนักเรียนผู้มีผลการเรียนดีเด่น', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410666108030; ค่าธรรมเนียมภาคการศึกษาแรก 80,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00410666108030-1-2', 'cmu-00410666108030', 'โครงการรับนักเรียนผู้มีผลการเรียนดีเด่น', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410666108030; ค่าธรรมเนียมภาคการศึกษาแรก 80,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00410666108041-1-1', 'cmu-00410666108041', 'โครงการ Women in Engineering', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410666108041; ค่าธรรมเนียมภาคการศึกษาแรก 80,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00410666108041-1-2', 'cmu-00410666108041', 'โครงการ Women in Engineering', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410666108041; ค่าธรรมเนียมภาคการศึกษาแรก 80,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00410666108050-1-1', 'cmu-00410666108050', 'โครงการรับนักเรียนผู้มีความรู้ ความสามารถทางวิศวกรรม', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00410666108050; ค่าธรรมเนียมภาคการศึกษาแรก 80,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00412102102010-1-1', 'cmu-00412102102010', 'การรับนักเรียนผู้มีผลด้านกีฬาดีเด่น', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412102102010; ค่าธรรมเนียมภาคการศึกษาแรก 33,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00412102103010-1-1', 'cmu-00412102103010', 'การรับนักเรียนที่มีผลการเรียนดี', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412102103010; ค่าธรรมเนียมภาคการศึกษาแรก 33,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00412102108010-1-1', 'cmu-00412102108010', 'โครงการส่งเสริมนักเรียนผู้ประกอบการร้านค้าออนไลน์', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412102108010; ค่าธรรมเนียมภาคการศึกษาแรก 33,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00412102108020-1-1', 'cmu-00412102108020', 'โครงการส่งเสริมนักเรียนผู้มีอิทธิพลทาง Social Media', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412102108020; ค่าธรรมเนียมภาคการศึกษาแรก 33,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00412102108030-1-1', 'cmu-00412102108030', 'โครงการรับนักเรียนผู้ที่มีความสามารถพิเศษฯ (Gifted IT)', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412102108030; ค่าธรรมเนียมภาคการศึกษาแรก 33,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00412104103010-1-1', 'cmu-00412104103010', 'การรับนักเรียนที่มีผลการเรียนดี', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412104103010; ค่าธรรมเนียมภาคการศึกษาแรก 38,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00412104108010-1-1', 'cmu-00412104108010', 'โครงการส่งเสริมนักเรียนผู้มีความสามารถพิเศษฯ ในการประกวดแข่งขัน', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412104108010; ค่าธรรมเนียมภาคการศึกษาแรก 38,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00412104108020-1-1', 'cmu-00412104108020', 'โครงการรับนักเรียนผู้ที่มีความสามารถพิเศษฯ (Gifted IT)', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412104108020; ค่าธรรมเนียมภาคการศึกษาแรก 38,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00412105107010-1-1', 'cmu-00412105107010', 'โครงการความร่วมมือกับอุตสาหกรรมดิจิทัล', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412105107010; ค่าธรรมเนียมภาคการศึกษาแรก 33,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00412105108010-1-1', 'cmu-00412105108010', 'โครงการผู้พัฒนานวัตกรรมดิจิทัลสร้างสรรค์', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412105108010; ค่าธรรมเนียมภาคการศึกษาแรก 33,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00412171103011-1-1', 'cmu-00412171103011', 'การรับนักเรียนที่มีผลการเรียนดี', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412171103011; ค่าธรรมเนียมภาคการศึกษาแรก 40,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00412171108011-1-1', 'cmu-00412171108011', 'โครงการส่งเสริมนักเรียนผู้มีความสามารถพิเศษฯ ในการประกวดแข่งขัน', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412171108011; ค่าธรรมเนียมภาคการศึกษาแรก 40,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00412171108020-1-1', 'cmu-00412171108020', 'โครงการรับนักเรียนผู้ที่มีความสามารถพิเศษฯ (Gifted IT)', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412171108020; ค่าธรรมเนียมภาคการศึกษาแรก 40,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00412401101010-1-1', 'cmu-00412401101010', 'การรับด้วยแฟ้มสะสมผลงาน', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412401101010; ค่าธรรมเนียมภาคการศึกษาแรก 55,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00412401101010-1-2', 'cmu-00412401101010', 'การรับด้วยแฟ้มสะสมผลงาน', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412401101010; ค่าธรรมเนียมภาคการศึกษาแรก 55,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00412401101020-1-1', 'cmu-00412401101020', 'การรับด้วยแฟ้มสะสมผลงาน', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412401101020; ค่าธรรมเนียมภาคการศึกษาแรก 55,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00412401101020-1-2', 'cmu-00412401101020', 'การรับด้วยแฟ้มสะสมผลงาน', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412401101020; ค่าธรรมเนียมภาคการศึกษาแรก 55,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00412401108010-1-1', 'cmu-00412401108010', 'โครงการรับนักเรียนที่มีความเป็นเลิศด้านภาษาอังกฤษและภาษาจีน', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412401108010; ค่าธรรมเนียมภาคการศึกษาแรก 55,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00412401108020-1-1', 'cmu-00412401108020', 'โครงการรับนักเรียนที่มีความเป็นเลิศด้าน Startup หรือผู้ประกอบการดิจิทัล', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412401108020; ค่าธรรมเนียมภาคการศึกษาแรก 55,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00412401108030-1-1', 'cmu-00412401108030', 'โครงการรับนักเรียนที่มีความเป็นเลิศด้านการสื่อสารในช่องทางดิจิทัล (Digital Influencer)', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412401108030; ค่าธรรมเนียมภาคการศึกษาแรก 55,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'cmu-00412401108040-1-1', 'cmu-00412401108040', 'โครงการรับนักเรียนที่มีผลการเรียนดีและเป็นทายาทของครอบครัวผู้ประกอบการทุกประเภท', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, null,
    null, 'https://admission.reg.cmu.ac.th/tcas/findfaculty.php?ro=1&tsearch=&tsearch_occ=&tfac=&tcur=&pgroup=&grouptype=TCAS', 'ระบบค้นหาคณะ/สาขา มช. TCAS70 รอบ 1 Portfolio',
    '2026-07-31', '2026-08-23T00:00:00+07:00', 'รหัสโครงการทางการ 00412401108040; ค่าธรรมเนียมภาคการศึกษาแรก 55,000 บาท; เกณฑ์เต็มเก็บใน additional_requirements.official_criteria_text', now()
from public.universities u
where u.short_name = 'CMU'
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
    u.id, 'kmitl-chumphon-cpe-portfolio-1-1', 'kmitl-chumphon-cpe-portfolio', 'แฟ้มสะสมผลงาน 1-1 (วิทยาเขตชุมพรเขตรอุดมศักดิ์)', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, 300,
    20000, 'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4629_2026_08_04-11-01-24_a74b5.pdf', 'ประกาศ Portfolio รอบ 1-1 ถึง 1-5 วิทยาเขตชุมพรเขตรอุดมศักดิ์ TCAS70',
    '2026-08-03', '2026-08-23T23:37:03+07:00', 'ประกาศทางการครอบคลุมรอบ 1-1 ถึง 1-5; CURRICULUM_ID 14142, PROJECT_ID 2409 เป็นรายการรอบ 1-1 ในระบบสมัคร', now()
from public.universities u
where u.short_name = 'KMITL'
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
    u.id, 'kmitl-chumphon-cpe-good-student-14plus-1-1', 'kmitl-chumphon-cpe-good-student-14plus', 'โครงการเรียนดี 14 จังหวัดพลัส 1-1 (วิทยาเขตชุมพรเขตรอุดมศักดิ์)', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, 300,
    20000, 'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4630_2026_08_04-11-03-46_94eee.pdf', 'ประกาศโครงการเรียนดี 14 จังหวัดพลัส วิทยาเขตชุมพรเขตรอุดมศักดิ์ TCAS70',
    '2026-08-03', '2026-08-23T23:37:03+07:00', 'รายการทางการในระบบรับสมัคร: CURRICULUM_ID 14157, PROJECT_ID 2410', now()
from public.universities u
where u.short_name = 'KMITL'
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
    u.id, 'kmitl-chumphon-cpe-network-1-1', 'kmitl-chumphon-cpe-network', 'โครงการโรงเรียนหรือวิทยาลัยในเครือข่าย สจล.-ชุมพร 1-1', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, 300,
    20000, 'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4633_2026_08_04-11-33-47_8fcf4.pdf', 'ประกาศโครงการโรงเรียนหรือวิทยาลัยในเครือข่าย สจล.-ชุมพร TCAS70',
    '2026-08-03', '2026-08-23T23:37:03+07:00', 'ประกาศทางการครอบคลุมรอบ 1-1 และ 1-2; CURRICULUM_ID 14171, PROJECT_ID 2411 เป็นรายการรอบ 1-1 ในระบบสมัคร', now()
from public.universities u
where u.short_name = 'KMITL'
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
    u.id, 'kmitl-chumphon-cpe-potential-1-1', 'kmitl-chumphon-cpe-potential', 'โครงการผู้มีศักยภาพด้านวิศวกรรมและเทคโนโลยี 1-1', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, 300,
    20000, 'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4632_2026_08_04-11-30-08_2461b.pdf', 'ประกาศโครงการผู้มีศักยภาพด้านวิศวกรรมและเทคโนโลยี วิทยาเขตชุมพรเขตรอุดมศักดิ์ TCAS70',
    '2026-08-03', '2026-08-23T23:37:03+07:00', 'ประกาศทางการครอบคลุมรอบ 1-1 และ 1-2; CURRICULUM_ID 14187, PROJECT_ID 2413 เป็นรายการรอบ 1-1 ในระบบสมัคร', now()
from public.universities u
where u.short_name = 'KMITL'
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
    u.id, 'kmitl-chumphon-cpe-portfolio-1-2', 'kmitl-chumphon-cpe-portfolio', 'แฟ้มสะสมผลงาน 1-2 (วิทยาเขตชุมพรเขตรอุดมศักดิ์)', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 300,
    20000, 'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4629_2026_08_04-11-01-24_a74b5.pdf', 'ประกาศ Portfolio รอบ 1-1 ถึง 1-5 วิทยาเขตชุมพรเขตรอุดมศักดิ์ TCAS70',
    '2026-08-03', '2026-08-23T23:37:03+07:00', 'ประกาศทางการระบุรอบ 1.2; จำนวนรับวิศวกรรมคอมพิวเตอร์ 40 คนเป็นยอดรวมรอบ 1-1 ถึง 1-5', now()
from public.universities u
where u.short_name = 'KMITL'
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
    u.id, 'kmitl-chumphon-cpe-portfolio-1-3', 'kmitl-chumphon-cpe-portfolio', 'แฟ้มสะสมผลงาน 1-3 (วิทยาเขตชุมพรเขตรอุดมศักดิ์)', 2570, 1,
    '1 Portfolio', '1.3', 'Portfolio', 'official',
    true, null, 300,
    20000, 'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4629_2026_08_04-11-01-24_a74b5.pdf', 'ประกาศ Portfolio รอบ 1-1 ถึง 1-5 วิทยาเขตชุมพรเขตรอุดมศักดิ์ TCAS70',
    '2026-08-03', '2026-08-23T23:37:03+07:00', 'ประกาศทางการระบุรอบ 1.3; จำนวนรับวิศวกรรมคอมพิวเตอร์ 40 คนเป็นยอดรวมรอบ 1-1 ถึง 1-5', now()
from public.universities u
where u.short_name = 'KMITL'
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
    u.id, 'kmitl-chumphon-cpe-portfolio-1-4', 'kmitl-chumphon-cpe-portfolio', 'แฟ้มสะสมผลงาน 1-4 (วิทยาเขตชุมพรเขตรอุดมศักดิ์)', 2570, 1,
    '1 Portfolio', '1.4', 'Portfolio', 'official',
    true, null, 300,
    20000, 'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4629_2026_08_04-11-01-24_a74b5.pdf', 'ประกาศ Portfolio รอบ 1-1 ถึง 1-5 วิทยาเขตชุมพรเขตรอุดมศักดิ์ TCAS70',
    '2026-08-03', '2026-08-23T23:37:03+07:00', 'ประกาศทางการระบุรอบ 1.4; จำนวนรับวิศวกรรมคอมพิวเตอร์ 40 คนเป็นยอดรวมรอบ 1-1 ถึง 1-5', now()
from public.universities u
where u.short_name = 'KMITL'
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
    u.id, 'kmitl-chumphon-cpe-portfolio-1-5', 'kmitl-chumphon-cpe-portfolio', 'แฟ้มสะสมผลงาน 1-5 (วิทยาเขตชุมพรเขตรอุดมศักดิ์)', 2570, 1,
    '1 Portfolio', '1.5', 'Portfolio', 'official',
    true, null, 300,
    20000, 'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4629_2026_08_04-11-01-24_a74b5.pdf', 'ประกาศ Portfolio รอบ 1-1 ถึง 1-5 วิทยาเขตชุมพรเขตรอุดมศักดิ์ TCAS70',
    '2026-08-03', '2026-08-23T23:37:03+07:00', 'ประกาศทางการระบุรอบ 1.5; จำนวนรับวิศวกรรมคอมพิวเตอร์ 40 คนเป็นยอดรวมรอบ 1-1 ถึง 1-5', now()
from public.universities u
where u.short_name = 'KMITL'
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
    u.id, 'kmitl-chumphon-cpe-network-1-2', 'kmitl-chumphon-cpe-network', 'โครงการโรงเรียนหรือวิทยาลัยในเครือข่าย สจล.-ชุมพร 1-2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 300,
    20000, 'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4633_2026_08_04-11-33-47_8fcf4.pdf', 'ประกาศโครงการโรงเรียนหรือวิทยาลัยในเครือข่าย สจล.-ชุมพร TCAS70',
    '2026-08-03', '2026-08-23T23:37:03+07:00', 'ประกาศทางการระบุรอบ 1-2; จำนวนรับวิศวกรรมคอมพิวเตอร์ 15 คนเป็นยอดรวมรอบ 1-1 และ 1-2', now()
from public.universities u
where u.short_name = 'KMITL'
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
    u.id, 'kmitl-chumphon-cpe-potential-1-2', 'kmitl-chumphon-cpe-potential', 'โครงการผู้มีศักยภาพด้านวิศวกรรมและเทคโนโลยี 1-2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 300,
    20000, 'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4632_2026_08_04-11-30-08_2461b.pdf', 'ประกาศโครงการผู้มีศักยภาพด้านวิศวกรรมและเทคโนโลยี วิทยาเขตชุมพรเขตรอุดมศักดิ์ TCAS70',
    '2026-08-03', '2026-08-23T23:37:03+07:00', 'ประกาศทางการระบุรอบ 1-2; จำนวนรับวิศวกรรมคอมพิวเตอร์ 15 คนเป็นยอดรวมรอบ 1-1 และ 1-2', now()
from public.universities u
where u.short_name = 'KMITL'
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
    u.id, 'kmitl-science-cs-good-student-1-1', 'kmitl-science-cs-good-student', 'โครงการเรียนดี 1.1', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, 2, 300,
    19000, 'https://www.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4640_2026_08_23-19-39-43_c47b2.pdf', 'ประกาศรับสมัครรอบที่ 1 Portfolio คณะวิทยาศาสตร์ สจล. ประจำปีการศึกษา 2570',
    '2026-08-23', '2026-08-23T23:37:03+07:00', 'ประกาศลงวันที่ 21 สิงหาคม 2569; รอบ 1.1 รับวิทยาการคอมพิวเตอร์รวม 25 คนทุกโครงการ และไม่ได้แยกจำนวนรับรายโครงการ', now()
from public.universities u
where u.short_name = 'KMITL'
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
    u.id, 'kmitl-science-cs-good-student-1-2', 'kmitl-science-cs-good-student', 'โครงการเรียนดี 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, 2, 300,
    19000, 'https://www.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4640_2026_08_23-19-39-43_c47b2.pdf', 'ประกาศรับสมัครรอบที่ 1 Portfolio คณะวิทยาศาสตร์ สจล. ประจำปีการศึกษา 2570',
    '2026-08-23', '2026-08-23T23:37:03+07:00', 'ประกาศลงวันที่ 21 สิงหาคม 2569; รอบ 1.2 รับวิทยาการคอมพิวเตอร์รวม 25 คนทุกโครงการ และไม่ได้แยกจำนวนรับรายโครงการ', now()
from public.universities u
where u.short_name = 'KMITL'
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
    u.id, 'kmitl-science-cs-science-talent-1-1', 'kmitl-science-cs-science-talent', 'โครงการความสามารถพิเศษทางวิทยาศาสตร์ 1.1', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, 2, 300,
    19000, 'https://www.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4640_2026_08_23-19-39-43_c47b2.pdf', 'ประกาศรับสมัครรอบที่ 1 Portfolio คณะวิทยาศาสตร์ สจล. ประจำปีการศึกษา 2570',
    '2026-08-23', '2026-08-23T23:37:03+07:00', 'ประกาศลงวันที่ 21 สิงหาคม 2569; รอบ 1.1 รับวิทยาการคอมพิวเตอร์รวม 25 คนทุกโครงการ และไม่ได้แยกจำนวนรับรายโครงการ', now()
from public.universities u
where u.short_name = 'KMITL'
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
    u.id, 'kmitl-science-cs-science-talent-1-2', 'kmitl-science-cs-science-talent', 'โครงการความสามารถพิเศษทางวิทยาศาสตร์ 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, 2, 300,
    19000, 'https://www.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4640_2026_08_23-19-39-43_c47b2.pdf', 'ประกาศรับสมัครรอบที่ 1 Portfolio คณะวิทยาศาสตร์ สจล. ประจำปีการศึกษา 2570',
    '2026-08-23', '2026-08-23T23:37:03+07:00', 'ประกาศลงวันที่ 21 สิงหาคม 2569; รอบ 1.2 รับวิทยาการคอมพิวเตอร์รวม 25 คนทุกโครงการ และไม่ได้แยกจำนวนรับรายโครงการ', now()
from public.universities u
where u.short_name = 'KMITL'
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
    u.id, 'kmitl-science-cs-staff-child-1-1', 'kmitl-science-cs-staff-child', 'โครงการบุตรบุคลากร สจล. 1.1', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, 2, 300,
    19000, 'https://www.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4640_2026_08_23-19-39-43_c47b2.pdf', 'ประกาศรับสมัครรอบที่ 1 Portfolio คณะวิทยาศาสตร์ สจล. ประจำปีการศึกษา 2570',
    '2026-08-23', '2026-08-23T23:37:03+07:00', 'ประกาศลงวันที่ 21 สิงหาคม 2569; รอบ 1.1 รับวิทยาการคอมพิวเตอร์รวม 25 คนทุกโครงการ และไม่ได้แยกจำนวนรับรายโครงการ', now()
from public.universities u
where u.short_name = 'KMITL'
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
    u.id, 'kmitl-science-cs-staff-child-1-2', 'kmitl-science-cs-staff-child', 'โครงการบุตรบุคลากร สจล. 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, 2, 300,
    19000, 'https://www.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4640_2026_08_23-19-39-43_c47b2.pdf', 'ประกาศรับสมัครรอบที่ 1 Portfolio คณะวิทยาศาสตร์ สจล. ประจำปีการศึกษา 2570',
    '2026-08-23', '2026-08-23T23:37:03+07:00', 'ประกาศลงวันที่ 21 สิงหาคม 2569; รอบ 1.2 รับวิทยาการคอมพิวเตอร์รวม 25 คนทุกโครงการ และไม่ได้แยกจำนวนรับรายโครงการ', now()
from public.universities u
where u.short_name = 'KMITL'
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
    u.id, 'kmitl-science-cs-professional-developer-1-2', 'kmitl-science-cs-professional-developer', 'โครงการนักพัฒนามืออาชีพ 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, 2, 300,
    19000, 'https://www.reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4640_2026_08_23-19-39-43_c47b2.pdf', 'ประกาศรับสมัครรอบที่ 1 Portfolio คณะวิทยาศาสตร์ สจล. ประจำปีการศึกษา 2570',
    '2026-08-23', '2026-08-23T23:37:03+07:00', 'ประกาศลงวันที่ 21 สิงหาคม 2569; รอบ 1.2 รับวิทยาการคอมพิวเตอร์รวม 25 คนทุกโครงการ และไม่ได้แยกจำนวนรับรายโครงการ', now()
from public.universities u
where u.short_name = 'KMITL'
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
select p.id, m.id, 20, 'ศูนย์รังสิต รหัส 10050210300501A'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'tu-engineering-computer-engineering'
where p.code = 'tu-direct-cpe-2570'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 35, 'ศูนย์รังสิต โครงการพิเศษ รหัส 10050210301001B'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'tu-engineering-software-engineering'
where p.code = 'tu-direct-software-2570'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 20, 'ภาคปกติ รหัส 10050209220201A เท่านั้น; 20 ที่นั่งภาคพิเศษเป็นคนละรายการ ไม่รวมในจำนวนนี้; หลักสูตรอยู่ระหว่างปรับปรุง'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'tu-science-computer-science'
where p.code = 'tu-direct-cs-2570'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'คณะวิทยาศาสตร์ฯ รับรวมหลายสาขา 30 คน โดยวิทยาการคอมพิวเตอร์รับไม่เกิน 15 คน ไม่ใช่รับสาขานี้ 30 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'tu-science-computer-science'
where p.code = 'tu-posn-2570'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'คณะวิทยาศาสตร์ฯ รับรวมหลายสาขา 7 คน ไม่ได้จัดสรรเฉพาะวิทยาการคอมพิวเตอร์'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'tu-science-computer-science'
where p.code = 'tu-ipst-2570'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'คณะวิศวกรรมศาสตร์รับรวม 6 สาขา 4 คน ไม่ใช่โควตาวิศวกรรมคอมพิวเตอร์ 4 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'tu-engineering-computer-engineering'
where p.code = 'tu-ipst-2570'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'ตารางกลางมหิดลระบุ 60 ที่นั่งรวมของหลักสูตร ICT ในรอบ 1/1 แต่ไม่แยกจำนวนระหว่างโครงการ ICT–Portfolio และ MU–Portfolio จึงไม่ใส่ตัวเลขซ้ำรายโครงการ'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'mu-ict'
where p.code = 'muict-ict-portfolio'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'ตารางกลางมหิดลระบุ 60 ที่นั่งรวมของหลักสูตร ICT ในรอบ 1/1 แต่ไม่แยกจำนวนระหว่างโครงการ ICT–Portfolio และ MU–Portfolio จึงไม่ใส่ตัวเลขซ้ำรายโครงการ'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'mu-ict'
where p.code = 'muict-mu-portfolio-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'เปิดเฉพาะที่นั่งคงเหลือจากรอบ 1/1 ตามหมายเหตุ A ของตารางกลาง จึงไม่มีจำนวนคงที่'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'mu-ict'
where p.code = 'muict-mu-portfolio-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 27, 'รหัสโครงการ 00410608108010'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cpe'
where p.code = 'cmu-cpe-gifted-computer-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 3, 'รหัสโครงการ 00410608108010'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cpe'
where p.code = 'cmu-cpe-gifted-computer-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 22, 'รหัสโครงการ 00410608108020'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cpe'
where p.code = 'cmu-cpe-good-grade-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 3, 'รหัสโครงการ 00410608108020'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cpe'
where p.code = 'cmu-cpe-good-grade-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, 'รหัสโครงการ 00410608108031'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cpe'
where p.code = 'cmu-cpe-engineering-ability-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 50, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-it'
where p.code = 'kmitl-it-ability-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-dsba'
where p.code = 'kmitl-it-ability-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-ait'
where p.code = 'kmitl-it-ability-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-it'
where p.code = 'kmitl-academic-it-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 2, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-dsba'
where p.code = 'kmitl-academic-it-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 1, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-ait'
where p.code = 'kmitl-academic-it-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-it'
where p.code = 'kmitl-english-it-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 1, 'โครงการนี้ไม่เปิดรับ DSBA'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-ait'
where p.code = 'kmitl-english-it-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 10, 'รับ ม.6 หรือ GED จำนวน 10 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-cs'
where p.code = 'kmutt-sit-active-recruitment-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 10, 'รับ ม.6 จำนวน 8 คน และ ปวช. จำนวน 2 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-dsi'
where p.code = 'kmutt-sit-active-recruitment-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 28, 'รับ ม.6 หรือ ปวช. รวม 28 คน โดยประกาศไม่แยกโควตา'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-it'
where p.code = 'kmutt-sit-active-recruitment-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 3, 'รับ ม.6 หรือ GED จำนวน 3 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-cs'
where p.code = 'kmutt-sit-active-recruitment-3'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 3, 'รับ ม.6 จำนวน 2 คน และ ปวช. จำนวน 1 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-dsi'
where p.code = 'kmutt-sit-active-recruitment-3'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 12, 'รับ ม.6 หรือ ปวช. รวม 12 คน โดยประกาศไม่แยกโควตา'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-it'
where p.code = 'kmutt-sit-active-recruitment-3'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 10, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'mu-computer-engineering'
where p.code = 'mu-computer-engineering-portfolio-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 110, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-csc-computer-science'
where p.code = 'ku-csc-education-opportunity-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 80, 'GPAX 3.00 เป็นเกณฑ์เคร่งครัดสำหรับวิศวกรรมคอมพิวเตอร์'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'ku-csc-computer-engineering'
where p.code = 'ku-csc-education-opportunity-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'รับรวมเป็นกลุ่มวิศวกรรมคอมพิวเตอร์และวิศวกรรมดิจิทัล; เลือกสาขาเมื่อจบปี 1 และประกาศไม่ระบุจำนวนรับแยก'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'tu-siit-computer-engineering'
where p.code = 'tu-siit-osp-2027'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'รับรวมเป็นกลุ่มวิศวกรรมคอมพิวเตอร์และวิศวกรรมดิจิทัล; เลือกสาขาเมื่อจบปี 1 และประกาศไม่ระบุจำนวนรับแยก'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'tu-siit-digital-engineering'
where p.code = 'tu-siit-osp-2027'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, 'รับ ม.6 หรือ GED จำนวน 5 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-cs'
where p.code = 'kmutt-sit-active-recruitment-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, 'รับ ม.6 จำนวน 4 คน และ ปวช. จำนวน 1 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-dsi'
where p.code = 'kmutt-sit-active-recruitment-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 21, 'รับ ม.6 หรือ ปวช. รวม 21 คน โดยประกาศไม่แยกโควตา'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-it'
where p.code = 'kmutt-sit-active-recruitment-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 4, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-cpe'
where p.code = 'kmutt-active-recruitment-general'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 7, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-cpe-international'
where p.code = 'kmutt-active-recruitment-general'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 25, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-media-technology'
where p.code = 'kmutt-active-recruitment-general'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 15, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-game-design'
where p.code = 'kmutt-active-recruitment-general'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 20, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-ai-systems'
where p.code = 'kmutt-active-recruitment-general'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 9, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-cpe'
where p.code = 'kmutt-direct-good-grade'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 10, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-media-technology'
where p.code = 'kmutt-direct-good-grade'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-dsi'
where p.code = 'kmutt-direct-good-grade'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 8, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-it'
where p.code = 'kmutt-direct-good-grade'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 2, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-cs'
where p.code = 'kmutt-direct-good-grade'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 10, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-cpe-international'
where p.code = 'kmutt-international-admission-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 2, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-sit-cs'
where p.code = 'kmutt-international-admission-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, null
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmutt-game-design'
where p.code = 'kmutt-international-admission-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 1, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00410507106011'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cs'
where p.code = 'cmu-00410507106011-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00410507107010'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cs'
where p.code = 'cmu-00410507107010-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 2, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00410507107020'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cs'
where p.code = 'cmu-00410507107020-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 4, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00410507107030'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cs'
where p.code = 'cmu-00410507107030-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 1, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00410507107040'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cs'
where p.code = 'cmu-00410507107040-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 10, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00410507107050'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cs'
where p.code = 'cmu-00410507107050-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 1, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00410508106011'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-data-science'
where p.code = 'cmu-00410508106011-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 1, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00410508107010'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-data-science'
where p.code = 'cmu-00410508107010-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 1, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00410508107020'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-data-science'
where p.code = 'cmu-00410508107020-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 1, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00410508107030'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-data-science'
where p.code = 'cmu-00410508107030-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00410508107040'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-data-science'
where p.code = 'cmu-00410508107040-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 3, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00410608108040'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cpe'
where p.code = 'cmu-00410608108040-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 2, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00410666108010'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cyber'
where p.code = 'cmu-00410666108010-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 1, 'จำนวนรับแบบ 1.2 ตามรหัสโครงการ 00410666108010'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cyber'
where p.code = 'cmu-00410666108010-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 2, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00410666108020'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cyber'
where p.code = 'cmu-00410666108020-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 1, 'จำนวนรับแบบ 1.2 ตามรหัสโครงการ 00410666108020'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cyber'
where p.code = 'cmu-00410666108020-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 2, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00410666108030'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cyber'
where p.code = 'cmu-00410666108030-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 1, 'จำนวนรับแบบ 1.2 ตามรหัสโครงการ 00410666108030'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cyber'
where p.code = 'cmu-00410666108030-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 2, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00410666108041'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cyber'
where p.code = 'cmu-00410666108041-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 1, 'จำนวนรับแบบ 1.2 ตามรหัสโครงการ 00410666108041'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cyber'
where p.code = 'cmu-00410666108041-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 2, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00410666108050'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cyber'
where p.code = 'cmu-00410666108050-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00412102102010'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-modern-it'
where p.code = 'cmu-00412102102010-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 20, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00412102103010'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-modern-it'
where p.code = 'cmu-00412102103010-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00412102108010'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-modern-it'
where p.code = 'cmu-00412102108010-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00412102108020'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-modern-it'
where p.code = 'cmu-00412102108020-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 15, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00412102108030'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-modern-it'
where p.code = 'cmu-00412102108030-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 15, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00412104103010'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-digital-game'
where p.code = 'cmu-00412104103010-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 2, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00412104108010'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-digital-game'
where p.code = 'cmu-00412104108010-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 8, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00412104108020'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-digital-game'
where p.code = 'cmu-00412104108020-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 25, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00412105107010'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-digital-industry'
where p.code = 'cmu-00412105107010-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 25, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00412105108010'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-digital-industry'
where p.code = 'cmu-00412105108010-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00412171103011'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-software-engineering'
where p.code = 'cmu-00412171103011-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 2, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00412171108011'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-software-engineering'
where p.code = 'cmu-00412171108011-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 8, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00412171108020'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-software-engineering'
where p.code = 'cmu-00412171108020-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 35, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00412401101010'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-digital-innovation'
where p.code = 'cmu-00412401101010-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 1, 'จำนวนรับแบบ 1.2 ตามรหัสโครงการ 00412401101010'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-digital-innovation'
where p.code = 'cmu-00412401101010-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 4, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00412401101020'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-digital-innovation'
where p.code = 'cmu-00412401101020-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 1, 'จำนวนรับแบบ 1.2 ตามรหัสโครงการ 00412401101020'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-digital-innovation'
where p.code = 'cmu-00412401101020-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 1, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00412401108010'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-digital-innovation'
where p.code = 'cmu-00412401108010-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 2, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00412401108020'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-digital-innovation'
where p.code = 'cmu-00412401108020-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 2, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00412401108030'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-digital-innovation'
where p.code = 'cmu-00412401108030-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 4, 'จำนวนรับแบบ 1.1 ตามรหัสโครงการ 00412401108040'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-digital-innovation'
where p.code = 'cmu-00412401108040-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'ประกาศระบุ 40 คนรวมรอบ 1-1 ถึง 1-5 แต่ไม่แยกจำนวนเฉพาะรอบ 1-1'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-chumphon-computer-engineering'
where p.code = 'kmitl-chumphon-cpe-portfolio-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, 5, 'จำนวนรับวิศวกรรมคอมพิวเตอร์ 5 คน'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-chumphon-computer-engineering'
where p.code = 'kmitl-chumphon-cpe-good-student-14plus-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'ประกาศระบุ 15 คนรวมรอบ 1-1 และ 1-2 แต่ไม่แยกจำนวนเฉพาะรอบ 1-1'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-chumphon-computer-engineering'
where p.code = 'kmitl-chumphon-cpe-network-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'ประกาศระบุ 15 คนรวมรอบ 1-1 และ 1-2 แต่ไม่แยกจำนวนเฉพาะรอบ 1-1'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-chumphon-computer-engineering'
where p.code = 'kmitl-chumphon-cpe-potential-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'ประกาศระบุ 40 คนรวมรอบ 1-1 ถึง 1-5 แต่ไม่แยกจำนวนเฉพาะรอบ 1-2'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-chumphon-computer-engineering'
where p.code = 'kmitl-chumphon-cpe-portfolio-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'ประกาศระบุ 40 คนรวมรอบ 1-1 ถึง 1-5 แต่ไม่แยกจำนวนเฉพาะรอบ 1-3'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-chumphon-computer-engineering'
where p.code = 'kmitl-chumphon-cpe-portfolio-1-3'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'ประกาศระบุ 40 คนรวมรอบ 1-1 ถึง 1-5 แต่ไม่แยกจำนวนเฉพาะรอบ 1-4'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-chumphon-computer-engineering'
where p.code = 'kmitl-chumphon-cpe-portfolio-1-4'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'ประกาศระบุ 40 คนรวมรอบ 1-1 ถึง 1-5 แต่ไม่แยกจำนวนเฉพาะรอบ 1-5'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-chumphon-computer-engineering'
where p.code = 'kmitl-chumphon-cpe-portfolio-1-5'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'ประกาศระบุ 15 คนรวมรอบ 1-1 และ 1-2 แต่ไม่แยกจำนวนเฉพาะรอบ 1-2'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-chumphon-computer-engineering'
where p.code = 'kmitl-chumphon-cpe-network-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'ประกาศระบุ 15 คนรวมรอบ 1-1 และ 1-2 แต่ไม่แยกจำนวนเฉพาะรอบ 1-2'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-chumphon-computer-engineering'
where p.code = 'kmitl-chumphon-cpe-potential-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'ประกาศระบุวิทยาการคอมพิวเตอร์รวม 25 คนในรอบ 1.1 ทุกโครงการ โดยไม่แยกจำนวนรายโครงการ'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-science-computer-science'
where p.code = 'kmitl-science-cs-good-student-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'ประกาศระบุวิทยาการคอมพิวเตอร์รวม 25 คนในรอบ 1.2 ทุกโครงการ โดยไม่แยกจำนวนรายโครงการ'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-science-computer-science'
where p.code = 'kmitl-science-cs-good-student-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'ประกาศระบุวิทยาการคอมพิวเตอร์รวม 25 คนในรอบ 1.1 ทุกโครงการ โดยไม่แยกจำนวนรายโครงการ'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-science-computer-science'
where p.code = 'kmitl-science-cs-science-talent-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'ประกาศระบุวิทยาการคอมพิวเตอร์รวม 25 คนในรอบ 1.2 ทุกโครงการ โดยไม่แยกจำนวนรายโครงการ'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-science-computer-science'
where p.code = 'kmitl-science-cs-science-talent-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'ประกาศระบุวิทยาการคอมพิวเตอร์รวม 25 คนในรอบ 1.1 ทุกโครงการ โดยไม่แยกจำนวนรายโครงการ'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-science-computer-science'
where p.code = 'kmitl-science-cs-staff-child-1-1'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'ประกาศระบุวิทยาการคอมพิวเตอร์รวม 25 คนในรอบ 1.2 ทุกโครงการ โดยไม่แยกจำนวนรายโครงการ'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-science-computer-science'
where p.code = 'kmitl-science-cs-staff-child-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

insert into public.admission_project_programs (
    project_id, program_id, slots_available, program_notes
)
select p.id, m.id, null, 'ประกาศระบุวิทยาการคอมพิวเตอร์รวม 25 คนในรอบ 1.2 ทุกโครงการ โดยไม่แยกจำนวนรายโครงการ'
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-science-computer-science'
where p.code = 'kmitl-science-cs-professional-developer-1-2'
on conflict (project_id, program_id) do update set
    slots_available = excluded.slots_available,
    program_notes = excluded.program_notes;

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
    p.id, m.id, 3, '{}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{"TPAT3":{"ค่าน้ำหนัก":"40% (ไม่ใช่คะแนนขั้นต่ำ)"}}'::jsonb, '["กำลังเรียนหรือจบ ม.6 หรือวุฒิเทียบต่างประเทศ/หลักสูตรนานาชาติตามประกาศ; ตารางไม่รับ ปวช. และ กศน.","ไม่กำหนดหน่วยกิตกลุ่มสาระขั้นต่ำ"]'::jsonb, '[''ประวัติส่วนตัว/การศึกษา และ Statement of Purpose'', ''หลักฐานผลงาน กิจกรรม หรือรางวัลที่เกี่ยวข้อง'', ''ถ้ายื่นรางวัลวิชาการ ต้องอธิบายบทบาท หน้าที่ และสัดส่วนที่ทำ'']',
    '{"max_pages":10,"max_file_mb":20,"รูปแบบ":"PDF รวม 1 ไฟล์","การนับหน้า":"ไม่เกิน 10 หน้า ไม่ระบุยกเว้นปก"}'::jsonb, '["หลักฐานผลงาน/รางวัล/กิจกรรมที่สัมพันธ์กับสาขา ตามหัวข้อ Portfolio ในประกาศ"]'::jsonb, '["ปพ.1/ระเบียนผลการเรียน","TCASFolio หรือ Portfolio พร้อมประวัติและ Statement of Purpose","หลักฐานผลงาน/รางวัล/กิจกรรมที่เกี่ยวข้อง","คะแนนภาษาอังกฤษ (ถ้ามี)"]'::jsonb,
    '["Portfolio 40%","TPAT3 40%","สัมภาษณ์ 20%"]'::jsonb, '["มีเงื่อนไขด้านการมองเห็น การได้ยิน และความพิการทางร่างกายขั้นรุนแรงที่เป็นอุปสรรคต่อการศึกษา ให้คณะพิจารณาตามประกาศ"]'::jsonb, 'GPAX อย่างน้อย 3.00; Portfolio 40%; TPAT3 40%; สัมภาษณ์ 20%; GPAX อย่างเดียวไม่รับรองสิทธิ์สมัคร',
    'https://www.tuadmissions.in.th/img/2026082807385532.pdf#page=71', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'tu-engineering-computer-engineering'
where p.code = 'tu-direct-cpe-2570'
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
    p.id, m.id, 2.75, '{}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{"TPAT3":{"ค่าน้ำหนัก":"40% (ไม่ใช่คะแนนขั้นต่ำ)"}}'::jsonb, '["กำลังเรียนหรือจบ ม.6, ปวช. ช่างอุตสาหกรรม, กศน. หรือวุฒิเทียบต่างประเทศ/หลักสูตรนานาชาติตามประกาศ","ไม่กำหนดหน่วยกิตกลุ่มสาระขั้นต่ำ"]'::jsonb, '[''ประวัติส่วนตัว/การศึกษา และ Statement of Purpose'', ''ตารางสรุปผลงาน/รางวัลวิชาการและกิจกรรม พร้อมหลักฐานและคำอธิบาย (แนบลิงก์เพิ่มได้)'', ''ไม่มีคำถามเพิ่มเติม'']',
    '{"max_pages":10,"max_file_mb":20,"รูปแบบ":"PDF รวม 1 ไฟล์","การนับหน้า":"ไม่เกิน 10 หน้า ไม่ระบุยกเว้นปก"}'::jsonb, '["หลักฐานผลงาน/รางวัล/กิจกรรมที่สัมพันธ์กับสาขา ตามหัวข้อ Portfolio ในประกาศ"]'::jsonb, '["ปพ.1/ระเบียนผลการเรียน","TCASFolio หรือ Portfolio พร้อมประวัติและ Statement of Purpose","หลักฐานผลงาน/รางวัล/กิจกรรมที่เกี่ยวข้อง","คะแนนภาษาอังกฤษ (ถ้ามี)"]'::jsonb,
    '["Portfolio 40%","TPAT3 40%","สัมภาษณ์ 20%"]'::jsonb, '["มีเงื่อนไขด้านการมองเห็น การได้ยิน และความพิการทางร่างกายขั้นรุนแรงที่เป็นอุปสรรคต่อการศึกษา ให้คณะพิจารณาตามประกาศ"]'::jsonb, 'GPAX อย่างน้อย 2.75; Portfolio 40%; TPAT3 40%; สัมภาษณ์ 20%; GPAX อย่างเดียวไม่รับรองสิทธิ์สมัคร',
    'https://www.tuadmissions.in.th/img/2026082807385532.pdf#page=73', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'tu-engineering-software-engineering'
where p.code = 'tu-direct-software-2570'
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
    '{"TGAT1":{"ค่าน้ำหนัก":"15%"},"TGAT2":{"ค่าน้ำหนัก":"15%"},"TGAT3":{"ค่าน้ำหนัก":"5%"},"TPAT3":{"ค่าน้ำหนัก":"15%"}}'::jsonb, '["กำลังเรียนหรือจบ ม.6; ตารางไม่รับ ปวช., กศน. และวุฒิเทียบต่างประเทศ/นานาชาติ","หน่วยกิตข้อ 2.1: วิทยาศาสตร์ 22 และคณิตศาสตร์ 12; ข้อ 2.2: คณิตศาสตร์ 12 และภาษาต่างประเทศ 9 — ไม่ระบุว่าเลือกข้อใดข้อหนึ่ง จึงต้องสอบถามคณะก่อนสรุปสิทธิ์"]'::jsonb, '[''ประวัติส่วนตัว/การศึกษา และ Statement of Purpose'', ''หลักฐานผลงาน กิจกรรม หรือรางวัลที่เกี่ยวข้อง'', ''ตอบวิชาในวิทยาการคอมพิวเตอร์ที่สนใจพร้อมเหตุผล ไม่เกิน 200 ตัวอักษร'']',
    '{"max_pages":10,"max_file_mb":20,"รูปแบบ":"PDF รวม 1 ไฟล์","การนับหน้า":"ไม่เกิน 10 หน้า ไม่ระบุยกเว้นปก"}'::jsonb, '["หลักฐานผลงาน/รางวัล/กิจกรรมที่สัมพันธ์กับสาขา ตามหัวข้อ Portfolio ในประกาศ"]'::jsonb, '["ปพ.1/ระเบียนผลการเรียน หน้า–หลังพร้อมตราโรงเรียน","TCASFolio หรือ Portfolio พร้อมประวัติและ Statement of Purpose","หลักฐานผลงาน/รางวัล/กิจกรรมที่เกี่ยวข้อง","คะแนนภาษาอังกฤษ (ถ้ามี)"]'::jsonb,
    '["Portfolio 50%","TGAT1 15% + TGAT2 15% + TGAT3 5% + TPAT3 15%","ต้องผ่านสัมภาษณ์"]'::jsonb, '["ตรวจหน่วยกิตกับคณะก่อนยืนยันสิทธิ์สมัคร; หลักสูตรอยู่ระหว่างปรับปรุง"]'::jsonb, 'GPAX อย่างน้อย 3.00; Portfolio 50%; TGAT1 15% + TGAT2 15% + TGAT3 5% + TPAT3 15%; ต้องผ่านสัมภาษณ์; GPAX อย่างเดียวไม่รับรองสิทธิ์สมัคร',
    'https://www.tuadmissions.in.th/img/2026082807385532.pdf#page=61', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'tu-science-computer-science'
where p.code = 'tu-direct-cs-2570'
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
    p.id, m.id, 3, '{"semesters":5}'::jsonb, '{"คณิตศาสตร์":3,"วิทยาศาสตร์":3}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังเรียน ม.6 สายสามัญ","ผ่าน สอวน. ค่าย 2 ใน 1 ใน 8 วิชาตามประกาศ","วิทยาศาสตร์อย่างน้อย 22 หน่วยกิต และคณิตศาสตร์อย่างน้อย 12 หน่วยกิต"]'::jsonb, '[''ประวัติส่วนตัว/การศึกษา และ Statement of Purpose'', ''หลักฐานผลงาน กิจกรรม หรือรางวัลที่เกี่ยวข้อง'', ''แนบหนังสือรับรองค่าย/โอลิมปิกตามกลุ่มที่สมัคร'']',
    '{"max_pages":10,"max_file_mb":20,"รูปแบบ":"PDF รวม 1 ไฟล์","การนับหน้า":"ไม่รวมปกหน้า–หลัง และไม่ต้องมีคำนำ/สารบัญ"}'::jsonb, '["หลักฐานผลงาน/รางวัล/กิจกรรมที่สัมพันธ์กับสาขา ตามหัวข้อ Portfolio ในประกาศ"]'::jsonb, '["ปพ.1/ระเบียนผลการเรียน ม.4–6 รวม 5 ภาค พร้อมตราโรงเรียน","TCASFolio หรือ Portfolio พร้อมประวัติและ Statement of Purpose","หลักฐานผลงาน/รางวัล/กิจกรรมที่เกี่ยวข้อง","หนังสือรับรองผ่าน สอวน. ค่าย 2","ใบรับรองแพทย์ (ถ้ามี)"]'::jsonb,
    '["พิจารณา Portfolio และคุณสมบัติค่าย/โอลิมปิก","สอบสัมภาษณ์"]'::jsonb, '["เลือกได้ 1 กลุ่ม 1 คณะ/หลักสูตร/สาขา; ตรวจข้อห้ามสมัครซ้ำโครงการในประกาศหน้า 2"]'::jsonb, 'GPAX อย่างน้อย 3.00; พิจารณา Portfolio และคุณสมบัติค่าย/โอลิมปิก; สอบสัมภาษณ์; GPAX อย่างเดียวไม่รับรองสิทธิ์สมัคร',
    'https://www.tuadmissions.in.th/img/2026082706504458.pdf#page=8', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'tu-science-computer-science'
where p.code = 'tu-posn-2570'
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
    p.id, m.id, 3, '{"semesters":5}'::jsonb, '{"คณิตศาสตร์":3,"วิทยาศาสตร์":3}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังเรียน ม.6 สายสามัญ","ได้รับคัดเลือกจากมูลนิธิ สอวน. เพื่ออบรมคัดเลือกครั้งที่ 1 ของโครงการโอลิมปิก สสวท.","วิทยาศาสตร์อย่างน้อย 22 หน่วยกิต และคณิตศาสตร์อย่างน้อย 12 หน่วยกิต"]'::jsonb, '[''ประวัติส่วนตัว/การศึกษา และ Statement of Purpose'', ''หลักฐานผลงาน กิจกรรม หรือรางวัลที่เกี่ยวข้อง'', ''แนบหนังสือรับรองค่าย/โอลิมปิกตามกลุ่มที่สมัคร'']',
    '{"max_pages":10,"max_file_mb":20,"รูปแบบ":"PDF รวม 1 ไฟล์","การนับหน้า":"ไม่รวมปกหน้า–หลัง และไม่ต้องมีคำนำ/สารบัญ"}'::jsonb, '["หลักฐานผลงาน/รางวัล/กิจกรรมที่สัมพันธ์กับสาขา ตามหัวข้อ Portfolio ในประกาศ"]'::jsonb, '["ปพ.1/ระเบียนผลการเรียน ม.4–6 รวม 5 ภาค พร้อมตราโรงเรียน","TCASFolio หรือ Portfolio พร้อมประวัติและ Statement of Purpose","หลักฐานผลงาน/รางวัล/กิจกรรมที่เกี่ยวข้อง","หนังสือรับรองการคัดเลือกเข้าค่าย สสวท. ครั้งที่ 1","ใบรับรองแพทย์ (ถ้ามี)"]'::jsonb,
    '["พิจารณา Portfolio และคุณสมบัติค่าย/โอลิมปิก","สอบสัมภาษณ์"]'::jsonb, '["เลือกได้ 1 กลุ่ม 1 คณะ/หลักสูตร/สาขา; ตรวจข้อห้ามสมัครซ้ำโครงการในประกาศหน้า 2"]'::jsonb, 'GPAX อย่างน้อย 3.00; พิจารณา Portfolio และคุณสมบัติค่าย/โอลิมปิก; สอบสัมภาษณ์; GPAX อย่างเดียวไม่รับรองสิทธิ์สมัคร',
    'https://www.tuadmissions.in.th/img/2026082706504458.pdf#page=14', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'tu-science-computer-science'
where p.code = 'tu-ipst-2570'
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
    p.id, m.id, 3, '{"semesters":5}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังเรียน ม.6 สายสามัญ","ได้รับคัดเลือกจากมูลนิธิ สอวน. เพื่ออบรมคัดเลือกครั้งที่ 1 ของโครงการโอลิมปิก สสวท.","วิทยาศาสตร์อย่างน้อย 22 หน่วยกิต และคณิตศาสตร์อย่างน้อย 12 หน่วยกิต"]'::jsonb, '[''ประวัติส่วนตัว/การศึกษา และ Statement of Purpose'', ''หลักฐานผลงาน กิจกรรม หรือรางวัลที่เกี่ยวข้อง'', ''แนบหนังสือรับรองค่าย/โอลิมปิกตามกลุ่มที่สมัคร'']',
    '{"max_pages":10,"max_file_mb":20,"รูปแบบ":"PDF รวม 1 ไฟล์","การนับหน้า":"ไม่รวมปกหน้า–หลัง และไม่ต้องมีคำนำ/สารบัญ"}'::jsonb, '["หลักฐานผลงาน/รางวัล/กิจกรรมที่สัมพันธ์กับสาขา ตามหัวข้อ Portfolio ในประกาศ"]'::jsonb, '["ปพ.1/ระเบียนผลการเรียน ม.4–6 รวม 5 ภาค พร้อมตราโรงเรียน","TCASFolio หรือ Portfolio พร้อมประวัติและ Statement of Purpose","หลักฐานผลงาน/รางวัล/กิจกรรมที่เกี่ยวข้อง","หนังสือรับรองการคัดเลือกเข้าค่าย สสวท. ครั้งที่ 1","ใบรับรองแพทย์ (ถ้ามี)"]'::jsonb,
    '["พิจารณา Portfolio และคุณสมบัติค่าย/โอลิมปิก","สอบสัมภาษณ์"]'::jsonb, '["เลือกได้ 1 กลุ่ม 1 คณะ/หลักสูตร/สาขา; ตรวจข้อห้ามสมัครซ้ำโครงการในประกาศหน้า 2"]'::jsonb, 'GPAX อย่างน้อย 3.00; พิจารณา Portfolio และคุณสมบัติค่าย/โอลิมปิก; สอบสัมภาษณ์; GPAX อย่างเดียวไม่รับรองสิทธิ์สมัคร',
    'https://www.tuadmissions.in.th/img/2026082706504458.pdf#page=16', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'tu-engineering-computer-engineering'
where p.code = 'tu-ipst-2570'
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
    '{}'::jsonb, '["ม.6 แผนวิทย์-คณิต ศิลป์-คำนวณ วิทย์-คอมพิวเตอร์ หรือคณิต-คอมพิวเตอร์","Grade 12, Cambridge AS/A-Level อย่างน้อย 3 วิชาเกรด C ขึ้นไป หรือ IB","GED อย่างน้อย 145 คะแนนทุกรายวิชา","นักเรียนนานาชาติต้องมีหน่วยกิตคณิตศาสตร์อย่างน้อย 7 วิทยาศาสตร์ 9 อังกฤษ 9 หรือเรียนวิชาคอมพิวเตอร์อย่างน้อย 4 วิชาหรือ 4 ภาคการศึกษา"]'::jsonb, 'Portfolio ภาษาอังกฤษไม่เกิน 10 หน้า ไฟล์ PDF ไม่เกิน 3 MB พร้อมเรียงความภาษาอังกฤษ 1 หน้าและวิดีโอภาษาอังกฤษไม่เกิน 3 นาที',
    '{"language":"อังกฤษ","max_pages":10,"max_file_mb":3,"video_max_minutes":3}'::jsonb, '[]'::jsonb, '["Portfolio ภาษาอังกฤษ","เรียงความภาษาอังกฤษ","Video Presentation ภาษาอังกฤษ","Transcript","รูปถ่าย","บัตรประชาชนหรือหนังสือเดินทาง","ทะเบียนบ้านถ้ามี"]'::jsonb,
    '["Portfolio","สัมภาษณ์ภาษาอังกฤษ"]'::jsonb, '{}'::jsonb, 'GPAX อย่างน้อย 2.50; Portfolio เรียงความ วิดีโอ และการสัมภาษณ์ใช้ภาษาอังกฤษ',
    'https://www.ict.mahidol.ac.th/th/ict-round-1-ict-portfolio-academic-year-2027/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'mu-ict'
where p.code = 'muict-ict-portfolio'
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
    p.id, m.id, 2.5, '{"studying_semesters":4,"graduated_semesters":6}'::jsonb, '{"วิทยาศาสตร์และเทคโนโลยี":2.5,"คณิตศาสตร์":2.5,"ภาษาอังกฤษ":2.5}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ม.6 หรือเทียบเท่าตามรายการในประกาศ","GED อย่างน้อย 145 คะแนนทุกรายวิชา"]'::jsonb, 'Portfolio หรือ TCASFolio ภาษาอังกฤษไม่เกิน 10 หน้า พร้อมเรียงความภาษาอังกฤษ 1 หน้าและวิดีโอภาษาอังกฤษไม่เกิน 3 นาที',
    '{"language":"อังกฤษ","max_pages":10,"video_max_minutes":3}'::jsonb, '[]'::jsonb, '["Portfolio ภาษาอังกฤษ","เรียงความภาษาอังกฤษ","Video Presentation ภาษาอังกฤษ","ปพ.1","รูปถ่าย","บัตรประชาชน","ทะเบียนบ้าน"]'::jsonb,
    '["Portfolio","สัมภาษณ์ภาษาอังกฤษ"]'::jsonb, '{}'::jsonb, 'GPAX อย่างน้อย 2.50 และ GPA วิทยาศาสตร์ฯ คณิตศาสตร์ ภาษาอังกฤษ แต่ละกลุ่มอย่างน้อย 2.50',
    'https://www.ict.mahidol.ac.th/th/ict-round-2-mu-portfolio-academic-year-2027/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'mu-ict'
where p.code = 'muict-mu-portfolio-1-1'
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
    p.id, m.id, 2.5, '{"studying_semesters":4,"graduated_semesters":6}'::jsonb, '{"วิทยาศาสตร์และเทคโนโลยี":2.5,"คณิตศาสตร์":2.5,"ภาษาอังกฤษ":2.5}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ม.6 หรือเทียบเท่าตามรายการในประกาศ","GED อย่างน้อย 145 คะแนนทุกรายวิชา"]'::jsonb, 'Portfolio หรือ TCASFolio ภาษาอังกฤษไม่เกิน 10 หน้า พร้อมเรียงความภาษาอังกฤษ 1 หน้าและวิดีโอภาษาอังกฤษไม่เกิน 3 นาที',
    '{"language":"อังกฤษ","max_pages":10,"video_max_minutes":3}'::jsonb, '[]'::jsonb, '["Portfolio ภาษาอังกฤษ","เรียงความภาษาอังกฤษ","Video Presentation ภาษาอังกฤษ","ปพ.1","รูปถ่าย","บัตรประชาชน","ทะเบียนบ้าน"]'::jsonb,
    '["Portfolio","สัมภาษณ์ภาษาอังกฤษ"]'::jsonb, '{"reserve_list":false}'::jsonb, 'GPAX อย่างน้อย 2.50 และ GPA วิทยาศาสตร์ฯ คณิตศาสตร์ ภาษาอังกฤษ แต่ละกลุ่มอย่างน้อย 2.50; รอบ 1.2 ไม่มีบัญชีสำรอง',
    'https://www.ict.mahidol.ac.th/th/ict-round-2-mu-portfolio-academic-year-2027/', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'mu-ict'
where p.code = 'muict-mu-portfolio-1-2'
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
    p.id, m.id, 3, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{"ภาษาอังกฤษ":3,"คณิตศาสตร์":3.25,"ฟิสิกส์":3.25}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ม.6 หรือเทียบเท่าตามประเภทหลักสูตรที่ประกาศ","ผู้สมัครหลักสูตรนานาชาติต้องสื่อสารภาษาไทยได้และมี recommendation letters ภาษาอังกฤษ 2 ฉบับ"]'::jsonb, 'Portfolio ไม่เกิน 15 หน้า; Portfolio 80% และสัมภาษณ์ 20%; มีเรียงความตามหัวข้อของสาขาไม่เกิน 2 หน้า A4',
    '{"max_pages":15,"portfolio_weight_percent":80,"interview_weight_percent":20,"essay_max_pages":2}'::jsonb, '["รางวัลระดับประเทศ NSC","รางวัลระดับประเทศ YDC.CS หรือ YSC.EN หรือเทียบเท่า","สอวน.คอมพิวเตอร์ผ่านค่าย 2","การแข่งขันวิชาการระดับเดียวกันตามดุลยพินิจคณะกรรมการ"]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานชำระเงิน","Portfolio","recommendation letters สำหรับหลักสูตรนานาชาติ"]'::jsonb,
    '["Portfolio","สัมภาษณ์"]'::jsonb, '{}'::jsonb, 'GPAX ≥ 3.00; อังกฤษ ≥ 3.00; คณิตศาสตร์และฟิสิกส์ ≥ 3.25; ต้องมีรางวัล/ผลงานอัจฉริยภาพทางคอมพิวเตอร์ตามรายการ',
    'https://admission.reg.cmu.ac.th/tcas/findfacultybyid.php?fid=703', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cpe'
where p.code = 'cmu-cpe-gifted-computer-1-1'
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
    p.id, m.id, 3, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{"ภาษาอังกฤษ":3,"คณิตศาสตร์":3.25,"ฟิสิกส์":3.25}'::jsonb, '{}'::jsonb,
    '{"TPAT3":{"min_t_score":45},"selection_weights":{"Portfolio+Interview":76,"TGAT1":4,"TGAT2":4,"TGAT3":4,"TPAT3":12}}'::jsonb, '["คุณสมบัติพื้นฐานและผลงานเหมือนแบบ 1.1"]'::jsonb, 'Portfolio ไม่เกิน 15 หน้า; คะแนน Portfolio และสัมภาษณ์รวมต้องไม่น้อยกว่า 40 คะแนน',
    '{"max_pages":15,"minimum_portfolio_interview_score":40}'::jsonb, '["รางวัลระดับประเทศ NSC","รางวัลระดับประเทศ YDC.CS หรือ YSC.EN หรือเทียบเท่า","สอวน.คอมพิวเตอร์ผ่านค่าย 2","การแข่งขันวิชาการระดับเดียวกันตามดุลยพินิจคณะกรรมการ"]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานชำระเงิน","Portfolio"]'::jsonb,
    '["Portfolio","สัมภาษณ์","TGAT","TPAT3"]'::jsonb, '{"minimum_portfolio_interview_score":40}'::jsonb, 'ใช้เกณฑ์พื้นฐานแบบ 1.1 และเพิ่ม TPAT3 T-SCORE ≥ 45; น้ำหนัก Portfolio+สัมภาษณ์ 76%, TGAT1/2/3 อย่างละ 4%, TPAT3 12%',
    'https://admission.reg.cmu.ac.th/tcas/findfacultybyid.php?fid=703', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cpe'
where p.code = 'cmu-cpe-gifted-computer-1-2'
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
    p.id, m.id, 3.5, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{"ภาษาอังกฤษ":3,"คณิตศาสตร์":3.5,"ฟิสิกส์":3.25}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["ม.6 หรือเทียบเท่าตามประเภทหลักสูตรที่ประกาศ","ผู้สมัครหลักสูตรนานาชาติต้องสื่อสารภาษาไทยได้และมี recommendation letters ภาษาอังกฤษ 2 ฉบับ"]'::jsonb, 'Portfolio ไม่เกิน 15 หน้า; Portfolio 80% และสัมภาษณ์ 20%; มีเรียงความตามหัวข้อของสาขาไม่เกิน 2 หน้า A4',
    '{"max_pages":15,"portfolio_weight_percent":80,"interview_weight_percent":20,"essay_max_pages":2}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานชำระเงิน","Portfolio","recommendation letters สำหรับหลักสูตรนานาชาติ"]'::jsonb,
    '["Portfolio","สัมภาษณ์"]'::jsonb, '{}'::jsonb, 'GPAX ≥ 3.50; อังกฤษ ≥ 3.00; คณิตศาสตร์ ≥ 3.50; ฟิสิกส์ ≥ 3.25',
    'https://admission.reg.cmu.ac.th/tcas/findfacultybyid.php?fid=704', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cpe'
where p.code = 'cmu-cpe-good-grade-1-1'
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
    p.id, m.id, 3.5, '{"studying_semesters":5,"graduated_semesters":6}'::jsonb, '{"ภาษาอังกฤษ":3,"คณิตศาสตร์":3.5,"ฟิสิกส์":3.25}'::jsonb, '{}'::jsonb,
    '{"TPAT3":{"min_t_score":45},"selection_weights":{"Portfolio+Interview":76,"TGAT1":4,"TGAT2":4,"TGAT3":4,"TPAT3":12}}'::jsonb, '["คุณสมบัติพื้นฐานเหมือนแบบ 1.1"]'::jsonb, 'Portfolio ไม่เกิน 15 หน้า; คะแนน Portfolio และสัมภาษณ์รวมต้องไม่น้อยกว่า 40 คะแนน',
    '{"max_pages":15,"minimum_portfolio_interview_score":40}'::jsonb, '[]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานชำระเงิน","Portfolio"]'::jsonb,
    '["Portfolio","สัมภาษณ์","TGAT","TPAT3"]'::jsonb, '{"minimum_portfolio_interview_score":40}'::jsonb, 'ใช้เกณฑ์พื้นฐานแบบ 1.1 และเพิ่ม TPAT3 T-SCORE ≥ 45; น้ำหนัก Portfolio+สัมภาษณ์ 76%, TGAT1/2/3 อย่างละ 4%, TPAT3 12%',
    'https://admission.reg.cmu.ac.th/tcas/findfacultybyid.php?fid=704', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cpe'
where p.code = 'cmu-cpe-good-grade-1-2'
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
    '{}'::jsonb, '["กำลังศึกษา ม.6 แผนวิทยาศาสตร์-คณิตศาสตร์หรือเทียบเท่า","ได้รับการเสนอชื่อจากโรงเรียนที่มีโครงการความร่วมมือกับคณะวิศวกรรมศาสตร์ มช. หรือผ่าน Entaneer Academy ตามเกรดรายวิชาที่ประกาศ"]'::jsonb, 'Portfolio ไม่เกิน 15 หน้า; Portfolio 80% และสัมภาษณ์ 20%; แนบหนังสือรับรองจากโรงเรียนหรือผลการเรียน Entaneer Academy',
    '{"max_pages":15,"portfolio_weight_percent":80,"interview_weight_percent":20}'::jsonb, '["หนังสือรับรองคุณสมบัติจากโรงเรียนตามโครงการความร่วมมือ","Entaneer Academy: 261111 และ 259201 เกรด A, 206161 อย่างน้อยเกรด B"]'::jsonb, '["ใบสมัคร","บัตรประชาชน","ใบแสดงผลการเรียน","หลักฐานชำระเงิน","Portfolio","หนังสือรับรองหรือผลการเรียน Entaneer Academy"]'::jsonb,
    '["Portfolio","สัมภาษณ์"]'::jsonb, '{}'::jsonb, 'รับเฉพาะ ม.6 วิทย์-คณิตหรือเทียบเท่า และต้องมาจากโรงเรียนความร่วมมือที่เสนอชื่อ หรือผ่าน Entaneer Academy ตามเกณฑ์',
    'https://admission.reg.cmu.ac.th/tcas/findfacultybyid.php?fid=706', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'cmu-cpe'
where p.code = 'cmu-cpe-engineering-ability-1-1'
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
    p.id, m.id, 3, '{"studying_semesters":4,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษา ม.6 สำเร็จ ม.6 หรือเทียบเท่า","ผลงานต้องเกิดตั้งแต่ปี 2567 ถึงปัจจุบัน"]'::jsonb, 'Portfolio และหลักฐานผลงานด้านคอมพิวเตอร์/IT; เลือก Highlight ใน iFolio 3 รายการ',
    '{"ifolio_highlights":3}'::jsonb, '["สิทธิบัตร อนุสิทธิบัตร หรือรางวัลนวัตกรรม","ซอฟต์แวร์หรือระบบใช้งานจริงพร้อมใบรับรอง","การแข่งขันคณิตศาสตร์ คอมพิวเตอร์ หรือ IT","การแข่งขันที่คณะ IT KMITL จัด","Bebras รอบชิงทุน ≥ 60","NSC รอบชิงชนะเลิศ","โครงงานนักวิทยาศาสตร์รุ่นเยาว์ตั้งแต่รอบนำเสนอ","Super AI Engineer รอบ 2 ขึ้นไป","ค่ายหรืออบรมที่เกี่ยวข้องพร้อมหลักฐาน"]'::jsonb, '["ปพ.1","บัตรประชาชนหรือหนังสือเดินทาง","Portfolio","หลักฐานผลงาน"]'::jsonb,
    '["Portfolio","สัมภาษณ์"]'::jsonb, '{}'::jsonb, 'ร่าง: GPAX ≥ 3.00 และมีผลงาน IT ตามรายการตั้งแต่ปี 2567',
    'https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-it'
where p.code = 'kmitl-it-ability-1-1'
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
    p.id, m.id, 3, '{"studying_semesters":4,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษา ม.6 สำเร็จ ม.6 หรือเทียบเท่า","ผลงานต้องเกิดตั้งแต่ปี 2567 ถึงปัจจุบัน"]'::jsonb, 'Portfolio และหลักฐานผลงานด้านคอมพิวเตอร์/IT; เลือก Highlight ใน iFolio 3 รายการ',
    '{"ifolio_highlights":3}'::jsonb, '["สิทธิบัตร อนุสิทธิบัตร หรือรางวัลนวัตกรรม","ซอฟต์แวร์หรือระบบใช้งานจริงพร้อมใบรับรอง","การแข่งขันคณิตศาสตร์ คอมพิวเตอร์ หรือ IT","การแข่งขันที่คณะ IT KMITL จัด","Bebras รอบชิงทุน ≥ 60","NSC รอบชิงชนะเลิศ","โครงงานนักวิทยาศาสตร์รุ่นเยาว์ตั้งแต่รอบนำเสนอ","Super AI Engineer รอบ 2 ขึ้นไป","ค่ายหรืออบรมที่เกี่ยวข้องพร้อมหลักฐาน"]'::jsonb, '["ปพ.1","บัตรประชาชนหรือหนังสือเดินทาง","Portfolio","หลักฐานผลงาน"]'::jsonb,
    '["Portfolio","สัมภาษณ์"]'::jsonb, '{}'::jsonb, 'ร่าง: GPAX ≥ 3.00 และมีผลงาน IT ตามรายการตั้งแต่ปี 2567',
    'https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-dsba'
where p.code = 'kmitl-it-ability-1-1'
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
    p.id, m.id, 3, '{"studying_semesters":4,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{}'::jsonb, '["กำลังศึกษา ม.6 สำเร็จ ม.6 หรือเทียบเท่า","ผลงานต้องเกิดตั้งแต่ปี 2567 ถึงปัจจุบัน"]'::jsonb, 'Portfolio และหลักฐานผลงานด้านคอมพิวเตอร์/IT; เลือก Highlight ใน iFolio 3 รายการ',
    '{"ifolio_highlights":3}'::jsonb, '["สิทธิบัตร อนุสิทธิบัตร หรือรางวัลนวัตกรรม","ซอฟต์แวร์หรือระบบใช้งานจริงพร้อมใบรับรอง","การแข่งขันคณิตศาสตร์ คอมพิวเตอร์ หรือ IT","การแข่งขันที่คณะ IT KMITL จัด","Bebras รอบชิงทุน ≥ 60","NSC รอบชิงชนะเลิศ","โครงงานนักวิทยาศาสตร์รุ่นเยาว์ตั้งแต่รอบนำเสนอ","Super AI Engineer รอบ 2 ขึ้นไป","ค่ายหรืออบรมที่เกี่ยวข้องพร้อมหลักฐาน"]'::jsonb, '["ปพ.1","บัตรประชาชนหรือหนังสือเดินทาง","Portfolio","หลักฐานผลงาน"]'::jsonb,
    '["Portfolio","สัมภาษณ์"]'::jsonb, '{}'::jsonb, 'ร่าง: GPAX ≥ 3.00 และมีผลงาน IT ตามรายการตั้งแต่ปี 2567',
    'https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-ait'
where p.code = 'kmitl-it-ability-1-1'
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
    p.id, m.id, 3, '{"studying_semesters":4,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{"SAT":{"minimum":1100,"max_age_years":2}}'::jsonb, '["กำลังศึกษา ม.6 สำเร็จ ม.6 หรือเทียบเท่า","ผลงานต้องเกิดตั้งแต่ปี 2567 ถึงปัจจุบัน"]'::jsonb, 'Portfolio และหลักฐานผลงานด้านคอมพิวเตอร์/IT; เลือก Highlight ใน iFolio 3 รายการ',
    '{"ifolio_highlights":3}'::jsonb, '["สิทธิบัตร อนุสิทธิบัตร หรือรางวัลนวัตกรรม","ซอฟต์แวร์หรือระบบใช้งานจริงพร้อมใบรับรอง","การแข่งขันคณิตศาสตร์ คอมพิวเตอร์ หรือ IT","Bebras รอบชิงทุน ≥ 60","NSC รอบชิงชนะเลิศ","Super AI Engineer รอบ 2 ขึ้นไป","ค่ายหรืออบรมที่เกี่ยวข้องพร้อมหลักฐาน"]'::jsonb, '["ปพ.1","บัตรประชาชนหรือหนังสือเดินทาง","Portfolio","ผล SAT","หลักฐานผลงาน"]'::jsonb,
    '["Portfolio","SAT","สัมภาษณ์"]'::jsonb, '{}'::jsonb, 'ร่าง: GPAX ≥ 3.00, SAT ≥ 1,100 อายุไม่เกิน 2 ปี และมีผลงาน IT ตั้งแต่ปี 2567',
    'https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-it'
where p.code = 'kmitl-academic-it-1-1'
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
    p.id, m.id, 3, '{"studying_semesters":4,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{"SAT":{"minimum":1100,"max_age_years":2}}'::jsonb, '["กำลังศึกษา ม.6 สำเร็จ ม.6 หรือเทียบเท่า","ผลงานต้องเกิดตั้งแต่ปี 2567 ถึงปัจจุบัน"]'::jsonb, 'Portfolio และหลักฐานผลงานด้านคอมพิวเตอร์/IT; เลือก Highlight ใน iFolio 3 รายการ',
    '{"ifolio_highlights":3}'::jsonb, '["สิทธิบัตร อนุสิทธิบัตร หรือรางวัลนวัตกรรม","ซอฟต์แวร์หรือระบบใช้งานจริงพร้อมใบรับรอง","การแข่งขันคณิตศาสตร์ คอมพิวเตอร์ หรือ IT","Bebras รอบชิงทุน ≥ 60","NSC รอบชิงชนะเลิศ","Super AI Engineer รอบ 2 ขึ้นไป","ค่ายหรืออบรมที่เกี่ยวข้องพร้อมหลักฐาน"]'::jsonb, '["ปพ.1","บัตรประชาชนหรือหนังสือเดินทาง","Portfolio","ผล SAT","หลักฐานผลงาน"]'::jsonb,
    '["Portfolio","SAT","สัมภาษณ์"]'::jsonb, '{}'::jsonb, 'ร่าง: GPAX ≥ 3.00, SAT ≥ 1,100 อายุไม่เกิน 2 ปี และมีผลงาน IT ตั้งแต่ปี 2567',
    'https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-dsba'
where p.code = 'kmitl-academic-it-1-1'
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
    p.id, m.id, 3, '{"studying_semesters":4,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{}'::jsonb,
    '{"SAT":{"minimum":1100,"max_age_years":2}}'::jsonb, '["กำลังศึกษา ม.6 สำเร็จ ม.6 หรือเทียบเท่า","ผลงานต้องเกิดตั้งแต่ปี 2567 ถึงปัจจุบัน"]'::jsonb, 'Portfolio และหลักฐานผลงานด้านคอมพิวเตอร์/IT; เลือก Highlight ใน iFolio 3 รายการ',
    '{"ifolio_highlights":3}'::jsonb, '["สิทธิบัตร อนุสิทธิบัตร หรือรางวัลนวัตกรรม","ซอฟต์แวร์หรือระบบใช้งานจริงพร้อมใบรับรอง","การแข่งขันคณิตศาสตร์ คอมพิวเตอร์ หรือ IT","Bebras รอบชิงทุน ≥ 60","NSC รอบชิงชนะเลิศ","Super AI Engineer รอบ 2 ขึ้นไป","ค่ายหรืออบรมที่เกี่ยวข้องพร้อมหลักฐาน"]'::jsonb, '["ปพ.1","บัตรประชาชนหรือหนังสือเดินทาง","Portfolio","ผล SAT","หลักฐานผลงาน"]'::jsonb,
    '["Portfolio","SAT","สัมภาษณ์"]'::jsonb, '{}'::jsonb, 'ร่าง: GPAX ≥ 3.00, SAT ≥ 1,100 อายุไม่เกิน 2 ปี และมีผลงาน IT ตั้งแต่ปี 2567',
    'https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-ait'
where p.code = 'kmitl-academic-it-1-1'
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
    p.id, m.id, 3, '{"studying_semesters":4,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{"IELTS":6,"TOEFL iBT":79,"TOEFL PBT":550,"TOEIC":785,"CU-TEP":90,"KMITL-TEP":100}'::jsonb,
    '{"english_score_max_age_years":2}'::jsonb, '["กำลังศึกษา ม.6 สำเร็จ ม.6 หรือเทียบเท่า","ผลงานต้องเกิดตั้งแต่ปี 2567 ถึงปัจจุบัน"]'::jsonb, 'Portfolio และหลักฐานผลงานด้านคอมพิวเตอร์/IT; เลือก Highlight ใน iFolio 3 รายการ',
    '{"ifolio_highlights":3}'::jsonb, '["สิทธิบัตร อนุสิทธิบัตร หรือรางวัลนวัตกรรม","ซอฟต์แวร์หรือระบบใช้งานจริงพร้อมใบรับรอง","การแข่งขันคณิตศาสตร์ คอมพิวเตอร์ หรือ IT","Bebras รอบชิงทุน ≥ 60","NSC รอบชิงชนะเลิศ","Super AI Engineer รอบ 2 ขึ้นไป","ค่ายหรืออบรมที่เกี่ยวข้องพร้อมหลักฐาน"]'::jsonb, '["ปพ.1","บัตรประชาชนหรือหนังสือเดินทาง","Portfolio","ผลคะแนนภาษาอังกฤษ","หลักฐานผลงาน"]'::jsonb,
    '["Portfolio","คะแนนภาษาอังกฤษ","สัมภาษณ์"]'::jsonb, '{}'::jsonb, 'ร่าง: GPAX ≥ 3.00, มีคะแนนภาษาอังกฤษตามเกณฑ์อายุไม่เกิน 2 ปี และมีผลงาน IT ตั้งแต่ปี 2567',
    'https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-it'
where p.code = 'kmitl-english-it-1-1'
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
    p.id, m.id, 3, '{"studying_semesters":4,"graduated_semesters":6}'::jsonb, '{}'::jsonb, '{"IELTS":6,"TOEFL iBT":79,"TOEFL PBT":550,"TOEIC":785,"CU-TEP":90,"KMITL-TEP":100}'::jsonb,
    '{"english_score_max_age_years":2}'::jsonb, '["กำลังศึกษา ม.6 สำเร็จ ม.6 หรือเทียบเท่า","ผลงานต้องเกิดตั้งแต่ปี 2567 ถึงปัจจุบัน"]'::jsonb, 'Portfolio และหลักฐานผลงานด้านคอมพิวเตอร์/IT; เลือก Highlight ใน iFolio 3 รายการ',
    '{"ifolio_highlights":3}'::jsonb, '["สิทธิบัตร อนุสิทธิบัตร หรือรางวัลนวัตกรรม","ซอฟต์แวร์หรือระบบใช้งานจริงพร้อมใบรับรอง","การแข่งขันคณิตศาสตร์ คอมพิวเตอร์ หรือ IT","Bebras รอบชิงทุน ≥ 60","NSC รอบชิงชนะเลิศ","Super AI Engineer รอบ 2 ขึ้นไป","ค่ายหรืออบรมที่เกี่ยวข้องพร้อมหลักฐาน"]'::jsonb, '["ปพ.1","บัตรประชาชนหรือหนังสือเดินทาง","Portfolio","ผลคะแนนภาษาอังกฤษ","หลักฐานผลงาน"]'::jsonb,
    '["Portfolio","คะแนนภาษาอังกฤษ","สัมภาษณ์"]'::jsonb, '{}'::jsonb, 'ร่าง: GPAX ≥ 3.00, มีคะแนนภาษาอังกฤษตามเกณฑ์อายุไม่เกิน 2 ปี และมีผลงาน IT ตั้งแต่ปี 2567',
    'https://www.it.kmitl.ac.th/th/admission/bachelor/portfolio1-1', now()
from public.admission_projects p
join public.faculties_and_majors m on m.code = 'kmitl-ait'
where p.code = 'kmitl-english-it-1-1'
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
    '{"video_max_minutes":2,"max_featured_awarded_projects":3,"minimum_primary_contribution_percent":40,"ai_usage_disclosure_required":true}'::jsonb, '[]'::jsonb, '["ผลการเรียน 4 ภาคเรียน","หลักฐานผลงาน/รางวัล","วิดีโอผลงาน"]'::jsonb,
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
    '{}'::jsonb, '[]'::jsonb, '["ผลการเรียน","Portfolio","ประกาศนียบัตรหรือหลักฐานผลงาน"]'::jsonb,
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

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2027-02-05', '2027-02-05', '5 ก.พ. 2570', 'confirmed', now()
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
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-13', '13 ก.พ. 2570', 'confirmed', now()
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
select p.id, 'ประกาศผู้ผ่านการคัดเลือกและมีสิทธิ์ Clearing House', '2027-02-26', '2027-02-26', '26 ก.พ. 2570', 'confirmed', now()
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
select p.id, 'ยืนยันสิทธิ์ Clearing House ผ่านระบบ ทปอ.', '2027-03-10', '2027-03-11', '10–11 มี.ค. 2570', 'confirmed', now()
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
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์เข้าศึกษาและขั้นตอนชำระเงิน', '2027-03-19', '2027-03-19', '19 มี.ค. 2570', 'confirmed', now()
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
select p.id, 'ชำระเงินยืนยันสิทธิ์เข้าศึกษา', '2027-03-25', '2027-03-31', '25–31 มี.ค. 2570', 'confirmed', now()
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
