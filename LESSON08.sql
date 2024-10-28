/*
Lesson 8
Order By: its always in the last line of the code, we can us any order can be in the table with ASC & DESC and we can use 2 order and use one DESC and one ASC.
Example: SELECT first_name, last_name, employee_id, hire_date
FROM employees
ORDER BY hire_date, first_name desc;
*/

SELECT first_name, last_name, employee_id, hire_date
FROM employees
ORDER BY hire_date, first_name desc;