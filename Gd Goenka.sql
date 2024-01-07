create database Gd_goenka_university;
use Gd_goenka_university;

create table department(
id int primary key,
name varchar(20)
);

insert into department 
values 
(101,"english"),
(102,"information technology");

select * from department;

update department
set id = 103
where id = 102; 

update department 
set id = 111
where id = 101;

select * from department;

create table teacher(
id int primary key,
name varchar(50),
department_id int ,
foreign key (department_id) references department(id) 
on update cascade 
on delete cascade
);

insert into teacher 
values 
(101,"Adam",101),
(102,"Eve",102);

select * from teacher;

/* add column in any table */

alter table teacher
add column age int;

/* drop any column from database */ 

alter table teacher
drop column age;

select * from teacher;

/* change the name of any table name */

alter table teacher 
rename to teacher_h;

select * from teacher_h;

alter table name
rename to teacher;

select * from teacher;

/* change column name old to new */

alter table teacher 
change name NAAM int;

select * from teacher;

/*  modify column rename */

alter table teacher 
modify naam varchar(100);

select * from teacher;


insert into teacher(naam)
values 
("Adam");


/* add column with default values */

alter table teacher
add column age int not null default 23;

select * from teacher;

alter table teacher
modify column age varchar(2);

insert into teacher 
(id,naam,age)
values
(103,"salem",90);

select * from teacher;
alter table teacher 
change age teacher_age int;
/* change the name of teacher table to teacher_table */
alter table teacher 
rename to teacher_table;

select * from teacher_table;




























 


