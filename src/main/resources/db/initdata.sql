--Initital data

--Roles
insert into rf.role (id, name, caption) values (1, 'ROLE_ADMIN', 'Администратор');
insert into rf.role (id, name, caption) values (2, 'ROLE_USER', 'Ратник');
insert into rf.role (id, name, caption) values (5, 'ROLE_FRIEND', 'Друг');
insert into rf.role (id, name, caption) values (6, 'ROLE_PARENT', 'Родитель');
--Ranks
insert into rf.rank (id, name, caption) values (1, 'knecht1', 'Кнехт I степени');
insert into rf.rank (id, name, caption) values (2, 'knecht2', 'Кнехт II степени');
insert into rf.rank (id, name, caption) values (3, 'knecht3', 'Кнехт III степени');
insert into rf.rank (id, name, caption) values (4, 'braveman1', 'Брэйвмэн I степени');
insert into rf.rank (id, name, caption) values (5, 'braveman2', 'Брэйвмэн II степени');
insert into rf.rank (id, name, caption) values (6, 'braveman3', 'Брэйвмэн III степени');
insert into rf.rank (id, name, caption) values (7, 'footman1', 'Футмэн I степени');
insert into rf.rank (id, name, caption) values (8, 'footman2', 'Футмэн II степени');
insert into rf.rank (id, name, caption) values (9, 'footman3', 'Футмэн III степени');
--Users
insert into rf.person (id, login, first_name, last_name, active, role_id) values (1, 'admin', 'admin', 'admin', true, 1);
--Teams
insert into rf.team(id, caption, active, master_id) values (1, 'Угорт', true, 1);
insert into rf.team(id, caption, active, master_id) values (2, 'Логрус', true, 1);
insert into rf.team(id, caption, active, master_id) values (3, 'Каролинг', true, 1);
insert into rf.team(id, caption, active, master_id) values (4, 'Мелиор', true, 1);
insert into rf.team(id, caption, active, master_id) values (5, 'Исток', true, 1);