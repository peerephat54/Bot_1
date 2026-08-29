-- Generated from datasets/tcas70_admissions.json
-- Supabase SQL Editor part 2 of 7; run parts in numeric order.
begin;

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

insert into public.admission_projects (
    university_id, code, group_code, name, academic_year, tcas_round,
    round_label, round_variant, application_type, publication_status, is_visible,
    selection_order_limit, application_fee, tuition_fee_per_semester,
    source_url, source_title, source_published_at, source_checked_at,
    data_notes, updated_at
)
select
    u.id, 'swu-ece-environmental-technology-good-student-1-1', 'swu-ece-environmental-technology-good-student', 'โครงการเด็กดีมีที่เรียน - เทคโนโลยีสิ่งแวดล้อมและทรัพยากร • TCAS 1.1', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 112; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 5 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-ece-environmental-technology-special-talent-1-1', 'swu-ece-environmental-technology-special-talent', 'โครงการผู้มีทักษะพิเศษ - เทคโนโลยีสิ่งแวดล้อมและทรัพยากร • TCAS 1.1', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 114; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 5 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-ece-environmental-technology-good-student-1-2', 'swu-ece-environmental-technology-good-student', 'โครงการเด็กดีมีที่เรียน - เทคโนโลยีสิ่งแวดล้อมและทรัพยากร • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 129; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 5 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-ece-environmental-technology-special-talent-1-2', 'swu-ece-environmental-technology-special-talent', 'โครงการผู้มีทักษะพิเศษ - เทคโนโลยีสิ่งแวดล้อมและทรัพยากร • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 131; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 5 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-ece-climate-environment-good-student-1-1', 'swu-ece-climate-environment-good-student', 'โครงการเด็กดีมีที่เรียน - วิทยาการการเปลี่ยนแปลงสภาพภูมิอากาศและสิ่งแวดล้อม • TCAS 1.1', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 126; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 5 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-ece-climate-environment-special-talent-1-1', 'swu-ece-climate-environment-special-talent', 'โครงการผู้มีทักษะพิเศษ - วิทยาการการเปลี่ยนแปลงสภาพภูมิอากาศและสิ่งแวดล้อม • TCAS 1.1', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 127; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 5 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-ece-climate-environment-good-student-1-2', 'swu-ece-climate-environment-good-student', 'โครงการเด็กดีมีที่เรียน - วิทยาการการเปลี่ยนแปลงสภาพภูมิอากาศและสิ่งแวดล้อม • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 141; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 5 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-ece-climate-environment-special-talent-1-2', 'swu-ece-climate-environment-special-talent', 'โครงการผู้มีทักษะพิเศษ - วิทยาการการเปลี่ยนแปลงสภาพภูมิอากาศและสิ่งแวดล้อม • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 143; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 5 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-science-mathematics-good-student-1-2', 'swu-science-mathematics-good-student', 'โครงการเด็กดีมีที่เรียน - คณิตศาสตร์ • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 151; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 20 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-science-statistics-good-student-1-2', 'swu-science-statistics-good-student', 'โครงการเด็กดีมีที่เรียน - สถิติ • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 152; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 10 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-science-chemistry-good-student-1-1', 'swu-science-chemistry-good-student', 'โครงการเด็กดีมีที่เรียน - เคมี • TCAS 1.1', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 145; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 8 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-science-chemistry-special-talent-1-1', 'swu-science-chemistry-special-talent', 'โครงการผู้มีทักษะพิเศษ - เคมี • TCAS 1.1', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 147; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 2 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-science-chemistry-good-student-1-2', 'swu-science-chemistry-good-student', 'โครงการเด็กดีมีที่เรียน - เคมี • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 154; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 20 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-science-chemistry-special-talent-1-2', 'swu-science-chemistry-special-talent', 'โครงการผู้มีทักษะพิเศษ - เคมี • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 156; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 2 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-science-biology-good-student-1-1', 'swu-science-biology-good-student', 'โครงการเด็กดีมีที่เรียน - ชีววิทยา • TCAS 1.1', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 149; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 10 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-science-biology-good-student-1-2', 'swu-science-biology-good-student', 'โครงการเด็กดีมีที่เรียน - ชีววิทยา • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 162; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 60 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-science-materials-good-student-1-1', 'swu-science-materials-good-student', 'โครงการเด็กดีมีที่เรียน - วัสดุศาสตร์ • TCAS 1.1', 2570, 1,
    '1 Portfolio', '1.1', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 150; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 10 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-science-materials-good-student-1-2', 'swu-science-materials-good-student', 'โครงการเด็กดีมีที่เรียน - วัสดุศาสตร์ • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 163; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 10 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-science-microbiology-good-student-1-2', 'swu-science-microbiology-good-student', 'โครงการเด็กดีมีที่เรียน - จุลชีววิทยา • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 158; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 38 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-science-microbiology-special-talent-1-2', 'swu-science-microbiology-special-talent', 'โครงการผู้มีทักษะพิเศษ - จุลชีววิทยา • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 160; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 2 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-engineering-chemical-good-student-1-2', 'swu-engineering-chemical-good-student', 'โครงการเด็กดีมีที่เรียน - วิศวกรรมเคมี • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 165; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 15 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-engineering-mechanical-good-student-1-2', 'swu-engineering-mechanical-good-student', 'โครงการเด็กดีมีที่เรียน - วิศวกรรมเครื่องกล • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 166; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 24 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-engineering-civil-good-student-1-2', 'swu-engineering-civil-good-student', 'โครงการเด็กดีมีที่เรียน - วิศวกรรมโยธา • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 167; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 15 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-engineering-industrial-good-student-1-2', 'swu-engineering-industrial-good-student', 'โครงการเด็กดีมีที่เรียน - วิศวกรรมอุตสาหการ • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 168; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 15 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-engineering-biomedical-good-student-1-2', 'swu-engineering-biomedical-good-student', 'โครงการเด็กดีมีที่เรียน - วิศวกรรมชีวการแพทย์ • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 169; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 18 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-engineering-computer-good-student-1-2', 'swu-engineering-computer-good-student', 'โครงการเด็กดีมีที่เรียน - วิศวกรรมคอมพิวเตอร์ • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 170; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 15 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-engineering-electrical-power-good-student-1-2', 'swu-engineering-electrical-power-good-student', 'โครงการเด็กดีมีที่เรียน - วิศวกรรมไฟฟ้า - วิชาเอกวิศวกรรมไฟฟ้ากำลัง • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 171; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 12 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-engineering-telecom-it-good-student-1-2', 'swu-engineering-telecom-it-good-student', 'โครงการเด็กดีมีที่เรียน - วิศวกรรมไฟฟ้า - วิชาเอกวิศวกรรมโทรคมนาคมและเทคโนโลยีสารสนเทศ • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 172; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 12 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-engineering-logistics-bilingual-good-student-1-2', 'swu-engineering-logistics-bilingual-good-student', 'โครงการเด็กดีมีที่เรียน - วิศวกรรมโลจิสติกส์ (หลักสูตร 2 ภาษา) • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 173; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 15 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-engineering-environmental-good-student-1-2', 'swu-engineering-environmental-good-student', 'โครงการเด็กดีมีที่เรียน - วิศวกรรมสิ่งแวดล้อม • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 175; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 10 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-engineering-petroleum-renewable-special-talent-1-2', 'swu-engineering-petroleum-renewable-special-talent', 'โครงการผู้มีทักษะพิเศษ - วิศวกรรมปิโตรเลียมและพลังงานหมุนเวียน (หลักสูตรนานาชาติ) • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 176; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 6 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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
    u.id, 'swu-engineering-cybersecurity-special-talent-1-2', 'swu-engineering-cybersecurity-special-talent', 'โครงการผู้มีทักษะพิเศษ - วิศวกรรมด้านความปลอดภัยไซเบอร์ (หลักสูตรนานาชาติ) • TCAS 1.2', 2570, 1,
    '1 Portfolio', '1.2', 'Portfolio', 'official',
    true, null, 600,
    null, 'https://admission.swu.ac.th/file_staff_upload/file_news/3820260824050404.pdf', 'ประกาศรับสมัครเข้าเป็นนิสิตระดับปริญญาตรี TCAS รอบที่ 1 Portfolio ประจำปีการศึกษา 2570',
    '2026-08-07', '2026-08-29T12:00:00+07:00', 'ประกาศทางการ มศว. TCAS70 หน้า 178; ตารางแผนการรับนิสิตหน้า 12 ระบุจำนวนรับของโครงการ/สาขานี้ 6 คน; ค่าสมัคร 600 บาท ค่าเล่าเรียนไม่ระบุในประกาศฉบับนี้', now()
from public.universities u
where u.short_name = 'SWU'
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

commit;
