create table address(
id integer constraint ad_id_un unique,
country varchar2(18),
city varchar2(10));

create table friends(
id integer ,
name VARCHAR2(10),
email varchar2(10),
address_id integer constraint fr_id references address(id) on delete set null,
birthday date,
constraint ch check (id>3)
);

Create unique index in_fr on friends(id);

alter table friends add constraint pri_fri_id primary key(id);

create index fr_email_n on friends(email);

alter table friends modify (email constraint fr_email_nn not null);

drop table friends;

drop table address;

create synonym syn1 for employees;
create public synonym syn1 for employees; 
select * from syn1;
drop public synonym syn1;


select first_name,salary
from employees where employee_id=&id;


select first_name,last_name,salary from employees
where first_name like '%&name1%' and last_name like '%&name%';

define;

create table emp1000 as select first_name,last_name,salary, department_id from employees;

select * from emp1000;
drop table emp1000;

create view v1000 as
select first_name,last_name,salary,department_name,e.city
from emp1000 e join departments d 
on (e.department_id=d.department_id);

alter table emp1000 add (city varchar2(25)); 
alter table emp1000 modify (city default 'moscow');
insert into emp1000 (city) values (select country_name from countries where country_id like upper('uk'));

select country_name from countries where country_id like upper('UK');
drop view v1000;

alter view v1000 compile;

create synonym syn1000 for v1000;
 
select * from syn1000;

drop view v1000;

select * from syn1000;

drop synonym syn1000;

drop table emp1000;

create sequence sq1000
increment by 4
start with 14
maxvalue 200
cycle;

drop sequence sq1000;

alter sequence sq1000
nomaxvalue
nocycle;

insert into employees (employee_id,last_name,email,hire_date,job_id)
values (sq1000.nextval,'Naumov','ANAUMOV', SYSDATE ,'IT_PROG');

insert into employees (employee_id,last_name,email,hire_date,job_id)
values (sq1000.nextval,'Ermolaeva','uermolaeva', SYSDATE ,'IT_PROG');

select sq1000.nextval from dual;

select sq1000.currval from dual;

select first_name,last_name,salary from v1000;

create view emp1 as select * from employees;

select * from v1000;

select * from employees;

describe employees;

commit;


create table test200(
id integer,
name1 varchar2(10),
name2 VARCHAR2(10),
address1 varchar2(10),
address2 varchar2(10));

select * from  test200;

select * from test200
where name1='&&val1' and name2= '&val1'
and address1= '&&val2' and address2='&val2';

update test200 set &col=&val where id=&id_val;
set define off;
define;
set define off;

undefine val2;
undefine val1;

