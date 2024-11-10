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
Lesson 8

Order By: It’s always in the last line of the code. We can us any order that is in the table with ASC & DESC, and we can use two orders, one DESC and one ASC.

Example: SELECT first_name, last_name, employee_id, hire_date
FROM employees
ORDER BY hire_date, first_name desc;

---------------------------------------------------------------------------------------------------------

Lesson 9

Substitution Variables: We used to make an input pop-up for user to search about what he needs, and we can use define Variables to define the variables in the first of the code and make it usable.

Example:  define col1 = salary
SELECT first_name, last_name, employee_id, hire_date, &col1
FROM employees
WHERE &col1 > 12000
ORDER BY &col1;
undefine col1

---------------------------------------------------------------------------------------------------------

Lesson 10
Single Row Functions: 

•	Character

•	Number

•	Data

•	Conversion

•	General

Character: 

•	Case-Conversion Function

•	Character-Manipulation	Function

Case-Conversion Function:

•	LOWER: Change the character from upper to lower letters

•	UPPER: Change the character from lower to upper letters

•	INITCAP: Change the first letter to the upper

Example: SELECT UPPER(first_name) "LAST NAME", LOWER(last_name) "first name", INITCAP(job_id) "Job id"
from employees;

---------------------------------------------------------------------------------------------------------

Lesson 11

Character-Manipulation Function:

•	CONCAT: it's not usable and it’s the same as Concatenation Operation || is more advanced.

o	SELECT first_name||last_name, CONCAT(first_name, last_name) FROM employees;

•	SUBSTR: it’s used to select several letters from a word.

o	select first_name, last_name, job_id FROM employees WHERE SUBSTR(job_id,1,2) = 'SA';

•	LENGTH: It’s used to know the number of the letters in the word.

o	SELECT first_name, last_name, LENGTH(first_name) FROM employees;

•	INSTR: it’s used to know the position number in the word.

o	SELECT first_name, last_name, INSTR(first_name, 'n',1,2) FROM employees;

•	LPAD: It’s used to add letters to the LEFT of the word.

o	SELECT first_name, last_name, LPAD(salary, LENGTH(SALARY)+1, '$') FROM employees;

•	RPAD: It’s used to add letters to the RIGHT of the word.

o	SELECT first_name, last_name, RPAD(salary, LENGTH(SALARY)+1, '$') FROM employees;

•	REPLACE: It’s used to REPLACE letters with other letters.

o	SELECT first_name, last_name, REPLACE(first_name, 'e', 'i') FROM employees;

•	TRIM: It’s used to remove the beginning and end of the word.

o	SELECT TRIM(' ' FROM '        Nader Mamdouh       ') FROM dual;

---------------------------------------------------------------------------------------------
Lesson 12
Number Functions:

•	ROUND: Rounds value to a specified decimal.

o	Example: Select ROUND(63.323,2), ROUND(63.323,0), ROUND(63.323,-1), ROUND(63.323,-2), ROUND(446.323,-3) FROM dual;

•	TRUNC: Truncates value to a specified decimal.

o	Example: Select TRUNC(63.326,2), TRUNC(63.326, 0), TRUNC(93.326,-2) FROM dual;

•	MOD: Returns the remainder of the division.

o	Example: Select MOD(16, 2), MOD(17, 2) FROM dual;

--------------------------------------------------------------------------------------------------

Lesson 13

Oracle DATE: The Oracle Database stores dates in numbers function that we can use in ARITHMETIC ways.

•	format: century, year, month, day, hours, minutes, and seconds. 

•	The default date display format is DD-MON-RR. 

•	SYSDATE: is a function that returns Date and Time from the Database server.

o	Example: SELECT SYSDATE FROM dual;

•	CURRENT_DATE: is a function that returns Date and Time from the client.

o	Example: SELECT CURRENT_DATE FROM dual;

Date-Manipulation Functions:

•	MONTH_BETWEEN: Number of months between two dates.

o	Example: SELECT first_name, hire_date, ROUND(MONTHS_BETWEEN(sysdate, hire_date )/12, 1) FROM employees;

•	ADD_MONTHS: Add calendar months to date.

o	Example: SELECT first_name, hire_date, ADD_MONTHS(hire_date,1) FROM employees;

•	NEXT_DAY: Next day of the date specified.

o	Example: SELECT first_name, sysdate, NEXT_DAY(SYSDATE, 'MON') FROM employees;

•	LAST_DAY: Last day of the month of the date specified.

o	Example: SELECT first_name, hire_date, LAST_DAY(HIRE_DATE) FROM employees;

•	ROUND: Round date.

o	Example: SELECT first_name, hire_date, ROUND(HIRE_DATE, 'MONTH'), ROUND(HIRE_DATE, 'YEAR') FROM employees;

•	TRUNC: Truncate date.

o	Example: SELECT first_name, hire_date, TRUNC(HIRE_DATE, 'MONTH'), TRUNC(HIRE_DATE, 'YEAR') FROM employees;

--------------------------------------------------------------------------------------------------------------------------

LESSON 14

Conversion Function:

Data Type Conversion: -

•	Implicit data type conversion: In expressions, the Oracle Server can automatically convert the following:

o	VARCHAR2 or CHAR to NUMBER or DATE

	Example: SELECT last_name, employee_id FROM employees WHERE employee_id = '200';

Explicit data type conversion: this uses functions to change the data type from number or date to char or the opposite:

![image](https://github.com/user-attachments/assets/5c4fecdb-9f98-42d1-bae3-4bcaee681e99)

 
•	TO_CHAR: Used to change date or number to char.

o	Example1: SELECT hire_date, TO_CHAR(hire_date, 'dd-mm-yyyy') FROM employees;

![image](https://github.com/user-attachments/assets/6c7da96e-7385-4d51-9b09-185d586bd9f7)

![image](https://github.com/user-attachments/assets/51a66ec2-3542-4b0f-b490-98d770d5cc77)
 
o	Example2: SELECT first_name, salary, TO_CHAR(salary, 'L999,999,999.00') FROM employees;

![image](https://github.com/user-attachments/assets/efff017f-0f70-48e8-af93-81e3f5a7d3f7)
 
•	TO_DATE: Convert a character string to a DATE format.

o	Example1: SELECT last_name, hire_date FROM employees WHERE hire_date <= TO_DATE('01/02/2007', 'dd-mm-yyyy');

![image](https://github.com/user-attachments/assets/bb8fc737-ac5e-4e2a-97c2-7ea1c17ca723)
 
•	TO_NUMBER: Convert a character string to a number format.

o	Example1: SELECT TO_NUMBER('01112008903', '99999999999999') FROM dual;

--------------------------------------------------------------------------

LESSON 15

Nesting Functions:

•	Single-Row Function can be nested to any level.

•	Nesting Functions are evaluated from the deepest level to the least deep level.

o	Example: SELECT first_name, UPPER(CONCAT(SUBSTR(first_name, 1, 3), '_MI')) FROM employees;

General Functions: The following functions work with any data type and pertain to using null.

•	NVL: Changing NULL to numbers to use it in mathematics.

o	Example: SELECT first_name, salary, commission_pct, NVL(commission_pct, 1) FROM employees;

•	NVL2: This means if null, give a result and we can make the result be char.

o	Example: SELECT first_name, salary, commission_pct, nvl2(commission_pct, salary*1.1, 0) FROM employees;

•	NULLIF: Compare between 2 values and if == give you null and if \= result value 1.

o	Example: SELECT  length(first_name), length(last_name), NULLIF(length(first_name), length(last_name)) FROM employees;

•	COALESCE: search between values and when you find the first not null value get it.

o	Example: SELECT COALESCE(NULL, NULL, NULL, 1,NULL) FROM dual;

Conditional Expressions:

•	CASE:

o	Example: SELECT last_name, job_id , salary,
    	CASE job_id WHEN 'PU_MAN' THEN 1.15 * salary
              WHEN 'SH_CLERK' THEN 1.3 * salary
              WHEN 'AC_ACCOUNT' THEN 1.4 * salary
              WHEN 'FI_ACCOUNT' THEN 1.51 * salary
              ELSE SALARY * 1.1 END "Annual Salary increase" FROM employees;
              
•	DECODE: 

o	Example: last_name, job_id , salary,
    		DECODE( job_id , 'PU_MAN' , 1.15 * salary
  			, 'SH_CLERK' , 1.3 * salary
 	             		, 'AC_ACCOUNT' , 1.4 * salary
              	, 'FI_ACCOUNT' , 1.51 * salary
              	, SALARY * 1.1) "Annual Salary increase"  FROM employees;
               
-------------------------------------------------------------------------------------------------------------
	
LESSON 16

Group Functions: Used in a group of rows to get the Output and we can use null and distinct.

•	AVG: Get the Average for a group of numbers.

o	Example: SELECT AVG(salary) "Average" FROM employees;

•	COUNT: Count the number of rows in columns.

o	Example: SELECT COUNT(distinct salary) "SUM" FROM employees;

•	MAX: Get the higher number the newest date or the last letter.

o	Example: SELECT MAX(salary), MAX(hire_date), MAX(first_name) "SUM" FROM employees;

•	MIN: Get the smallest number the oldest date or the first letter.

o	Example: SELECT MIN(salary), MIN(hire_date), MIN(first_name) "SUM" FROM employees;

•	SUM: get the sum for a group of numbers.

o	Example: SELECT SUM(salary) "SUM" FROM employees;

•	STDDEV

•	VRINANCE

--------------------------------------------------------

LESSON 17

GROUP BY: You can divide table rows into smaller groups using the GROUP BY  clause.

	Example: SELECT department_id, job_id, commission_pct, count(*) FROM employees
WHERE department_id = 50
GROUP BY department_id, job_id, commission_pct ORDER BY 2;

HAVING: we used likes order by but with GROUP BY.

	Example: SELECT department_id, job_id, commission_pct, count(*) FROM employees
WHERE department_id = 50
GROUP BY department_id, job_id, commission_pct
HAVING count(*) > 5 ORDER BY 2;

NESTING GROUP FUNCTIONS: we can use nesting with GROUP FUNCTIONS

	Example: SELECT MAX(avg(salary)) FROM employees GROUP BY salary;

--------------------------------------------------------------

LESSON 18

Types Of Joins: Joins that are compliant with the SQL: 1999 standard include the following:

	NATRUAL JOINS: Is 1 of the Joins types.

o	NATRUAL JOINS: We Used to join 2 tables with the PK and FK its have to be the same data type

	Example: SELECT department_id, department_name, location_id, city FROM departments d NATURAL JOIN locations;

o	USING: we used it when we needed to join 2 tables with different data types.

	Example: SELECT department_id, department_name, location_id, city FROM  departments d JOIN locations USING (location_id);

o	ON: We used when we needed to join 2 tables with different names.

	Example: SELECT department_id, department_name location_id, city FROM departments d JOIN locations l ON (d.location_id = l.location_id);

o	More than 2 tables: we can use more than 2 tables.

	Example: SELECT e.last_name, d.department_id, department_name, l.location_id, city FROM departments d JOIN locations l ON (d.location_id = l.location_id) JOIN employees e ON d.manager_id =  e.employee_id;

o	WHERE & AND & OR: we can use where, and, or in different tables.

	Example: SELECT e.last_name, d.department_id, department_name, l.location_id, city FROM departments d JOIN locations l ON (d.location_id = l.location_id) JOIN employees e ON d.manager_id = e.employee_id WHERE d.department_id = 70 OR d.department_name = 'IT' AND e.last_name = 'Hunold';

o	SELF JOIN: You can make 2 tables and join each other from the table itself.

	Example: SELECT a.employee_id worker, a.last_name, b.employee_id manager, b.last_name FROM employees a JOIN employees b ON a.manager_id = b.employee_id;

o	None EquiJoins: Retrieving Records with NoneEquiJoins.

	Example: SELECT e.last_name, e.salary, j.grade_level FROM employees e JOIN job_grades j ON e.salary BETWEEN j.lowest_sal AND j.highest_sal;

--------------------------------------------------------------------------------------------------------

LESSON 19

	OUTER JOIN:

o	LEFT OUTER JOIN: shows the NULLS value of the left columns.

	Example: SELECT a.employee_id worker, a.last_name, b.employee_id manager, b.last_name FROM employees a LEFT OUTER JOIN employees b ON a.manager_id = b.employee_id;
    
o	RIGHT OUTER JOIN: shows the NULLS value of the right columns.

	Example: SELECT e.last_name, d.department_id, d.department_name FROM employees e RIGHT OUTER JOIN departments d ON (e.department_id = d.department_id); 

o	FULL OUTER JOIN: shows the NULL value of ALL  columns.

	    Example: SELECT e.last_name, d.department_id, d.department_name FROM employees e FULL OUTER JOIN departments d ON (e.department_id = d.department_id);

	Cartesian Product: All rows in the first table are joined to all rows in the second table, to avoid a Cartesian product, always include a valid join condition.

o	CROSS JOIN: 

	SELECT last_name, department_name FROM employees CROSS JOIN departments;

---------------------------------------------------------------------------------

LESSON 20

Subquery: We can use another select statement to get a specific output for the main statement.

•	we use it in ().

•	It's better to put it in the right code so it can be read easily.

•	We use single-row operators with single-row subqueries and multiple-row operators with multiple-row subqueries.

Example: SELECT last_name, salary FROM employees WHERE salary > (SELECT salary FROM employees WHERE last_name = 'Abel');

Single-row subqueries: Return only one row & use single-row comparison operators.
  
Example: SELECT last_name, salary FROM employees WHERE salary > (SELECT salary FROM employees WHERE last_name = 'Abel') AND salary < (SELECT salary FROM employees WHERE last_name = 'King' and salary > 10000);

•	Group Functions in a Subquery: we can use group functions in and with subqueries.

o	Example: SELECT last_name, salary FROM employees WHERE salary > (SELECT AVG(salary) "Average" FROM employees) AND salary < (SELECT MAX(salary) "MAX" FROM employees);

•	HAVING clause with Subquery:

o	Example: SELECT department_id, min(salary) FROM employees GROUP BY department_id HAVING min(salary) > (SELECT min(salary) "Minimum" FROM employees WHERE department_id =50);

-------------------------------------------------------------------------------------------

LESSON 21

Multiple-row subqueries: when we need to use multiple rows to use.

•	IN : SELECT employee_id, last_name, job_id, salary FROM employees WHERE salary IN OR    = ANY (SELECT salary FROM employees WHERE job_id = 'IT_PROG') AND job_id <> 'IT_PROG';

•	ANY : SELECT employee_id, last_name, job_id, salary FROM employees WHERE salary < ANY (SELECT salary FROM employees WHERE job_id = 'IT_PROG') AND job_id <> 'IT_PROG';

•	ALL : SELECT employee_id, last_name, job_id, salary FROM employees WHERE salary < ALL (SELECT salary FROM employees WHERE job_id = 'IT_PROG') AND job_id <> 'IT_PROG';

•	NULL VALUES: will always get 0 rows if we have null;

o	Example: SELECT emp.last_name FROM employees emp WHERE emp.employee_id NOT IN (SELECT mgr.manager_id FROM employees mgr);

---------------------------------------------------------------
 
LESSON 22

Set Operators: When we need to get the data from 2 tables or the different from this data.

•	UNION ALL: get all data from the 2 tables with the duplicate

o	Example: SELECT employee_id, job_id FROM employees WHERE employee_id = 200 UNION ALL SELECT employee_id, job_id FROM job_history WHERE employee_id = 200;
 
•	UNION: get all data from the 2 tables without the duplicate

o	Example: SELECT employee_id, job_id FROM employees WHERE employee_id = 200 UNION SELECT employee_id, job_id FROM job_history WHERE employee_id = 200;
 
•	INTERSECT: Get the duplicated area from the 2 tables

o	Example: SELECT employee_id, job_id FROM employees WHERE employee_id = 200 INTERSECT SELECT employee_id, job_id FROM job_history WHERE employee_id = 200;
 


•	MINUS: Get the data from the first table that isn’t in the second table” we can say from the example that we can’t the data that didn’t changed”.	

o	Example: SELECT employee_id, job_id FROM employees MINUS SELECT employee_id, job_id FROM job_history;
 
•	MATCHING: This is a rule that we can’t get more info from the first table without matching the output from the second table.

o	Example: SELECT employee_id, job_id, salary, 'current' FROM employees UNION SELECT employee_id, job_id, 0, to_char(end_date, 'dd/mm/yyyy') FROM job_history;  

----------------------------------------------------------

LESSON 23

DML: Data Manipulation Language.

•	A DML Statement is executed when you:

o	Add new rows to a table.

o	Modify existing rows in a table.

o	Remove existing rows from a table.

•	A transaction consists of a collection of DML statements from a logical unit of work.

Adding New row to a Table:

•	INSERT Statement Syntax: Add a new row to a table by using INSERT statement 1 row at a time.

o	Example: INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (300, 'IT_NADER', 200, 1700);

•	INSERT rows with null values: we have 2 methods.

o	Implicit method: omit the column from the column list.

	Example: INSERT INTO departments(department_id, department_name) VALUES (301, 'IT_NADER');

o	Explicit method: Specify the NULL keywords in the VALUES.

	Example: INSERT INTO departments(department_id, department_name, manager_id, location_id) VALUES (302, 'IT_NADER', NULL, NULL);

•	INSERT Special and Specific Values: The SYSDATE function records the current date and time.

o	Example 1: INSERT INTO employees(employee_id, last_name, email, hire_date, salary, commission_pct, job_id) VALUES (300, 'Nader', 'nader', SYSDATE, 2000, 0.2, 'IT_PROG');

o	Example 2: INSERT INTO employees(employee_id, last_name, email, hire_date, salary, commission_pct, job_id) VALUES (301, 'Mamdouh', 'nader1', to_date('31/10/2024', 'dd/mm/yyyy'), 2001, 0.2, 'IT_PROG');

•	Creating a Script: Use & substitution in a SQL statement to prompt for values (& is a placeholder for the variable value.).

o	Example 1: INSERT INTO departments(department_id, department_name) VALUES (&D_ID, '&D_Name');
----------------------------------
LESSON 24

That code to create a copy of the Employees table:

CREATE TABLE COPY_EMPLOYEES AS SELECT * FROM EMPLOYEES;

UPDATE: we use it to update data in the table and we have to use WHERE because if we don’t that will update the entire table.

•	Example 1: update copy_employees set department_id = 90;

o	in example 1 we use it without WHERE and the entire table updated the department_id to 90.

•	Example 2: update copy_employees set department_id = 90 WHERE employee_id = 113;

UPDATE with subquery: We can use a subquery to update the row.

•	Example: update copy_employees set salary = (select salary from employees where employee_id = 206), department_id = (select department_id from employees where employee_id = 206) WHERE employee_id = 113;

And we can use null.

•	Example: update copy_employees set salary = null WHERE employee_id = 113;

---------------------------------------

LESSON 25

Note: CREATE TABLE employees_copy AS SELECT * from employees

Removing a row from a table: We can delete a row with the syntax DELETE.

•	Example: DELETE employees_copy WHERE employee_id = 105;

We can use Subquery with delete: 

•	Example: DELETE employees_copy WHERE employee_id = (SELECT employee_id FROM EMPLOYEES WHERE SALARY > 20000);

When we remove WHERE, we will delete all the table data; if we do, we can use ROLLBACK to fix it.

  Example: DELETE employees_copy; ROLLBACK;
  
TRUNCATE: this removes all tables or makes a delete but we can't come back after the DDL language.

  Example: TRUNCATE employees_copy;

  --------------------------------------------------------------------
  
LESSON 26

Database Transactions: Start and End

•	Begin when the DML SQL Statement is executed.

•	End with one of the following events:

•	A COMMIT or ROLLBACK Statement is issued.

•	A DDL or DCL Statement executes (Automatic commit).

•	The User exits SQL Developer or SQL Plus.

•	The system crashes.

COMMIT and ROLLBACK are like savepoints, and we can use them to be sure before making changes.
  
ROLLBACK: it brings you back from the beginning and removes the all changes you made it

•	Example: DELETE employees_copy; ROLLBACK;

COMMIT: it commits all changes and saves the data.

•	Example: DELETE employees_copy; COMMIT;  

SAVEPOINT: It saves changes and uses it to back to the savepoint we choose.

•	Example: UPDATE employees_copy SET SALARY = 10000 WHERE employee_id = 103;
SAVEPOINT a;
UPDATE employees_copy SET SALARY = 10000 WHERE employee_id = 104;
SAVEPOINT b;
UPDATE employees_copy SET SALARY = 10000 WHERE employee_id = 105;
DELETE employees_copy;
ROLLBACK TO SAVEPOINT b;

FOR UPDATE: use to lock the other users from select the rows you use and we can make from many tables so we can use joins.

•	Example: SELECT e.employee_id, e.salary, e.commission_pct FROM EMPLOYEES e JOIN departments d USING (department_id)
WHERE job_id = 'ST_CLERK' AND location_id = 1500
FOR UPDATE
ORDER BY e.employee_id;

--------------------------------------------------------------------------------------

LESSON 27

Database Objects: 

•	Table: The basic unit of storage is composed of rows.

•	View: It shows you data from tables to edit and represent.

•	Sequence: Generates Numeric values.

•	Index: Improves the performance of some queries.

•	Synonym: we can use it to give sample names to objects.

Naming Rules:

•	Must begin with a letter.

•	Must be 1-30 char long.

•	Must contain only A-Z, a-z, 0-9, _, $, and #.

•	Must not duplicate the object name in the same user.

•	Most not be an Oracle server words like SELECT, FROM, ……etc.	

CREATE TABLE Statement:

•	Example: CREATE TABLE DEMP(d_id number(9), first_name varchar2(30), last_name varchar2(30), create_date date DEFAULT sysdate);

 -------------------------------------------------------------
 
LESSON 28

Constraints: To make rules make less miss entering wrong data.

•	NOT NULL: Can’t make the table null or empty.

•	UNIQUE: A unique data that can be duplicated.

•	CHECK: Check if the data entered is required.

•	PRIMARY KEY: It’s a unique key generated and can't be duplicated.

•	FOREIGN KEY: It refers to PK or another table and can be duplicated and nullified.

o	Example: CREATE TABLE EMP(
emp_id number(10),
emp_name varchar2(30) NOT NULL, 
salary NUMBER(8,2),
email varchar2(50),
dept_id number(10),
CONSTRAINT emp_pk  PRIMARY KEY(emp_id),
CONSTRAINT sa_ck CHECK(salary > 1000) ,
CONSTRAINT em_un UNIQUE(email),
CONSTRAINT dept_fk FOREIGN KEY(dept_id) REFERENCES DEPARTMENTS(DEPARTMENT_ID));

---------------------------------------------------------------

LESSON 29

Create a Table Using Subquery: We can copy a table with a subquery from another table.

•	Example: CREATE TABLE EMP100 AS (SELECT * FROM employees WHERE department_id = 100;

----------------------------------------------------------



