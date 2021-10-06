select d.department_name, d.department_id, e.first_name
from departments d left join employees e ON (e.department_id = d.department_id)
where first_name is null;
null
select d.department_name, department_id, e.first_name
from departments d left join employees e using (department_id)
where first_name is null;

select country_name, city,street_address
from locations l RIGHT Outer join countries c On (l.country_id=c.country_id);

select NVL(first_name,'no employee'), NVL (last_name, 'no employee'),
NVL (salary,0), NVL (department_name, 'no department')
from employees e FULL outer join departments d 
ON (e.department_id=d.department_id);

select first_name, last_name,salary,
case
when salary>=2000 then first_name
else '!!!'
end 
from employees;

select * from countries
cross join regions
where countries.region_id>=2
order by country_id;


select * from countries, regions
where countries.region_id>=2
order by country_id;

select first_name,last_name,salary,e.department_id,department_name
from employees e, departments d
where e. department_id=d.department_id;


select first_name, last_name, salary, e.department_id,department_name
from employees e, departments d;


select first_name, last_name, salary, e.department_id,department_name
from employees e, departments d
where e.department_id=d.department_id;