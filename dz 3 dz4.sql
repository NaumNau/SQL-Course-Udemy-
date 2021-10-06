select * from employees
where first_name ='David';

select upper('d')||'avid' from dual;

select * from employees
where job_id=FI_ACCOUNT;
select * from employees;


select * from employees
where department_id = 50 and salary>4000;


select * from employees
where first_name like '_a%a';

select * from employees
where commission_pct is not null and (department_id=50 or department_id=80)
order by email asc;

select * from employees 
where department_id=50;

select * from employees
where first_name like '%n%n%';

select * from employees
where first_name like '_____%' 
order by department_id desc nulls last;

select * from employees
where salary>=3000 and salary <=7000 and commission_pct is null and (job_id = 'PU_CLERK' or job_id= 'ST_MAN' or job_id='ST_CLERK'); 

select * from employees
where first_name like '%\%%' escape '\';

select job_id, first_name, salary from employees
where employee_id >=120 and job_id!='IT_PROG'
order by job_id asc nulls first, first_name desc;

select * from employees
where length (first_name) >10;

select * from employees
where mod (salary, 1000)= 0;

select phone_number, substr(phone_number,1,3)
from employees 
where phone_number like '___.___.____';

SELECT * FROM EMPLOYEES
where length (first_name)>5 and first_name like '%m';

SELECT * FROM EMPLOYEES
where length (first_name)>5 and substr(first_name,-1)='m';


select NEXT_DAY (sysdate,'Пятница') from dual;

SELECT SYSDATE FROM DUAL;
SELECT * FROM SYS.nls_session_parameters;

Select * from employees
where months_between(sysdate,hire_date)>150;

select phone_number, replace (phone_number,'.','-') as new_phone_number from employees;

select upper (first_name), lower (email), initcap (job_id) from employees;

select concat (first_name||' ', salary) as name_and_salary from employees;



select hire_date, round(hire_date,'MM') as round_date, trunc(hire_date, 'YYYY') from employees;



select first_name, instr (first_name,'a',1,2)  from employees
where first_name like ('%a%a%');

select trim(leading '!' from '!!hello world!!') from dual;
select trim(trailing '!' from '!!hello world!!') from dual;
select trim (leading '!' from '!!hello world!!') from dual;

select salary, salary*3.1415, round(salary*3.1415,-1), trunc (salary*3.1415,-1)/1000 from employees;

select hire_date, add_months(hire_date,6), last_day (hire_date) from employees;
