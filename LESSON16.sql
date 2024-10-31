/*
Group Functions: use in group of rows to get the Output and we can use null and distint.
AVG: Get the Average for group of numbers.
Example: SELECT AVG(salary) "Average" FROM employees;
COUNT: Count the number of rows in coulams.
Example: SELECT COUNT(distinct salary) "SUM" FROM employees;
MAX : Get the higher number or the newest date or the last letter.
Example: SELECT MAX(salary), MAX(hire_date), MAX(first_name) "SUM" FROM employees;
MIN: Get the smallest number or the oldest date or the first letter.
Example: SELECT MIN(salary), MIN(hire_date), MIN(first_name) "SUM" FROM employees;
SUM: get the sum for group of numbers.
Example: SELECT SUM(salary) "SUM" FROM employees;
STDDEV
Example: 
VRINANCE
Example: 
*/

SELECT MIN(salary), MIN(hire_date), MIN(first_name) "SUM" FROM employees;