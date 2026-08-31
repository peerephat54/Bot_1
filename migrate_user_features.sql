-- Optional production storage for favorites, checklist, and reminders.
-- The bot currently falls back to tmp/user_features.json when these tables
-- have not been applied, so the demo remains usable with a read-only key.
create table if not exists public.user_favorites (
    id uuid primary key default gen_random_uuid(),
    discord_user_id text not null,
    project_id uuid not null references public.admission_projects(id) on delete cascade,
    created_at timestamptz not null default now(),
    unique (discord_user_id, project_id)
);

create table if not exists public.user_checklist_items (
    id uuid primary key default gen_random_uuid(),
    discord_user_id text not null,
    project_id uuid not null references public.admission_projects(id) on delete cascade,
    item_key text not null,
    item_label text not null,
    is_done boolean not null default false,
    updated_at timestamptz not null default now(),
    unique (discord_user_id, project_id, item_key)
);

create table if not exists public.user_deadline_reminders (
    id uuid primary key default gen_random_uuid(),
    discord_user_id text not null,
    project_id uuid not null references public.admission_projects(id) on delete cascade,
    event_id uuid references public.admission_timeline(id) on delete cascade,
    remind_days integer not null default 3,
    active boolean not null default true,
    notified_at timestamptz,
    created_at timestamptz not null default now(),
    unique (discord_user_id, project_id, event_id, remind_days)
);

alter table public.user_favorites enable row level security;
alter table public.user_checklist_items enable row level security;
alter table public.user_deadline_reminders enable row level security;
