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

![image](https://github.com/user-attachments/assets/6c7da96e-7385-4d51-9b09-185d586bd9f7)

![image](https://github.com/user-attachments/assets/51a66ec2-3542-4b0f-b490-98d770d5cc77)



o	Example1: SELECT hire_date, TO_CHAR(hire_date, 'dd-mm-yyyy') FROM employees;
 
o	Example2: SELECT first_name, salary, TO_CHAR(salary, 'L999,999,999.00') FROM employees;
 
•	TO_DATE: Convert a character string to a DATE format.

o	Example1: SELECT last_name, hire_date FROM employees WHERE hire_date <= TO_DATE('01/02/2007', 'dd-mm-yyyy');
 
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

•	COALESCE: search between values and when find the first not null value get it.

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




