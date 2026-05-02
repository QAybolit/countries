create extension if not exists "uuid-ossp";

create table if not exists "countries"
(
    id UUID unique not null default uuid_generate_v1() primary key,
    country_name varchar(50) not null,
    country_code varchar(2)  unique not null,
    description varchar(255) null
);

alter table "countries"
    owner to postgres;

delete
from "countries";
insert into "countries"(country_name, country_code)
values ('Fiji', 'FJ');
insert into "countries"(country_name, country_code)
values ('Tanzania', 'TZ');
insert into "countries"(country_name, country_code)
values ('Canada', 'CA');
insert into "countries"(country_name, country_code)
values ('Kazakhstan', 'KZ');
insert into "countries"(country_name, country_code)
values ('Indonesia', 'ID');
insert into "countries"(country_name, country_code)
values ('Argentina', 'AR');
insert into "countries"(country_name, country_code)
values ('Chile', 'CL');
insert into "countries"(country_name, country_code)
values ('Kenya', 'KE');
insert into "countries"(country_name, country_code)
values ('Haiti', 'HT');
insert into "countries"(country_name, country_code)
values ('Russia', 'RU');