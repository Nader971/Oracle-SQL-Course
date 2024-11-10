/*
LESSON 29
Create Table Using Subquery: We can copy a table with subquery from another table.
  •	Example: CREATE TABLE EMP100 AS (SELECT * FROM employees WHERE department_id = 100);
*/
CREATE TABLE EMP100 AS (SELECT * FROM employees WHERE department_id = 100);