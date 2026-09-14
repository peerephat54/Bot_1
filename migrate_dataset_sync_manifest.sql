-- Records which exact local dataset and source-audit snapshot was imported.
-- Read-only access is sufficient for the bot's /health command.
create table if not exists public.dataset_sync_manifest (
    academic_year integer primary key,
    dataset_sha256 text not null check (dataset_sha256 ~ '^[0-9a-f]{64}$'),
    audit_sha256 text not null check (audit_sha256 ~ '^[0-9a-f]{64}$'),
    sync_mode text not null check (sync_mode in ('insert_missing', 'reviewed_upsert')),
    record_counts jsonb not null default '{}'::jsonb,
    synced_at timestamptz not null default now()
);

alter table public.dataset_sync_manifest enable row level security;
drop policy if exists "Dataset sync manifest is readable" on public.dataset_sync_manifest;
create policy "Dataset sync manifest is readable"
    on public.dataset_sync_manifest for select to anon, authenticated
    using (true);
grant select on public.dataset_sync_manifest to anon, authenticated;
