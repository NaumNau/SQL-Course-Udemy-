select first_name, last_name 
from employees;

select salary*2+employee_id from employees;
select commission_pct, commission_pct*2 from employees;

select *from job_history;
select start_date, end_date, end_date-start_date+1 from job_history;
select start_date, start_date+1 from job_history;
select *from employees;
select first_name,last_name, first_name||' '||last_name
from employees;
select first_name||' '||last_name||' '||salary
from employees;

select 'My name is '|| first_name||' My second_name is '||first_name name
from employees;

select start_date,end_date, (end_date-start_date)+1 "count of days"
from job_history;

select 'abc'||'xyz'||(90*30) from employees;

DUAL

select * from dual;

desc dual;

select 'abc'||'xyz'||(90*30)as result from dual;

select 'hello, world!' as greetings from dual;

select department_name, q'<It's assigned manager ID: >', manager_id from departments;

DZ 2

select * from regions;

select * from employees;
select end_date, end_date-7 as one_week_before from job_history; 

select * from jobs;
select distinct * from employees;
select job_title, 'min= '|| min_salary||' max= ' || max_salary as info, max_salary*2-2000 as new_salary
from jobs;
select 'peter''s dog is very clever' from dual;
select q'[peter's dog is very clever]' from dual;
select 100*365*24*60 from dual;