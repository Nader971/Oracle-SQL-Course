/*
Lesson 9
Substitution Variables: We used to make a input pop up for user to search about what he needs, and we can use define Variables to define the variables in the first of the code and make it usable.

Example:  define col1 = salary
SELECT first_name, last_name, employee_id, hire_date, &col1
FROM employees
WHERE &col1 > 12000
ORDER BY &col1;
undefine col1

*/

define col1 = salary
SELECT first_name, last_name, employee_id, hire_date, &col1
FROM employees
WHERE &col1 > 12000
ORDER BY &col1;
undefine col1
