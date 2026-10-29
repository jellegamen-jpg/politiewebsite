-- Online backend voor Politie Academie Arnhem RP
create extension if not exists pgcrypto;

create table if not exists public.portal_users (
  id uuid primary key default gen_random_uuid(),
  auth_user_id uuid unique not null,
  auth_email text unique not null,
  username text unique not null,
  name text not null,
  ingame_name text not null,
  roles text[] not null default '{Politie}',
  rank text not null default '',
  roepnummer text not null default '',
  created_at timestamptz not null default now()
);

create table if not exists public.portal_kv (
  key text primary key,
  value jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.portal_users enable row level security;
alter table public.portal_kv enable row level security;

-- Alleen de Netlify server gebruikt de service/secret key voor deze tabellen.
-- Er worden bewust geen anon/auth policies toegevoegd.

insert into public.portal_kv(key,value) values
('pages','{}'::jsonb),
('roepnummers','{}'::jsonb)
on conflict (key) do nothing;

-- Bestaande profiles mogen blijven bestaan; deze tabellen zijn specifiek voor het portal.


-- Jelle koppelen aan het bestaande Supabase Auth-account.
-- Controleer vóór Run dat deze UID in Authentication > Users bij jellegame8@gmail.com hoort.
insert into public.portal_users
  (auth_user_id, auth_email, username, name, ingame_name, roles, rank, roepnummer)
values
  ('49725b20-3677-4597-9c56-d1cb7e3e6cc7'::uuid,
   'jellegame8@gmail.com',
   'jelle',
   'Jelle',
   'Jelle',
   array[]::text[],
   '',
   '')
on conflict (username) do update set
  auth_user_id = excluded.auth_user_id,
  auth_email = excluded.auth_email,
  name = excluded.name,
  ingame_name = excluded.ingame_name,
  roles = array[]::text[],
  rank = '',
  roepnummer = '';

