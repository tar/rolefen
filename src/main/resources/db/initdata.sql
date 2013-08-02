--Initital data

--Roles
insert into rf.role (id, caption) values (1, 'admin');
insert into rf.role (id, caption) values (2, 'master');
insert into rf.role (id, caption) values (3, 'user');
--Users
insert into rf.person (id, login, first_name, last_name, active, role_id) values (1, 'admin', 'admin', 'admin', true, 1);
insert into rf.person (id, login, first_name, last_name, active, role_id) values (2, 'tar', 'Anton', 'Lukashin', true, 2);
insert into rf.person (id, login, first_name, last_name, active, role_id) values (3, 'ratamir', 'Alex', 'Reutov', true, 2);
--Organizations
--insert into rf.organization(id, caption, active, master_id) values (1, 'KTF', true, 3);
--Teams
insert into rf.team(id, caption, active, master_id) values (1, 'Логрус', true, 3);
insert into rf.team(id, caption, active, master_id) values (2, 'Угорт', true, 3);
insert into rf.team(id, caption, active, master_id) values (3, 'Каролинг', true, 3);
insert into rf.team(id, caption, active, master_id) values (4, 'Исток', true, 3);
insert into rf.team(id, caption, active, master_id) values (5, 'Мелиор', true, 3);