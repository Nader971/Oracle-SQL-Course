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

•	TRIM: It’s used to remove the beginning of the word and the end of it.

o	SELECT TRIM(' ' FROM '        Nader Mamdouh       ') FROM dual;


