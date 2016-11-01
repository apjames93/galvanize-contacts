CREATE ROLE galvanize_admin WITH PASSWORD 'galvanize_p@$$w0rd';

revoke all on all tables in schema public from public;

grant usage on all tables in schema public to public;

 -- alter default privileges for role galvanize_admin  in schema public grant insert, update, delete ON tables to  "AlexJames";

alter default privileges for role "AlexJames"  in schema public grant insert, update, delete ON tables to   galvanize_admin;

ALTER ROLE galvanize_admin WITH LOGIN;
