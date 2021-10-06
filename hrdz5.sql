select first_name from employees
where instr(lower(first_name),'b',1)>0;

select first_name from employees
where instr (first_name,'a',1,2)>1;

select substr (department_name,1,instr(department_name,' ')-1) first_word
from departments
where instr (department_name,' ')>0;

select first_name, substr (first_name,2,length(first_name)-2) new_name
from employees;

select * from 

select first_name 
from employees
where hire_date like '__/__/2008';