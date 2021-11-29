--Таблица employees

--Создать таблицу employees
-- - id. serial,  primary key,
-- - employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.

create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

insert into employees (employee_name)
values ('Kate'),
       ('Mary'),
       ('George'),
       ('Nadia'),
       ('Nastya'),
       ('Ben'),
       ('Viktor'),
       ('Dmitrii'),
       ('Alex'),
       ('Vlad'),
       ('Vika'),
       ('Maks'),
       ('Sergei'),
       ('Inna'),
       ('Oleg'),
       ('Igor'),
       ('Julia'),
       ('Tanya'),
       ('Artem'),
       ('Kirill'),
       ('Roman'),
       ('Evgenii'),
       ('Pavel'),
       ('Elena'),
       ('Greg'),
       ('Lera'),
       ('Denis'),
       ('Alexey'),
       ('Anna'),
       ('Ilia'),
       ('Kris'),
       ('Leonid'),
       ('Petr'),
       ('Anatoli'),
       ('Sam'),
       ('Alina'),
       ('Stanislav'),
       ('Maksim'),
       ('Ivan'),
       ('Anton'),
       ('Olga'),
       ('Polina'),
       ('Irina'),
       ('Sara'),
       ('Robert'),
       ('Leo'),
       ('Katrin'),
       ('Ksenia'),
       ('Nick'),
       ('Egor'),
       ('Tim'),
       ('Dan'),
       ('Helen'),
       ('Nikita'),
       ('Lusi'),
       ('Jorge'),
       ('Markus'),
       ('Emili'),
       ('Katerina'),
       ('Zina'),
       ('Vera'),
       ('Ben'),
       ('Garry'),
       ('Liza'),
       ('Rachel'),
       ('Donald'),
       ('Joe'),
       ('Jane'),
       ('Jack'),
       ('Thomas');
       
--Таблица salary

--Создать таблицу salary
-- - id. Serial  primary key,
-- - monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками:
--- 1000
--- 1100
--- 1200
--- 1300
--- 1400
--- 1500
--- 1600
--- 1700
--- 1800
--- 1900
--- 2000
--- 2100
--- 2200
--- 2300
--- 2400
--- 2500
      
create table salary (
	id serial primary key,
	monthly_salary int not null
);
      
insert into salary (monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);
	  

--Таблица employee_salary

--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id

create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

insert into employee_salary (employee_id, salary_id)
values (2, 8),
       (5, 2),
       (1, 16),
       (34, 4),
       (27, 10),
       (19, 7),
       (60, 11),
       (51, 12),
       (7, 3),
       (9, 13),
       (44, 15),
       (17, 4),
       (69, 6),
       (55, 3),
       (14, 8),
       (15, 9),
       (36, 7),
       (18, 14),
       (23, 3),
       (40, 1),
       (48, 16),
       (52, 2),
       (62, 7),
       (29, 9),
       (4, 6),
       (8, 3),
       (22, 10),
       (35, 11),
       (38, 1),
       (41, 8),
       (89, 4),
       (88, 5),
       (87, 9),
       (86, 8),
       (85, 7),
       (84, 2),
       (83, 1),
       (82, 11),
       (81, 10),
       (80, 3);
       

--Таблица roles

--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками:

create table roles (
	id serial primary key,
	role_name int not null unique
);

alter table roles alter column role_name type varchar(30);

insert into roles (role_name) 
values ('Junior Python developer'),
	   ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),
	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales manager'),
	   ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'),
	   ('Senior Automation QA engineer');
	   
--Таблица roles_employee

--Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--Наполнить таблицу roles_employee 40 строками:
	  
create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id) 
		references roles(id)
);

insert into roles_employee (employee_id, role_id)
values (32, 4),
	   (1, 5),
	   (12, 19),
	   (3, 10),
	   (70, 3),
	   (17, 2),
	   (34, 7),
	   (15, 15),
	   (20, 20),
	   (21, 13),
	   (22, 6),
	   (40, 11),
	   (41, 2),
	   (54, 18),
	   (67, 4),
	   (28, 7),
	   (14, 14),
	   (19, 2),
	   (29, 1),
	   (52, 8),
	   (57, 9),
	   (48, 17),
	   (46, 18),
	   (62, 20),
	   (65, 16),
	   (69, 6),
	   (33, 9),
	   (2, 14),
	   (5, 5),
	   (7, 9),
	   (6, 10),
	   (8, 3),
	   (9, 11),
	   (11, 12),
	   (50, 7),
	   (24, 20),
	   (25, 19),
	   (31, 18),
	   (60, 17),
	   (30, 15);
	   	  
	  