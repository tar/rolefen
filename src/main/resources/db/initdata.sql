--Initital data

--Roles
insert into rf.role (id, caption) values (1, 'admin');
insert into rf.role (id, caption) values (2, 'master');
insert into rf.role (id, caption) values (3, 'user');
--Users
insert into rf.person (id, login, first_name, last_name, role_id) values (1, 'admin', 'admin', 'admin', 1);
insert into rf.person (id, login, first_name, last_name, role_id) values (2, 'lukan', 'Anton', 'Lukashin', 2);
insert into rf.person (id, login, first_name, last_name, role_id) values (3, 'helg', 'Oleg', 'Rekin', 2);