-- Generated from datasets/tcas70_admissions.json
-- Supabase SQL Editor part 2 of 5; run parts in numeric order.
begin;

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

commit;
