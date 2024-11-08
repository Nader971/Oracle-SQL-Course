/*
CREATE TABLE employees_copy AS SELECT * from employees
LESSON25
Removing a row from a table: We can delete a row from a table with the syntax DELETE.
  Example: DELETE employees_copy WHERE employee_id = 105;
We can use Subquery with delete: 
  Example: DELETE employees_copy WHERE employee_id = (SELECT employee_id FROM EMPLOYEES WHERE SALARY > 20000);

When we remove where we will delete all the table data and if we did we can use backup to fix it.
  Example: DELETE employees_copy

TRUNCATE: this remove the all table or make a delete but we cant comeback after DDL langauge.
  Example: TRUNCATE employees_copy

*/

DELETE employees_copy WHERE employee_id = (SELECT employee_id FROM EMPLOYEES WHERE SALARY > 20000);