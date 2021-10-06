
select * from employees where instr (job_id, 'PROG')=4;
SELECT * FROM EMPLOYEES WHERE INSTR (HIRE_DATE, '05') =4;
SELECT * FROM EMPLOYEES WHERE INSTR (SALARY, '2')=2;

SELECT INSTR ('anton Naumov', 'a',1,2) from dual;

select first_name from employees where first_name like 'A%';

select email, substr (email, 2,2) from employees;
select substr ('anton naumov',1,5) from dual;

select substr ('privet kak dela', -9) from dual;

select replace ('privet, kak dela? chto horoshego?', 'o','hjjjjj') from dual;

select replace ('anton naumov', 'a') from dual;

select hire_date,replace( hire_date, '.','\') from employees;