create user rolefen PASSWORD 'rolefen' ADMIN;
create schema rf authorization rolefen;
alter user rolefen set initial schema rf;
set initial schema rf;

--Roles
create sequence rf.role_seq start with 100;
create table rf.role (
    id int generated by default as sequence role_seq primary key,
    caption varchar(255)
);

--Users
create sequence rf.person_seq start with 100;
create table rf.person (
    id int generated by default as sequence person_seq primary key,
    login varchar(255),
    password varchar(255),
    first_name varchar(255),
    last_name varchar(255),
    patronymic varchar(255),
    email varchar(255),
    phone varchar(255),
    address varchar(255),
    birthday timestamp,
    rating double default 0,
    active boolean default false,
    reg_date timestamp default now,
    team_id int,
    role_id int references rf.role(id)
);
alter table rf.person 
add constraint person_login_uniq
unique(login);

--Organizations
--create sequence rf.org_seq start with 100;
--create table rf.organization(
--	id int generated by default as sequence org_seq primary key,
--	caption varchar(255),
--	description varchar(255),
--	email varchar(255),
--	phone varchar(255),
--	address varchar(255),
--	active boolean default false,
--	logo_path varchar(255),
--	reg_date timestamp default now,
--	master_id int references rf.person(id)
--);

--Teams
create sequence rf.team_seq start with 100;
create table rf.team(
	id int generated by default as sequence team_seq primary key,
	caption varchar(255),
	description varchar(255),
	email varchar(255),
	phone varchar(255),
	address varchar(255),
	active boolean default false,
	logo_path varchar(255),
	reg_date timestamp default now,
--	org_id int references rf.organization(id),
	master_id int references rf.person(id)
);

--Add  FK team_id references to team(id)
alter table rf.person
add foreign key(team_id) references rf.team(id);

--Tournaments
create sequence rf.tour_seq start with 100;
create table rf.tournament(
	id int generated by default as sequence tour_seq primary key,
	caption varchar(255),
	description varchar(255),
	address varchar(255),
	active boolean default false,
	reg_date timestamp default now,
	ex_date timestamp,
	owner int references rf.team(id)
);