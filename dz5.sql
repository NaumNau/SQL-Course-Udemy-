
select * from employees;
select first_name, phone_number, salary from employees
where phone_number like '%.%.%'
order by salary;




select max(salary), min(salary), max(hire_date),min(hire_date),count(*) 
from employees
order by count(*) asc;


select first_name from employees
where length(first_name)>=(select max(length(first_name))from employees);

select first_name,salary zp from employees
where salary > (select avg(salary)from employees)
order by salary desc;

select city,sum(salary)
from employees e
Join departments d on (e.department_id=d.department_id)
Join locations l on (d.location_id=l.location_id)
group by city
having sum(salary)=
(select min(sum(salary))
from employees e JOIN departments d ON (e.department_id=d.department_id)
Join Locations l On (d.location_id=l.location_id)
group by city);


select emp1.first_name, emp1.last_name, emp1.hire_date,emp1.manager_id, emp2.first_name manager_name
from employees emp1
Join employees emp2 ON (emp1.manager_id= emp2.employee_id);


select emp1.first_name, emp1.last_name,emp2.first_name
from employees emp1
Join employees emp2 ON (emp1.manager_id= emp2.employee_id);

select emp2.first_name, count(emp1.employee_id)
from employees emp1
join employees emp2 on (emp1.manager_id=emp2.employee_id)
group by emp2.first_name
order by count( emp1.employee_id) desc;

select * from employees e
where manager_id IN (select employee_id from employees where salary>15000);

select * from departments 
where department_id NOT IN (SELECT distinct department_id from employees 
where department_id is not null);

select * from employees;

select * from employees
where employee_id not in (select distinct manager_id from employees
where manager_id is not null);

select * from employees e 
where (select count(*) from employees 
where manager_id =e.employee_id)>6;

select * from employees
where department_id in (select department_id from departments
where department_name='IT');

select * from employees 
where manager_id IN (select employee_id from emp loyees
where to_char(hire_date, 'YYYY')=2005)
and to_char(hire_date, 'YYYY')<2005;

Select * from employees e
where manager_id in( select employee_id from employees
where to_char( hire_date,'MM')='01')
and (select length(job_title) from jobs where job_id=e.job_id)>15;


select manager_id,to_char(null)job_id,to_number(null) department_id, sum(salary)
from employees
group by manager_id
union
select to_number(null), job_id,to_number(null),sum(salary)
from employees
group by job_id
union
select to_number(null),to_char(null),department_id,sum(salary)
from employees 
group by department_id;


select department_id
from employees
where manager_id=100
minus
select department_id 
from employees 
where manager_id in(145,201);


select first_name,last_name,salary from employees
where first_name like '_a%'
intersect
select first_name,last_name,salary from employees
where lower(last_name) like '%s%'
order by salary desc;



select location_id,postal_code, city from locations
where country_id = any (select country_id from countries where country_name='Germany' or country_name = 'Italy')
union all
select location_id, postal_code, city from locations
where postal_code like '%9%';

select * from regions;


select country_id id,country_name country, region_id
from countries
where length(country_name)>8
Union 
select country_id,country_name,region_id
from countries
where region_id not in (select region_id from regions where region_name = 'Europe')
order by country desc;


select * from countries;


describe employees;