-- Starter schema for a hosted Supabase implementation.
-- Do not expose the table to public SELECT. Use a server-side Edge Function
-- for inserts and require authenticated admin access for reading/exporting.
create table if not exists public.student_registrations (
  id uuid primary key default gen_random_uuid(),
  full_name text not null check (char_length(full_name) between 2 and 100),
  whatsapp_number text not null check (char_length(whatsapp_number) between 7 and 20),
  consent_given boolean not null default false check (consent_given = true),
  consent_text_version text not null default '2029-v1',
  created_at timestamptz not null default now()
);
alter table public.student_registrations enable row level security;
-- Intentionally no public policies here. Add a validated Edge Function for
-- registration inserts and authenticated admin-only SELECT/export policies.
