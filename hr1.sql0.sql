SELECT distinct employee_id, first_name FROM employees WHERE first_name NOT LIKE '%[^A-Z]%';

SELECT distinct employee_id, first_name FROM employees WHERE upper(first_name) like '%[A-Z]%';