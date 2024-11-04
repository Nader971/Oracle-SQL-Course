/*
leLESSON 21

Multiple-row subqueries: when we need to use multiple row to used.
  •	ANY : SELECT employee_id, last_name, job_id, salary FROM employees WHERE salary < ANY (SELECT salary FROM employees WHERE job_id = 'IT_PROG') AND job_id <> 'IT_PROG';
  •	ALL :SELECT employee_id, last_name, job_id, salary FROM employees WHERE salary < ALL (SELECT salary FROM employees WHERE job_id = 'IT_PROG') AND job_id <> 'IT_PROG';
  •	IN : SELECT employee_id, last_name, job_id, salary FROM employees WHERE salary IN OR ANY (SELECT salary FROM employees WHERE job_id = 'IT_PROG') AND job_id <> 'IT_PROG';
  •	NULL VALUES : will always get 0 rows if we have null;
    o	Example: SELECT emp.last_name FROM employees emp WHERE emp.employee_id NOT IN (SELECT mgr.manager_id FROM employees mgr);




*/

SELECT emp.last_name FROM employees emp WHERE emp.employee_id NOT IN (SELECT mgr.manager_id FROM employees mgr);

