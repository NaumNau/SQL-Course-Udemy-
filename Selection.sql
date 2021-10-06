
select * from employees;
select first_name, last_name,salary
from employees
where salary>=17000;

select first_name, last_name,salary
from employees
where last_name='King';

select * from departments where manager_id = null;

select * from employees where employee_id = manager_id +1000/10+1;
select * from job_history where job_id ='ST_CLERK';

select * from employees where first_name= last_name ||'ov';

select * from employees
where 'Dr '||first_name||' '|| last_name= 'Dr David Austin';

select * from employees
where 'Dr David Austin'='Dr '||first_name||' '|| last_name;

select * from employees
where last_name!='King';

select * from job_history where start_date< '01.01.05';

select first_name, last_name, salary from employees
where salary between employee_id and 10000;

select first_name, last_name, salary from employees
where salary between 4000 and 10000;

select * from employees
where last_name between 'A' and 'B';

select * from employees
where salary>=4000 and salary<=10000;

select * from departments
where location_id in (1700, 2400, 1800);

select * from departments 
where LOCATION_ID = 1700 or LOCATION_ID =2400 or Location_ID=1400;

select * from employees
where commission_pct is null; 

select * from employees where first_name like 'S%';

select * from employees where first_name like 'A%r';

select * from employees where first_name like 'Steven';

select * from employees where first_name like 'D_n';

select * from employees where first_name like '__c%';

select * from employees where job_id like 'ST\_%' escape '\';

select * from employees where job_id like 'ST#_%' escape '#';



select *from employees
where first_name like 'D%' or salary>10000;

select * from employees
where salary<10000 and salary>5000;

select * from employees where NOT (job_id='SA_MAN');

Select * from employees where last_name NOT like 'K%';

Select * from employees where job_id not in ('ST_MAN', 'ST_CLERK');

select * from employees where salary not between 5000 and 10000;

select* from employees where commission_pct is not null;

select * from employees
where first_name like '__n%' and commission_pct is null
or
first_name like 'A%' and job_id ='SA_REP';

select * from employees
where (first_name like '__n%' and commission_pct is null)
or
(first_name like 'A%' and job_id ='SA_REP');

select first_name, last_name, salary, department_id, job_id,commission_pct
from employees
where last_name like '%i%' and salary>employee_id*50
or
job_id in ('IT_PROG', 'PU_CLERK') and commission_pct is null;

select first_name, salary from employees order by salary;

select first_name, salary, job_id
from employees
order by salary asc;

select first_name,salary,job_id
from employees
order by job_id desc;

select first_name, hire_date, salary, salary*2+hire_date jopa
from employees
order by jopa;

select * from employees
order by commission_pct desc nulls last;

select * from employees
order by commission_pct asc nulls first;

select job_id, first_name, last_name, salary, hire_date
from employees
order by job_id desc, last_name, 4 desc;





select * from employees
where first_name like 'David';

select * from employees
where job_id = 'FI_ACCOUNT';

select first_name, last_name, salary, department_id from employees
where department_id=50 and salary>5000;

select first_name, last_name, salary, department_id from employees
where department_id in (20,30);

select first_name, last_name, salary from employees
where first_name like '_a%a';

select * from employees
where department_id in (50,80) and commission_pct is not null
order by email asc;

select * from employees 
where first_name like '%a%a%';

select * from employees
where first_name like '___%'
order by department_id desc nulls last;

select * from employees
where SALARY> 3000 AND SALARY<7000 and commission_pct is null and job_id in ('PU_CLERK','ST_MAN','ST_CLERK');

select * from employees
where first_name like ('%\%%') escape '\';

SELECT JOB_ID, FIRST_NAME, SALARY,  employee_id 
from employees
where employee_id>=120 and job_id!= 'IT_PROG'
ORDER BY JOB_ID ASC, first_name desc;

select first_name, LOWER (first_name)from employees;

select LOWER ('PRIVET,KAK DELA?888') from dual;

select * from employees where lower (first_name)='david';

select * from employees where lower( first_name) like '%en%';

select * from employees where upper (first_name) ='DAVID';

select INITCAP ('dAVID') FROM DUAL;

select *from employees where initcap(first_name)='David';




