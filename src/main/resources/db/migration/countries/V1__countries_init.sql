create extension if not exists "uuid-ossp";

create schema if not exists countries;

create table if not exists "countries"
(
    id UUID unique not null default uuid_generate_v1() primary key,
    country_name varchar(50) not null,
    iso_code varchar(2)  unique not null,
    description varchar(255) null
);

alter table "countries"
    owner to postgres;

insert into "countries"(country_name, iso_code)
values ('Fiji', 'FJ');
insert into "countries"(country_name, iso_code)
values ('Tanzania', 'TZ');
insert into "countries"(country_name, iso_code)
values ('Western Sahara', 'EH');
insert into "countries"(country_name, iso_code)
values ('Canada', 'CA');
insert into "countries"(country_name, iso_code)
values ('United States', 'US');
insert into "countries"(country_name, iso_code)
values ('Kazakhstan', 'KZ');
insert into "countries"(country_name, iso_code)
values ('Uzbekistan', 'UZ');
insert into "countries"(country_name, iso_code)
values ('Papua New Guinea', 'PG');
insert into "countries"(country_name, iso_code)
values ('Indonesia', 'ID');
insert into "countries"(country_name, iso_code)
values ('Argentina', 'AR');
insert into "countries"(country_name, iso_code)
values ('Chile', 'CL');
insert into "countries"(country_name, iso_code)
values ('Democratic Republic of the Congo', 'CD');
insert into "countries"(country_name, iso_code)
values ('Somalia', 'SO');
insert into "countries"(country_name, iso_code)
values ('Kenya', 'KE');
insert into "countries"(country_name, iso_code)
values ('Sudan', 'SD');
insert into "countries"(country_name, iso_code)
values ('Chad', 'TD');
insert into "countries"(country_name, iso_code)
values ('Haiti', 'HT');
insert into "countries"(country_name, iso_code)
values ('Dominican Republic', 'DO');
insert into "countries"(country_name, iso_code)
values ('Russia', 'RU');
insert into "countries"(country_name, iso_code)
values ('Bahamas', 'BS');
insert into "countries"(country_name, iso_code)
values ('Falkland Islands', 'FK');
insert into "countries"(country_name, iso_code)
values ('Norway', 'NO');
insert into "countries"(country_name, iso_code)
values ('Greenland', 'GL');
insert into "countries"(country_name, iso_code)
values ('Timor-Leste', 'TL');
insert into "countries"(country_name, iso_code)
values ('South Africa', 'ZA');
insert into "countries"(country_name, iso_code)
values ('Lesotho', 'LS');
insert into "countries"(country_name, iso_code)
values ('Mexico', 'MX');
insert into "countries"(country_name, iso_code)
values ('Uruguay', 'UY');
insert into "countries"(country_name, iso_code)
values ('Brazil', 'BR');
insert into "countries"(country_name, iso_code)
values ('Bolivia', 'BO');
insert into "countries"(country_name, iso_code)
values ('Peru', 'PE');
insert into "countries"(country_name, iso_code)
values ('Colombia', 'CO');
insert into "countries"(country_name, iso_code)
values ('Panama', 'PA');
insert into "countries"(country_name, iso_code)
values ('Costa Rica', 'CR');
insert into "countries"(country_name, iso_code)
values ('Nicaragua', 'NI');
insert into "countries"(country_name, iso_code)
values ('Honduras', 'HN');
insert into "countries"(country_name, iso_code)
values ('El Salvador', 'SV');
insert into "countries"(country_name, iso_code)
values ('Guatemala', 'GT');
insert into "countries"(country_name, iso_code)
values ('Belize', 'BZ');
insert into "countries"(country_name, iso_code)
values ('Venezuela', 'VE');
insert into "countries"(country_name, iso_code)
values ('Guyana', 'GY');
insert into "countries"(country_name, iso_code)
values ('Suriname', 'SR');
insert into "countries"(country_name, iso_code)
values ('France', 'FR');
insert into "countries"(country_name, iso_code)
values ('Ecuador', 'EC');
insert into "countries"(country_name, iso_code)
values ('Puerto Rico', 'PR');
insert into "countries"(country_name, iso_code)
values ('Jamaica', 'JM');
insert into "countries"(country_name, iso_code)
values ('Cuba', 'CU');
insert into "countries"(country_name, iso_code)
values ('Zimbabwe', 'ZW');
insert into "countries"(country_name, iso_code)
values ('Botswana', 'BW');
insert into "countries"(country_name, iso_code)
values ('Namibia', 'NA');
insert into "countries"(country_name, iso_code)
values ('Senegal', 'SN');
insert into "countries"(country_name, iso_code)
values ('Mali', 'ML');
insert into "countries"(country_name, iso_code)
values ('Mauritania', 'MR');
insert into "countries"(country_name, iso_code)
values ('Benin', 'BJ');
insert into "countries"(country_name, iso_code)
values ('Niger', 'NE');
insert into "countries"(country_name, iso_code)
values ('Nigeria', 'NG');
insert into "countries"(country_name, iso_code)
values ('Cameroon', 'CM');
insert into "countries"(country_name, iso_code)
values ('Togo', 'TG');
insert into "countries"(country_name, iso_code)
values ('Ghana', 'GH');
insert into "countries"(country_name, iso_code)
values ('Côted`Ivoire', 'CI');
insert into "countries"(country_name, iso_code)
values ('Guinea', 'GN');
insert into "countries"(country_name, iso_code)
values ('Guinea-Bissau', 'GW');
insert into "countries"(country_name, iso_code)
values ('Liberia', 'LR');
insert into "countries"(country_name, iso_code)
values ('Sierra Leone', 'SL');
insert into "countries"(country_name, iso_code)
values ('Burkina Faso', 'BF');
insert into "countries"(country_name, iso_code)
values ('Central African Republic', 'CF');
insert into "countries"(country_name, iso_code)
values ('Republic of the Congo', 'CG');
insert into "countries"(country_name, iso_code)
values ('Gabon', 'GA');
insert into "countries"(country_name, iso_code)
values ('Equatorial Guinea', 'GQ');
insert into "countries"(country_name, iso_code)
values ('Zambia', 'ZM');
insert into "countries"(country_name, iso_code)
values ('Malawi', 'MW');
insert into "countries"(country_name, iso_code)
values ('Mozambique', 'MZ');
insert into "countries"(country_name, iso_code)
values ('Eswatini', 'SZ');
insert into "countries"(country_name, iso_code)
values ('Angola', 'AO');
insert into "countries"(country_name, iso_code)
values ('Burundi', 'BI');
insert into "countries"(country_name, iso_code)
values ('Israel', 'IL');
insert into "countries"(country_name, iso_code)
values ('Lebanon', 'LB');
insert into "countries"(country_name, iso_code)
values ('Madagascar', 'MG');
insert into "countries"(country_name, iso_code)
values ('Palestine', 'PS');
insert into "countries"(country_name, iso_code)
values ('The Gambia', 'GM');
insert into "countries"(country_name, iso_code)
values ('Tunisia', 'TN');
insert into "countries"(country_name, iso_code)
values ('Algeria', 'DZ');
insert into "countries"(country_name, iso_code)
values ('Jordan', 'JO');
insert into "countries"(country_name, iso_code)
values ('United Arab Emirates', 'AE');
insert into "countries"(country_name, iso_code)
values ('Qatar', 'QA');
insert into "countries"(country_name, iso_code)
values ('Kuwait', 'KW');
insert into "countries"(country_name, iso_code)
values ('Iraq', 'IQ');
insert into "countries"(country_name, iso_code)
values ('Oman', 'OM');
insert into "countries"(country_name, iso_code)
values ('Vanuatu', 'VU');
insert into "countries"(country_name, iso_code)
values ('Cambodia', 'KH');
insert into "countries"(country_name, iso_code)
values ('Thailand', 'TH');
insert into "countries"(country_name, iso_code)
values ('Lao PDR', 'LA');
insert into "countries"(country_name, iso_code)
values ('Myanmar', 'MM');
insert into "countries"(country_name, iso_code)
values ('Vietnam', 'VN');
insert into "countries"(country_name, iso_code)
values ('Dem. Rep. Korea', 'KP');
insert into "countries"(country_name, iso_code)
values ('Republic of Korea', 'KR');
insert into "countries"(country_name, iso_code)
values ('Mongolia', 'MN');
insert into "countries"(country_name, iso_code)
values ('India', 'IN');
insert into "countries"(country_name, iso_code)
values ('Bangladesh', 'BD');
insert into "countries"(country_name, iso_code)
values ('Bhutan', 'BT');
insert into "countries"(country_name, iso_code)
values ('Nepal', 'NP');
insert into "countries"(country_name, iso_code)
values ('Pakistan', 'PK');
insert into "countries"(country_name, iso_code)
values ('Afghanistan', 'AF');
insert into "countries"(country_name, iso_code)
values ('Tajikistan', 'TJ');
insert into "countries"(country_name, iso_code)
values ('Kyrgyzstan', 'KG');
insert into "countries"(country_name, iso_code)
values ('Turkmenistan', 'TM');
insert into "countries"(country_name, iso_code)
values ('Iran', 'IR');
insert into "countries"(country_name, iso_code)
values ('Syria', 'SY');
insert into "countries"(country_name, iso_code)
values ('Armenia', 'AM');
insert into "countries"(country_name, iso_code)
values ('Sweden', 'SE');
insert into "countries"(country_name, iso_code)
values ('Belarus', 'BY');
insert into "countries"(country_name, iso_code)
values ('Ukraine', 'UA');
insert into "countries"(country_name, iso_code)
values ('Poland', 'PL');
insert into "countries"(country_name, iso_code)
values ('Austria', 'AT');
insert into "countries"(country_name, iso_code)
values ('Hungary', 'HU');
insert into "countries"(country_name, iso_code)
values ('Moldova', 'MD');
insert into "countries"(country_name, iso_code)
values ('Romania', 'RO');
insert into "countries"(country_name, iso_code)
values ('Lithuania', 'LT');
insert into "countries"(country_name, iso_code)
values ('Latvia', 'LV');
insert into "countries"(country_name, iso_code)
values ('Estonia', 'EE');
insert into "countries"(country_name, iso_code)
values ('Germany', 'DE');
insert into "countries"(country_name, iso_code)
values ('Bulgaria', 'BG');
insert into "countries"(country_name, iso_code)
values ('Greece', 'GR');
insert into "countries"(country_name, iso_code)
values ('Turkey', 'TR');
insert into "countries"(country_name, iso_code)
values ('Albania', 'AL');
insert into "countries"(country_name, iso_code)
values ('Croatia', 'HR');
insert into "countries"(country_name, iso_code)
values ('Switzerland', 'CH');
insert into "countries"(country_name, iso_code)
values ('Luxembourg', 'LU');
insert into "countries"(country_name, iso_code)
values ('Belgium', 'BE');
insert into "countries"(country_name, iso_code)
values ('Netherlands', 'NL');
insert into "countries"(country_name, iso_code)
values ('Portugal', 'PT');
insert into "countries"(country_name, iso_code)
values ('Spain', 'ES');
insert into "countries"(country_name, iso_code)
values ('Ireland', 'IE');
insert into "countries"(country_name, iso_code)
values ('New Caledonia', 'NC');
insert into "countries"(country_name, iso_code)
values ('Solomon Islands', 'SB');
insert into "countries"(country_name, iso_code)
values ('New Zealand', 'NZ');
insert into "countries"(country_name, iso_code)
values ('Australia', 'AU');
insert into "countries"(country_name, iso_code)
values ('Sri Lanka', 'LK');
insert into "countries"(country_name, iso_code)
values ('China', 'CN');
insert into "countries"(country_name, iso_code)
values ('Taiwan', 'TW');
insert into "countries"(country_name, iso_code)
values ('Italy', 'IT');
insert into "countries"(country_name, iso_code)
values ('Denmark', 'DK');
insert into "countries"(country_name, iso_code)
values ('United Kingdom', 'GB');
insert into "countries"(country_name, iso_code)
values ('Iceland', 'IS');
insert into "countries"(country_name, iso_code)
values ('Azerbaijan', 'AZ');
insert into "countries"(country_name, iso_code)
values ('Georgia', 'GE');
insert into "countries"(country_name, iso_code)
values ('Philippines', 'PH');
insert into "countries"(country_name, iso_code)
values ('Malaysia', 'MY');
insert into "countries"(country_name, iso_code)
values ('Brunei Darussalam', 'BN');
insert into "countries"(country_name, iso_code)
values ('Slovenia', 'SI');
insert into "countries"(country_name, iso_code)
values ('Finland', 'FI');
insert into "countries"(country_name, iso_code)
values ('Slovakia', 'SK');
insert into "countries"(country_name, iso_code)
values ('Czech Republic', 'CZ');
insert into "countries"(country_name, iso_code)
values ('Eritrea', 'ER');
insert into "countries"(country_name, iso_code)
values ('Japan', 'JP');
insert into "countries"(country_name, iso_code)
values ('Paraguay', 'PY');
insert into "countries"(country_name, iso_code)
values ('Yemen', 'YE');
insert into "countries"(country_name, iso_code)
values ('Saudi Arabia', 'SA');
insert into "countries"(country_name, iso_code)
values ('Cyprus', 'CY');
insert into "countries"(country_name, iso_code)
values ('Morocco', 'MA');
insert into "countries"(country_name, iso_code)
values ('Egypt', 'EG');
insert into "countries"(country_name, iso_code)
values ('Libya', 'LY');
insert into "countries"(country_name, iso_code)
values ('Ethiopia', 'ET');
insert into "countries"(country_name, iso_code)
values ('Djibouti', 'DJ');
insert into "countries"(country_name, iso_code)
values ('Uganda', 'UG');
insert into "countries"(country_name, iso_code)
values ('Rwanda', 'RW');
insert into "countries"(country_name, iso_code)
values ('Bosnia and Herzegovina', 'BA');
insert into "countries"(country_name, iso_code)
values ('Macedonia', 'MK');
insert into "countries"(country_name, iso_code)
values ('Serbia', 'RS');
insert into "countries"(country_name, iso_code)
values ('Montenegro', 'ME');
insert into "countries"(country_name, iso_code)
values ('Kosovo', 'XK');
insert into "countries"(country_name, iso_code)
values ('Trinidad and Tobago', 'TT');
insert into "countries"(country_name, iso_code)
values ('South Sudan', 'SS');