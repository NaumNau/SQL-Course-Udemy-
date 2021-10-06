select max(salary),department_id, min(salary), max(hire_date), min(hire_date), count(*)
from employees
group by department_id
order by count(*)asc;

select substr(first_name,1,1) first_char, count(*)
from employees
group by substr(first_name,1,1)
having count (*)>1
order by count(*) desc;

select department_id, salary, count(*) from employees
group by department_id,salary;

select to_char(hire_date,'Day'),count(*)
from employees
group by to_char(hire_date,'Day');

select department_id
from employees
group by department_id
having count(*)>30 and sum (salary)>300000;

select region_id
from countries
group by region_id
having sum(length(country_name))>50;

select job_id,round(avg(salary))
from employees
group by job_id;

select department_id
from employees
group by department_id
having count(distinct job_id)>1;

select department_id,job_id,max(salary), min(salary)
from employees
group by department_id, job_id
having avg(salary)>10000;

select manager_id
from employees
where commission_pct is NULL
group by manager_id
having avg(salary) between 6000 and 9000;

select round(max(avg(salary)),-3)
from employees
group by department_id;


select * from employees
natural join countries;

select * from employees;
select * from countries;

select c.country_name,c.country_id, r.region_name, region_id
from regions r Natural join countries c where r. region_name= 'Europe';


select first_name, last_name, jh.job_id,start_date,end_date
from employees join job_history jh using (employee_id, department_id);

select * from employees;

select * from employees
where first_name like 'H%';

select * from departments;

select first_name, department_name, employees.employee_id,departments.manager_id
from employees
JOIN departments ON (employees.employee_id = departments.manager_id);

select department_name,min(salary),max(salary)
from employees e JOIN departments d ON (e.department_id=d.department_id)
group by department_name
order by department_name desc;

select first_name, last_name,jh.job_id,start_date, end_date,department_name
from employees e JOIN job_history jh ON (e.employee_id=jh.employee_id)
JOIN departments d ON (jh.department_id=d.department_id);

select first_name, salary, min_salary, max_salary
from employees e JOIN jobs j ON ( e.job_id=j.job_id and salary between max_salary/2 and max_salary and length(first_name)>5);

select emp1.employee_id, emp1.first_name, emp1.last_name manager_name from employees emp1 join employees emp2
ON (emp1.manager_id=emp2.employee_id);

select emp2.first_name manager_name, count(*)
from employees emp1 JOIN employees emp2 ON (emp1.manager_id = emp2.employee_id)
group by emp2.first_name
order by count(*) desc;