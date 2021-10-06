Insert into employees (employee_id,last_name,email,hire_date,job_id)
values (211,initcap('naumov'),Upper('naumov'), to_date('26-08-2021','DD-MON-YYYY'),Upper('it_prog'));

Insert into employees (employee_id,last_name,email,hire_date,job_id)
values (211,initcap('naumov'),Upper('naumov'), to_date('26-08-2021','DD-MON-YYYY'),Upper('it_prog'));

describe hr.employees

create table new_emps2
(
emp_id int,
name varchar2 (20),
start_date date,
job varchar2 (10));

insert into new_emps1 (emp_id,name,start_date,job) (select employee_id,first_name,hire_date,job_id from employees);

select * from new_emps2;

describe new_emps1;

create table new_emps1
(
emp_id integer,
name varchar2 (20),
start_date date,
job varchar2 (10));


SELECT * FROM EMPLOYEES;
update employees set salary=
(Select avg(salary) from employees
where department_id iN (select department_id from departments where location_id In
(select location_id from locations where country_id In
(select country_id from countries where region_id=
(select region_id from regions where region_name ='Americas')))))
where employee_id=100;

Select NVL(avg(salary),10000) from employees
where department_id IN (select department_id from departments where location_id IN
(select location_id from locations where country_id IN
(select country_id from countries where region_id=
(select region_id from regions where region_name LIKE Initcap('am%')))))
order by salary desc;


select location_id from locations where country_id IN
(select country_id from countries where region_id=
(select region_id from regions where region_name = 'Asia'));

select * from locations;
select * from countries;
select * from regions;

delete from new_emps1;

select * from new_emps1;

insert into new_emps1 (select employee_id,first_name,hire_date,job_id from employees);

delete from new_emps1
where start_date > to_date('17-06-2002','DD.MM.YYYY');

select * from new_emps1;


delete from new_emps1 where name = 'Steven' or name ='Neena';

commit;

insert into new_emps1 (name,job) values (Initcap('anton'),Upper('IB_eng'));

update new_emps1 set start_date=to_date(sysdate) where job=upper('ib_eng');

commit;

delete from new_emps1 where name = 'Anton';

rollback;


select extract(Day from hire_date) from employees;