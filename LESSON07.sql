/*
Lesson 07
Restricting & Sorting data: using where to restrict or sort the data
Example: SELECT employee_id, last_name, job_id, department_id, salary, hire_date
FROM employees
WHERE hire_date = '17-feb-04';
Comparison Operator: =, >, >=, <, <=, <>, BETWEEN…...AND…., IN (SET, SET2), LIKE, IS NULL
Logical Operator: 
•	AND: Return true if both are true
•	OR: Return true if either is true
•	NOT: Return true if false


Rules of AND & OR: Oracle always take AND first so it’s better to use () to get what actually you need.

Example:  SELECT employee_id, last_name, job_id, department_id, salary, hire_date
from employees
where (job_id = 'SA_REF'
OR job_id = 'AD_PRES')
AND salary > 10000;

*/

SELECT employee_id, last_name, job_id, department_id, salary, hire_date
from employees
where (job_id = 'SA_REF'
OR job_id = 'AD_PRES')
AND salary > 10000;