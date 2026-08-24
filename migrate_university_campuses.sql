-- Add normalized campuses and connect every technology program.
begin;
create table if not exists public.university_campuses (
    id uuid primary key default gen_random_uuid(),
    university_id uuid not null references public.universities(id) on delete cascade,
    code varchar(50) not null,
    name varchar(255) not null,
    is_main boolean not null default false,
    official_url text,
    created_at timestamptz not null default now(),
    updated_at timestamptz not null default now(),
    unique (university_id, code)
);
alter table public.faculties_and_majors
    add column if not exists campus_id uuid
    references public.university_campuses(id) on delete restrict;

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

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'kmitl-it'
  and university.short_name = 'KMITL'
  and campus.code = 'ladkrabang';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'kmitl-dsba'
  and university.short_name = 'KMITL'
  and campus.code = 'ladkrabang';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'kmitl-ait'
  and university.short_name = 'KMITL'
  and campus.code = 'ladkrabang';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'kmitl-bit'
  and university.short_name = 'KMITL'
  and campus.code = 'ladkrabang';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'mu-ict'
  and university.short_name = 'MU'
  and campus.code = 'salaya';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'cmu-cpe'
  and university.short_name = 'CMU'
  and campus.code = 'main';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'kmutt-sit-cs'
  and university.short_name = 'KMUTT'
  and campus.code = 'bangmod';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'kmutt-sit-dsi'
  and university.short_name = 'KMUTT'
  and campus.code = 'bangmod';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'kmutt-sit-it'
  and university.short_name = 'KMUTT'
  and campus.code = 'bangmod';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'mu-computer-engineering'
  and university.short_name = 'MU'
  and campus.code = 'salaya';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'ku-csc-computer-science'
  and university.short_name = 'KU'
  and campus.code = 'sakon-nakhon';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'ku-csc-computer-engineering'
  and university.short_name = 'KU'
  and campus.code = 'sakon-nakhon';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'tu-siit-computer-engineering'
  and university.short_name = 'TU'
  and campus.code = 'rangsit';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'tu-siit-digital-engineering'
  and university.short_name = 'TU'
  and campus.code = 'rangsit';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'kmutt-cpe'
  and university.short_name = 'KMUTT'
  and campus.code = 'bangmod';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'kmutt-cpe-international'
  and university.short_name = 'KMUTT'
  and campus.code = 'bangmod';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'kmutt-media-technology'
  and university.short_name = 'KMUTT'
  and campus.code = 'bangkhuntien';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'kmutt-game-design'
  and university.short_name = 'KMUTT'
  and campus.code = 'bangkhuntien';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'kmutt-ai-systems'
  and university.short_name = 'KMUTT'
  and campus.code = 'ratchaburi';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'cmu-cs'
  and university.short_name = 'CMU'
  and campus.code = 'main';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'cmu-data-science'
  and university.short_name = 'CMU'
  and campus.code = 'main';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'cmu-cyber'
  and university.short_name = 'CMU'
  and campus.code = 'main';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'cmu-software-engineering'
  and university.short_name = 'CMU'
  and campus.code = 'main';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'cmu-digital-game'
  and university.short_name = 'CMU'
  and campus.code = 'main';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'cmu-digital-industry'
  and university.short_name = 'CMU'
  and campus.code = 'main';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'cmu-modern-it'
  and university.short_name = 'CMU'
  and campus.code = 'main';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'cmu-digital-innovation'
  and university.short_name = 'CMU'
  and campus.code = 'main';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'kmitl-chumphon-computer-engineering'
  and university.short_name = 'KMITL'
  and campus.code = 'chumphon';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'kmitl-science-computer-science'
  and university.short_name = 'KMITL'
  and campus.code = 'ladkrabang';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'cu-engineering-computer-engineering'
  and university.short_name = 'CU'
  and campus.code = 'pathum-wan';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'cu-engineering-cedt'
  and university.short_name = 'CU'
  and campus.code = 'pathum-wan';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'cu-engineering-ice'
  and university.short_name = 'CU'
  and campus.code = 'pathum-wan';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'cu-engineering-robotics-ai'
  and university.short_name = 'CU'
  and campus.code = 'pathum-wan';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'cu-engineering-semiconductor'
  and university.short_name = 'CU'
  and campus.code = 'pathum-wan';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'cu-science-computer-science'
  and university.short_name = 'CU'
  and campus.code = 'pathum-wan';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'cu-cbs-management-information-systems'
  and university.short_name = 'CU'
  and campus.code = 'pathum-wan';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'cu-cbs-statistics-data-science'
  and university.short_name = 'CU'
  and campus.code = 'pathum-wan';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'cu-cbs-information-technology-business'
  and university.short_name = 'CU'
  and campus.code = 'pathum-wan';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'kmutnb-engineering-computer-engineering'
  and university.short_name = 'KMUTNB'
  and campus.code = 'bangkok';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'kmutnb-science-computer-science'
  and university.short_name = 'KMUTNB'
  and campus.code = 'bangkok';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'kmutnb-itd-informatics-digital-economy'
  and university.short_name = 'KMUTNB'
  and campus.code = 'bangkok';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'kmutnb-fitm-information-technology'
  and university.short_name = 'KMUTNB'
  and campus.code = 'prachinburi';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'kmutnb-fitm-information-network-engineering'
  and university.short_name = 'KMUTNB'
  and campus.code = 'prachinburi';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'kmitl-engineering-computer-engineering'
  and university.short_name = 'KMITL'
  and campus.code = 'ladkrabang';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'kmitl-engineering-software-international'
  and university.short_name = 'KMITL'
  and campus.code = 'ladkrabang';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'kmitl-engineering-computer-innovation-international'
  and university.short_name = 'KMITL'
  and campus.code = 'ladkrabang';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'kmitl-engineering-information-engineering'
  and university.short_name = 'KMITL'
  and campus.code = 'ladkrabang';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'kmitl-engineering-robotics-ai-international'
  and university.short_name = 'KMITL'
  and campus.code = 'ladkrabang';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'ku-bangkhen-computer-engineering'
  and university.short_name = 'KU'
  and campus.code = 'bangkhen';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'ku-bangkhen-software-knowledge-engineering'
  and university.short_name = 'KU'
  and campus.code = 'bangkhen';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'ku-bangkhen-computer-science'
  and university.short_name = 'KU'
  and campus.code = 'bangkhen';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'tu-engineering-computer-engineering'
  and university.short_name = 'TU'
  and campus.code = 'rangsit';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'tu-engineering-software-engineering'
  and university.short_name = 'TU'
  and campus.code = 'rangsit';

update public.faculties_and_majors program
set campus_id = campus.id, updated_at = now()
from public.university_campuses campus
join public.universities university on university.id = campus.university_id
where program.code = 'tu-science-computer-science'
  and university.short_name = 'TU'
  and campus.code = 'rangsit';
create index if not exists idx_university_campuses_university
    on public.university_campuses(university_id);
create index if not exists idx_faculties_campus
    on public.faculties_and_majors(campus_id);
alter table public.university_campuses enable row level security;
drop policy if exists "Public read university campuses" on public.university_campuses;
create policy "Public read university campuses" on public.university_campuses for select to anon, authenticated using (true);
commit;
