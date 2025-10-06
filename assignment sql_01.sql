create database employee;
use employee;
create table Department(department_id int,depatment_name varchar(100));
create table location(location_id int,location varchar(30));
create table employees(employee_id int,employee_name varchar(50),
gender enum('m','f'),age int,hire_date date,designation varchar(100),
salary decimal(10.2));
select * from employees;
alter table employees add email varchar(50);
alter table employees modify column designation varchar(150);
alter table employees drop column age;
alter table employees rename column hire_date to date_of_joining; 
alter table Department rename to Departments_info;
alter table location rename to locations;
truncate table employees;
drop table employees;
drop database employee;
create database employee;
 use employee;
 create table department(department_id int not null unique,department_name varchar(100) not null unique,
 primary key (department_id));
create table location(location_id int auto_increment not null unique,location varchar(30),
primary key(location_id));
create table employees(employee_id int not null unique,employee_name varchar(50) not null,
gender enum('m','f'),age int check(age>=18),hire_date date default (current_timestamp),desigination
varchar(100),salary decimal(10.2),primary key(employee_id),department_id int,location_id int,
foreign key(department_id) references department(department_id),
foreign key(location_id) references location(location_id));


