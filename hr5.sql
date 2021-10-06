select rowid from employees where employee_id=100;

select * from employees where rowid='AAAR6dAAEAAALBcAAA';

select rowid employee_id, rowid first_name from employees where employee_id=100;

create index in1 on students(id);

select * from students;

insert into students (id,email,name) values (1,'Misha',1);

update students set id=2 where name = 'Misha'; 

alter table students modify (id unique);

alter table students modify (faculty_id not null);

update students set faculty_id='CS' where name = 'Misha'; 

describe students;


create index in1 on students (id);

drop table students;


create table students (
id integer constraint un_id unique,
name varchar(8),
email varchar(8) not null
);

create table students (
id integer,
name varchar(8),
email varchar(8) not null
);

insert into students (id,email,name) values (2,1,1);
select * from students;

create index in1 on students(name);
alter table students modify(id check (id>0));
alter table students drop constraint ch;

show create table students?
select * from v$version;

drop table students;
create bitmap index b_ind1 on students (id);