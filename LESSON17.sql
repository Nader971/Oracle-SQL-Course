/*
BROUP BY: You can divide rows in a table into smaller groups by using the GROUB BY  clause
  Example: SELECT department_id, job_id, commission_pct, count(*) FROM employees
  WHERE department_id = 50
  GROUP BY department_id, job_id, commission_pct
  order by 2;

HAVING: we useing like order by but with GROUP BY.
  Example: SELECT department_id, job_id, commission_pct, count(*) FROM employees
  WHERE department_id = 50
  GROUP BY department_id, job_id, commission_pct
  HAVING count(*) > 5
  order by 2;
  
NESTING GROUP FUNCTIONS: we can use nesting with GROUP FUNCTIONS
  Example: SELECT MAX(avg(salary)) FROM employees GROUP BY salary;
*/


SELECT MAX(avg(salary)) from employees
GROUP BY department_id;

