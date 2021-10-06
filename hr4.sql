create table students (
id number,
course number,
name varchar2(15),
faculty_id integer,
avg_score number(5,2),
start_date date,
scholarship integer Default 15000,
CONSTRAINT st_id_unique Unique(id,name));


select * from students;

drop table students;

insert into students (id, course,name,avg_score,start_date) values (1,1,'Anton',5.3,sysdate);

alter table students add (sex char default 'm');

alter table students add (level1 integer default 1);

alter table students modify (faculty_id varchar2(20));

select * from students for update;

update students set faculty_id='Mechanics'
where name ='Anton';
commit;
savepoint savepoint1;
rollback to savepoint1;

delete students;

rollback to savepoint1;
select * from students;

create table schoolboys (
id_schoolboy integer,
name varchar2(15),
years integer,
tuitor varchar2(20),
constraint st_id_number Unique (id_schoolboy,name));

create table students3(
id integer constraint st_id_number1 unique,
name varchar(15),
person varchar2(15),
howold integer);


drop table students3;
select * from students3;
insert into students3 (id,name,person,howold) values (2,'anton','marina','24');

insert into schoolboys (id_schoolboy,name,tuitor,years) (select id,name,person,howold from students3 where id=2);


select * from schoolboys;

alter table schoolboys modify(id_schoolboy default 3);


create table st(
id integer unique,
name1 varchar2(18) primary key
);


select * from st;

insert into st values (null,'anton');
insert into st values (1,null);

select e.* from employees e;


commit;