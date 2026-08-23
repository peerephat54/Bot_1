-- Generated from datasets/tcas70_admissions.json
-- Run supabase_schema.sql before this file.
begin;

insert into public.universities (name, short_name, logo_url)
values ('สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง', 'KMITL', null)
on conflict (name) do update set
    short_name = excluded.short_name,
    logo_url = excluded.logo_url;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, data_status, updated_at
)
select
    u.id, 'kmitl-chumphon-computer-engineering', 'วิทยาเขตชุมพรเขตรอุดมศักดิ์', 'วิศวกรรมคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี', 'ไทย', null, null,
    4, 'https://admission.reg.kmitl.ac.th/', 'official', now()
from public.universities u
where u.short_name = 'KMITL'
on conflict (code) do update set
        university_id = excluded.university_id,
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
        data_status = excluded.data_status,
        updated_at = excluded.updated_at;

insert into public.faculties_and_majors (
    university_id, code, faculty_name, major_name, tcas_round, academic_year,
    program_type, language, curriculum_credits, curriculum_year, duration_years,
    official_program_url, data_status, updated_at
)
select
    u.id, 'kmitl-science-computer-science', 'คณะวิทยาศาสตร์', 'วิทยาการคอมพิวเตอร์', 1, 2570,
    'ปริญญาตรี', null, 130, 2569,
    null, 'https://www.science.kmitl.ac.th/curriculums/bachelor/computer-science-2569', 'official', now()
from public.universities u
where u.short_name = 'KMITL'
on conflict (code) do update set
        university_id = excluded.university_id,
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
    u.id, 'kmitl-chumphon-cpe-portfolio-1-1', 'kmitl-chumphon-cpe-portfolio', 'แฟ้มสะสมผลงาน 1-1 (วิทยาเขตชุมพรเขตรอุดมศักดิ์)', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, 300,
    20000, 'https://reg.kmitl.ac.th/TCAS_old/news/files/2570_1_news1_4629_2026_08_04-11-01-24_a74b5.pdf', 'ประกาศ Portfolio รอบ 1-1 ถึง 1-5 วิทยาเขตชุมพรเขตรอุดมศักดิ์ TCAS70',
    '2026-08-03', '2026-08-23T17:12:50+07:00', 'ประกาศทางการครอบคลุมรอบ 1-1 ถึง 1-5; CURRICULUM_ID 14142, PROJECT_ID 2409 เป็นรายการรอบ 1-1 ในระบบสมัคร', now()
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
    '2026-08-03', '2026-08-23T17:12:50+07:00', 'รายการทางการในระบบรับสมัคร: CURRICULUM_ID 14157, PROJECT_ID 2410', now()
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
    '2026-08-03', '2026-08-23T17:12:50+07:00', 'ประกาศทางการครอบคลุมรอบ 1-1 และ 1-2; CURRICULUM_ID 14171, PROJECT_ID 2411 เป็นรายการรอบ 1-1 ในระบบสมัคร', now()
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
    '2026-08-03', '2026-08-23T17:12:50+07:00', 'ประกาศทางการครอบคลุมรอบ 1-1 และ 1-2; CURRICULUM_ID 14187, PROJECT_ID 2413 เป็นรายการรอบ 1-1 ในระบบสมัคร', now()
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
    '2026-08-03', '2026-08-23T17:12:50+07:00', 'ประกาศทางการระบุรอบ 1.2; จำนวนรับวิศวกรรมคอมพิวเตอร์ 40 คนเป็นยอดรวมรอบ 1-1 ถึง 1-5', now()
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
    '2026-08-03', '2026-08-23T17:12:50+07:00', 'ประกาศทางการระบุรอบ 1.3; จำนวนรับวิศวกรรมคอมพิวเตอร์ 40 คนเป็นยอดรวมรอบ 1-1 ถึง 1-5', now()
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
    '2026-08-03', '2026-08-23T17:12:50+07:00', 'ประกาศทางการระบุรอบ 1.4; จำนวนรับวิศวกรรมคอมพิวเตอร์ 40 คนเป็นยอดรวมรอบ 1-1 ถึง 1-5', now()
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
    '2026-08-03', '2026-08-23T17:12:50+07:00', 'ประกาศทางการระบุรอบ 1.5; จำนวนรับวิศวกรรมคอมพิวเตอร์ 40 คนเป็นยอดรวมรอบ 1-1 ถึง 1-5', now()
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
    '2026-08-03', '2026-08-23T17:12:50+07:00', 'ประกาศทางการระบุรอบ 1-2; จำนวนรับวิศวกรรมคอมพิวเตอร์ 15 คนเป็นยอดรวมรอบ 1-1 และ 1-2', now()
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
    '2026-08-03', '2026-08-23T17:12:50+07:00', 'ประกาศทางการระบุรอบ 1-2; จำนวนรับวิศวกรรมคอมพิวเตอร์ 15 คนเป็นยอดรวมรอบ 1-1 และ 1-2', now()
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

commit;
