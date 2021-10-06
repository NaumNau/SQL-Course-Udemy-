
select length (123) from dual;

select * from countries;

insert into countries values ('ZZ','10',1);

select add_months ('05/jun_09',3) from dual;

select next_day('20-sep-09',3) from dual;

select next_day('20-sep-09','wed')from dual;

select to_char (1) from dual;


select to_char (181188, '00999999')as char1 from dual;

select first_name,salary*1.111, to_char (salary*1.111,'L999,999.99'),
to_char (salary*1.111,'L9999,9')
from employees;

select to_char (sysdate,'Month') from dual;

select to_char (hire_date,'Month') as one from employees;

select * from employees where hire_date > to_date ('01-jan-05','dd-Mon-RR');


SELECT TO_CHAR (TO_DATE('29-SEP-19 15:16:17', 'dd-Mon-RR hh24:mi:ss'),'dd\mm\
YYYY hh24:mi:ss') from dual;

SELECT to_char (to_date ('15\11%1987', 'dd/mm/yyyy'),'yyyy-mm-dd') from dual;

select to_number ('$33444.24','$99999.99') from dual;
select to_number ('<4555.77>', '9999.99pr') from dual;

select first_name, Length (first_name), round (123.345232323, length(first_name)) from employees;

select first_name, Length (first_name), round (123.345232323, length(first_name)) from employees;



select first_name, substr (first_name, -3) from employees;

select NVL (18,null) from dual;
select commission_pct from employees
order by commission_pct asc nulls last;


select first_name, NVL(commission_pct, to_number('1345.13','9999.99')) from employees;

select first_name,NVL(SUBSTR(first_name,6), 'name is too short') from employees;

select first_name, commission_pct, NVL (salary*commission_pct,500) bonus
from employees
order by commission_pct nulls last;


select first_name, NVL2(commission_pct,commission_pct,0)kak from employees
order by kak desc;


select commission_pct*nullif (6,length (first_name)) lol from employees
order by lol asc nulls last;
select nullif('18-sep-87','18/sep/87') from dual;

select nullif (18,to_number ('18','99')) from dual;

select country_id, country_name,
NVL2 (NULLIF(country_id,upper (substr(country_name,1,2))),'Sovpadeniya net','Sovpadenie naydeno') sravnenie
from countries;

select coalesce ('1',null,'ok') from dual;

select coalesce (commission_pct,manager_id,salary) from employees;


desc hr.regions