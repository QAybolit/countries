create extension if not exists "uuid-ossp";

create table if not exists "countries"
(
    id       UUID unique  not null default uuid_generate_v1() primary key,
    country_name varchar(50) not null,
    alfa2 varchar(2)  not null,
    description varchar(255)  not null
    );