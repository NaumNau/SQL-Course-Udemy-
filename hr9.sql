
Select regexp_count('ËÀÏËÀÍÄÈß', 'À') from dual;

select substr('anton',level,1) from dual connect by level <=length ('anton');


select length('&&val')-length(replace('&val','&char')) from dual;

UNDEFINE VAL;


create table drivers (
id_driver integer,
name varchar2(10));

create table citydrivers1 (
id_driver integer,
order1 varchar2(10));

insert into citydrivers1 values (&val,'&col');
undefine val;

insert into drivers values (&val,'&col');
undefine val;

select id_driver,count(id) from drivers d right join citydrivers1 o on (d.id_driver=o.id_driver)
group by d.id_driver;

select employee_id, first_name, count(*) from employees group by first_name;
select * from employees limit 1 offset 4;

select * from countries;
select c.region_id, r.region_id from countries c right join regions r on (c.region_id= r.region_id);

select * from regions;


create table A (
ant integer);

create table B (
bant integer);

insert into A (ant) values (&val);

drop table a;

insert into B (bant) values (&val1);
select * from b;


select a.ant, b.bant from a right join b on (a.ant=b.bant);


SELECT * 
FROM   employees
ORDER BY salary
OFFSET 20 ROWS FETCH NEXT 10 ROWS ONLY;

select department_id
from employees
group by department_id
having count(*) <=5;


select first_name from employees 
where first_name = '___';

insert into drivers (id_driver,name) values (&val,'&col');

savepoint safepoint1;
drop table drivers;
rollback safepoint1;