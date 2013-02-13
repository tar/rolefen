create user rolefen PASSWORD 'rolefen' ADMIN;
create schema rf authorization rolefen;
alter user rolefen set initial schema rf;
set initial schema rf;

create sequence rf.role_seq start with 100;
create table rf.role (
    id int generated by default as sequence role_seq primary key,
    caption varchar(255)
);

create sequence rf.person_seq start with 100;
create table rf.person (
    id int generated by default as sequence person_seq primary key,
    login varchar(255),
    first_name varchar(255),
    last_name varchar(255),
    role_id int references rf.role(id)
);