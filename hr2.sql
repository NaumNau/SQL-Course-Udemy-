create table locations3 as (select * from locations where 1=2);

select * from locations2;
select * from locations;
select * from locations3;


select * from user_tables;

select to_date(round(sysdate),'DD.MON.YYYY') from dual;
SELECT SYSDATE FROM DUAL;