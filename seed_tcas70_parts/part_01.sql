-- Generated from datasets/tcas70_admissions.json
-- Supabase SQL Editor part 1 of 5; run parts in numeric order.
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

commit;
