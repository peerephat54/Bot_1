-- Generated from datasets/tcas70_admissions.json
-- Supabase SQL Editor part 8 of 8; run parts in numeric order.
begin;

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-biology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-biology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-biology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-biology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-biology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-08-18', '2026-09-16', '18 ส.ค. - 16 ก.ย. 2569 (ปิด 15.00 น. วันที่ 16 ก.ย.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2026-10-21', null, '21 ต.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-07', '2026-11-08', '7 - 8 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2026-11-17', null, '17 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2026-11-17', '2026-11-18', '17 - 18 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-materials-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-science-microbiology-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-chemical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-chemical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-chemical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-chemical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-chemical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-chemical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-chemical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-chemical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-mechanical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-mechanical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-mechanical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-mechanical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-mechanical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-mechanical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-mechanical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-mechanical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-civil-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-civil-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-civil-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-civil-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-civil-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-civil-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-civil-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-civil-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-industrial-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-industrial-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-industrial-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-industrial-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-industrial-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-industrial-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-industrial-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-industrial-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-biomedical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-biomedical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-biomedical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-biomedical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-biomedical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-biomedical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-biomedical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-biomedical-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-computer-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-computer-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-computer-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-computer-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-computer-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-computer-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-computer-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-computer-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-electrical-power-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-electrical-power-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-electrical-power-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-electrical-power-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-electrical-power-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-electrical-power-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-electrical-power-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-electrical-power-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-telecom-it-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-telecom-it-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-telecom-it-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-telecom-it-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-telecom-it-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-telecom-it-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-telecom-it-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-telecom-it-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-logistics-bilingual-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-logistics-bilingual-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-logistics-bilingual-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-logistics-bilingual-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-logistics-bilingual-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-logistics-bilingual-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-logistics-bilingual-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-logistics-bilingual-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-environmental-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-environmental-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-environmental-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-environmental-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-environmental-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-environmental-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-environmental-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-environmental-good-student-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-petroleum-renewable-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-petroleum-renewable-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-petroleum-renewable-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-petroleum-renewable-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-petroleum-renewable-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-petroleum-renewable-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-petroleum-renewable-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-petroleum-renewable-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2026-12-16', '1 - 16 ธ.ค. 2569 (ปิด 15.00 น. วันที่ 16 ธ.ค.)', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-cybersecurity-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้มีสิทธิ์สอบสัมภาษณ์', '2027-01-26', null, '26 ม.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-cybersecurity-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-13', '2027-02-14', '13 - 14 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-cybersecurity-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือก', '2027-02-23', null, '23 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-cybersecurity-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบรับสมัครนิสิตใหม่ มศว', '2027-02-23', '2027-02-24', '23 - 24 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-cybersecurity-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลผู้ผ่านการคัดเลือกโดย ทปอ.', '2027-03-10', null, '10 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-cybersecurity-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ยืนยันสิทธิ์ในระบบ ทปอ.', '2027-03-10', '2027-03-11', '10 - 11 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-cybersecurity-special-talent-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผู้มีสิทธิ์เข้าศึกษา', '2027-03-14', null, '14 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'swu-engineering-cybersecurity-special-talent-1-2'
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
where p.code = 'ku-bangkhen-sports-1-1'
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
where p.code = 'ku-bangkhen-sports-1-1'
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
where p.code = 'ku-bangkhen-sports-1-1'
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
where p.code = 'ku-bangkhen-sports-1-1'
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
where p.code = 'ku-bangkhen-psw-1-1'
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
where p.code = 'ku-bangkhen-psw-1-1'
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
where p.code = 'ku-bangkhen-psw-1-1'
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
where p.code = 'ku-bangkhen-psw-1-1'
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
where p.code = 'ku-bangkhen-olympic-1-1'
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
where p.code = 'ku-bangkhen-olympic-1-1'
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
where p.code = 'ku-bangkhen-olympic-1-1'
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
where p.code = 'ku-bangkhen-olympic-1-1'
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
where p.code = 'ku-bangkhen-olympic-1-2'
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
where p.code = 'ku-bangkhen-olympic-1-2'
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
where p.code = 'ku-bangkhen-olympic-1-2'
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
where p.code = 'ku-bangkhen-olympic-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-10-01', '2026-11-05', '1 ต.ค.–5 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-kps-advanced-placement-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-11-16', '2026-11-16', '16 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-kps-advanced-placement-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-20', '2026-11-20', '20 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-kps-advanced-placement-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลสอบสัมภาษณ์', '2026-11-24', '2026-11-24', '24 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-kps-advanced-placement-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-10-01', '2026-11-05', '1 ต.ค.–5 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-kps-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-11-16', '2026-11-16', '16 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-kps-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-11-20', '2026-11-20', '20 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-kps-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลสอบสัมภาษณ์', '2026-11-24', '2026-11-24', '24 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-kps-portfolio-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-12-01', '2027-02-10', '1 ธ.ค. 2569–10 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-kps-portfolio-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2027-02-22', '2027-02-22', '22 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-kps-portfolio-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2027-02-25', '2027-02-26', '25–26 ก.พ. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-kps-portfolio-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลสอบสัมภาษณ์', '2027-03-02', '2027-03-02', '2 มี.ค. 2570', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-kps-portfolio-1-2'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-08-25', '2026-11-15', '25 ส.ค.–15 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-sriracha-morals-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-12-04', '2026-12-04', '4 ธ.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-sriracha-morals-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-12-13', '2026-12-13', '13 ธ.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-sriracha-morals-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลสอบสัมภาษณ์', '2026-12-18', '2026-12-18', '18 ธ.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-sriracha-morals-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-08-25', '2026-11-15', '25 ส.ค.–15 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-sriracha-youth-leader-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-12-04', '2026-12-04', '4 ธ.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-sriracha-youth-leader-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-12-13', '2026-12-13', '13 ธ.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-sriracha-youth-leader-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลสอบสัมภาษณ์', '2026-12-18', '2026-12-18', '18 ธ.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-sriracha-youth-leader-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'รับสมัคร', '2026-08-25', '2026-11-15', '25 ส.ค.–15 พ.ย. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-sriracha-expansion-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศรายชื่อผู้มีสิทธิ์สอบสัมภาษณ์', '2026-12-04', '2026-12-04', '4 ธ.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-sriracha-expansion-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'สอบสัมภาษณ์', '2026-12-13', '2026-12-13', '13 ธ.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-sriracha-expansion-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

insert into public.admission_timeline (
    project_id, event_name, start_on, end_on, date_display, date_status, updated_at
)
select p.id, 'ประกาศผลสอบสัมภาษณ์', '2026-12-18', '2026-12-18', '18 ธ.ค. 2569', 'confirmed', now()
from public.admission_projects p
where p.code = 'ku-sriracha-expansion-1-1'
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
where p.code = 'ku-bangkhen-culture-soft-power-1-1'
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
where p.code = 'ku-bangkhen-culture-soft-power-1-1'
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
where p.code = 'ku-bangkhen-culture-soft-power-1-1'
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
where p.code = 'ku-bangkhen-culture-soft-power-1-1'
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
where p.code = 'ku-bangkhen-science-network-1-1'
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
where p.code = 'ku-bangkhen-science-network-1-1'
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
where p.code = 'ku-bangkhen-science-network-1-1'
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
where p.code = 'ku-bangkhen-science-network-1-1'
on conflict (project_id, event_name) do update set
    start_on = excluded.start_on,
    end_on = excluded.end_on,
    date_display = excluded.date_display,
    date_status = excluded.date_status,
    updated_at = now();

commit;
