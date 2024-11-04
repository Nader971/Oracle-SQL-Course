/*
LESSON 23
DML : Data Manipulation Language.
•	A DML Statement is executed when you:
o	Add new rows to a table.
o	Modify existing rows in a table.
o	Remove existing rows from a table.
•	A transaction consists of a collection of DML statements that from a logical unit of work.
Adding New row to a Table:
•	INSERT Statement Syntax: Add new row to a table by using INSERT statement 1 row at a time.
o	Example: INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (300, 'IT_NADER', 200, 1700);
•	INSERT rows with null values: we have 2 methods.
o	Implicit method: omit the column from the column list.
?	Example: INSERT INTO departments(department_id, department_name) VALUES (301, 'IT_NADER');
o	Explicit method: Specify the NULL keywords in the VALUES.
?	Example: INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (302, 'IT_NADER', NULL, NULL);
•	INSERT Special and Specific Values: The SYSDATE function records the current date and time.
o	Example 1: INSERT INTO employees(employee_id, last_name, email, hire_date, salary, commission_pct, job_id) VALUES (300, 'Nader', 'nader', SYSDATE, 2000, 0.2, 'IT_PROG');
o	Example 2: INSERT INTO employees(employee_id, last_name, email, hire_date, salary, commission_pct, job_id) VALUES (301, 'Mamdouh', 'nader1', to_date('31/10/2024', 'dd/mm/yyyy'), 2001, 0.2, 'IT_PROG');
•	Creating a Script: Use & substitution in a SQL statement to prompt for values (& is a placeholder for the variable value.).
o	Example 1: INSERT INTO departments(department_id, department_name) VALUES (&D_ID, '&D_Name');
•	Copying Rows from Another Table: Write your INSERT statement with a subquery( you have to match the numbers of columns in the INSERT clause in the subquery).
o	Example 1: INSERT INTO NEW_EMPLOYEES(id, first_name, last_name, salary, commission_pct) SELECT employee_id, first_name, last_name, salary, commission_pct FROM employees WHERE job_id = 'IT_PROG';

*/

INSERT INTO NEW_EMPLOYEES(id, first_name, last_name, salary, commission_pct) SELECT employee_id, first_name, last_name, salary, commission_pct FROM employees WHERE job_id = 'IT_PROG'; 