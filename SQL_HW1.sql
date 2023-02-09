/*Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
Наполнить таблицу employee 70 строками.*/

create table employees (
	id serial primary key not null,
	employee_name varchar(50) not null 
);
insert into employees(employee_name) 
values ('Reggie Batey'), 
('Clara Poore'), 
('Tammy Galindo'), 
('Rickey Jones'), 
('Jill Anspach'), 
('Lacy Racicot'), 
('David Macias'), 
('Jessica Manns'), 
('Amber Holcomb'), 
('Betty Wells'), 
('Miguel Fletcher'), 
('Joseph Hodges'), 
('Ida Bohannon'), 
('Cindy Merrifield'), 
('Mary Dowell'), 
('Marie Thomas'), 
('Donald Fierro'), 
('Anna Wick'), 
('Robert Harian'), 
('Michael Mark'), 
('Lucius Patterson'), 
('Lorna Rose'), 
('Karen Santiago'), 
('Peggy Beachler'), 
('Chester Baird'), 
('Ronda Colley'), 
('Robert Chapman'), 
('Sandra Hibbard'), 
('Steven Pagano'), 
('Ramona Russell'), 
('Ryan Morgan'), 
('Shannon Daugherty'), 
('Charlene Little'), 
('Steve Lewandowski'), 
('Donnie Shoemaker'), 
('Veronica Treto'), 
('Jonathon Belanger'), 
('William Hughes'), 
('Courtney Alston'), 
('Isaac Walters'), 
('Leon Ashcraft'), 
('Daniel Patterson'), 
('Randall Phillips'), 
('James Williams'), 
('Nancy Searles'), 
('Edward Hilliard'), 
('Joel Vandevelde'), 
('Nancy Bravo'), 
('Jesse Clark'), 
('Gregory Magelssen'), 
('Ella Cortez'), 
('Michael Diaz'), 
('Robert Walsh'), 
('Valorie Seibert'), 
('Yoshiko Miller'), 
('Timothy Johnson'), 
('Lita Webb'), 
('Lindsay Barrera'), 
('Jacqulyn Matthews'), 
('Lee Rehart'), 
('Fred Spencer'), 
('Melinda Webster'), 
('Shawn Pretti'), 
('Betty Schaefer'), 
('Barbara Teets'), 
('Patricia Tomas'), 
('Mattie Kelley'), 
('Mary Yates'), 
('Andrea Croes'), 
('Amanda Riley');
select * from employees;

/*Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
Наполнить таблицу salary 15 строками*/

create table salary (
		id serial primary key not null,
		monthly_salary int not null
);
insert into salary(monthly_salary) 
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
select * from salary;

/*Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id*/

create table employee_salary (
	id serial primary key not null,
	employee_id int not null unique,
	salary_id int not null
);
insert into employee_salary (employee_id,salary_id) 
values (3,7),
		(1,4),
		(5,9),
		(40,13),
		(23,4),
		(11,2),
		(52,10),
		(15,13),
		(26,4),
		(16,1),
		(12,7),
		(71,15),
		(72,16),
		(73,10),
		(74,11),
		(75,12),
		(76,7),
		(77,8),
		(78,9),
		(79,10),
		(80,14),
		(35,15),
		(36,7),
		(37,8),
		(38,9),
		(10,12),
		(2,13),
		(17,15),
		(18,14),
		(34,10),
		(65,7),
		(66,10),
		(24,12),
		(25,13),
		(42,11),
		(43,10),
		(44,8),
		(19,6),
		(4,8),
		(6,1);
select * from employee_salary;

/*Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
Поменять тип столба role_name с int на varchar(30)
Наполнить таблицу roles 20 строками*/

create table roles (
	id serial primary key not null,
	role_name int not null unique
);
alter table roles alter column role_name  type varchar(30);
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
select role_name from roles ;

/*Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками*/

create table roles_employee (
		id serial primary key not null,
		employee_id int not null unique,
		role_id Int not null,
		foreign key (employee_id)
		references employees(id),
		foreign key (role_id)
		references roles(id)
	);
insert into roles_employee(employee_id,role_id) 
values (7,2),
		(20,4),
		(3,9),
		(5,13),
		(23,4),
		(11,2),
		(4,9),
		(22,13),
		(21,3),
		(34,4),
		(1,7),
		(8,15),
		(9,16),
		(6,10),
		(24,11),
		(25,12),
		(26,7),
		(27,8),
		(28,9),
		(29,10),
		(30,14),
		(31,15),
		(32,7),
		(33,8),
		(35,9),
		(36,12),
		(37,13),
		(38,15),
		(39,14),
		(40,10),
		(19,7),
		(18,10),
		(17,12),
		(16,13),
		(15,11),
		(14,10),
		(13,8),
		(12,6),
		(2,8),
		(10,1);

