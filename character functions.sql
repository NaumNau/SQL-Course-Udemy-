select CONCAT ('privet' , ' drug') from dual;

select SYSDATE FROM DUAL;

SELECT CONCAT (' TODAY IS ', SYSDATE) FROM DUAL;

SELECT CONCAT (initcap('PRIVET'), CONCAT (lower(' MOI'), lower(' DRUG'))) FROM DUAL;


select first_name, length (first_name) dlina from employees;
select length ('Anton Naumov') from dual;
select salary*1000, length (salary*1000), hire_date, length (hire_date) from employees;

select country_name from countries where length(country_name) >8;

select country_name from countries order by length (country_name);



select LPAD ('NAUMOV', 12, 'ANTON') FROM DUAL;
select 'anton naumov' from dual;
select concat ('naumov', ' anton') from dual;


select RPAD ('NAUMOV',10, '#') FROM DUAL;

SELECT RPAD (FIRST_NAME,10 , ' ') || LPAD (SALARY, 25 , ' ' ) FROM EMPLOYEES;

select TRIM (trailing 'q' from 'qantonq') from dual;
select trim (leading 'q' from 'qantonq') from dual;
select trim (both 'q' from 'qqqqantonqqqq') from dual;

select trim ( ' ' from ' anton naumov    ') from dual;
select RPAD(TRIM (' ' FROM ' anton naumov   '), 20, '   ') from dual;
select dummy from dual;

select * from employees where instr (job_id, 'PROG')=4;
SELECT * FROM EMPLOYEES WHERE INSTR (HIRE_DATE, '05') =4;
SELECT * FROM EMPLOYEES WHERE INSTR (SALARY, '2')=2;

SELECT INSTR ('anton Naumov', 'a',1,2) from dual;

select first_name from employees where first_name like 'A%';
