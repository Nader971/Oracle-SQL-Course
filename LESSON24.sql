/*
LESSON 24
Thats code to create a copy of employees table:
CREATE TABLE COPY_EMPLOYEES AS SELECT * FROM EMPLOYEES;

UPLDATE: we use it to update data in table and we have to use WHERE because if we didnt that will update the entire table.

example 1: update copy_employees set department_id = 90;

in example 1 we use it with out WHERE and the entire table updated the department_id to 90.

example 2: update copy_employees set department_id = 90 WHERE employee_id = 113;

update with subquery: We can use subquery to update row.

Example: update copy_employees set salary = (select salary from employees where employee_id = 206), department_id = (select department_id from employees where employee_id = 206) WHERE employee_id = 113;

And we can use null.

example: update copy_employees set salary = null WHERE employee_id = 113;

*/

update copy_employees set salary = null WHERE employee_id = 113;