# Oracle-SQL-Course
YouTube Oracle SQL Developer Course
Lessons Notes
Lesson 5

Column Aliases: -   we used to Renames a column heading

Example 1: select first_name as name from employees;

Example 2: select first_name "First Name" from employees;

---------------------------------------------------------------------------------------------------------
Lesson 6
Concatenation Operator: -  

•	Links columns or character strings to other columns.

•	Is represented by two vertical bars (||).

•	Creates a resultant column that is a character expression.

Example 1: select last_name||job_id as "Employees" from employees;

Example 2: select last_name||' '||job_id as "Employees" from employees;

Alternative Quote (q) Operator: 

•	Specify your own quotation mark delimiter.

•	Select any delimiter.

•	Increase readability and usability.

Example: select last_name||q'( job's id is: )'||job_id as "Employees" from employees;

Duplicate Rows: removes duplicates from the table.

Example: select distinct DEPARTMENT_ID from employees;

Describe: describe the created tables.

Example: desc employees;

---------------------------------------------------------------------------------------------------------

Lesson 7

Restricting & Sorting data: using where to restrict or sort the data

Example: SELECT employee_id, last_name, job_id, department_id, salary, hire_date
FROM employees
WHERE hire_date = '17-feb-04';
Comparison Operator: =, >, >=, <, <=, <>, BETWEEN…...AND…., IN (SET, SET2), LIKE, IS NULL.

Logical Operator: 

•	AND: Return true if both are true

•	OR: Return true if either is true

•	NOT: Return true if false

---------------------------------------------------------------------------------------------------------

