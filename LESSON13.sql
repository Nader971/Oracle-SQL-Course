/*
Oracle DATE: The Oracle Database stores dates in an number function thats we can use in ARITHMETIC ways,
format: century, year, month, day, hours, minutes, and seconds.
The default date display format is DD-MON-RR.

SYSDATE: is a function that returns Date&Time from the Database server.
Example: SELECT SYSDATE FROM dual;

CURRENT_DATE: is a function that returns Date&Time from the client .
Example: SELECT CURRENT_DATE FROM dual;

Date-Manipulation Functions:

* MONTH_BETWEEN: Number of months between two dates.
  * Example: SELECT first_name, hire_date, ROUND(MONTHS_BETWEEN(sysdate, hire_date )/12, 1) FROM employees;
* ADD_MONTHS: Add calendar months to date.
  * Example: SELECT first_name, hire_date, ADD_MONTHS(hire_date,1) FROM employees;
* NEXT_DAY: Next day of the date specified.
  * Example: SELECT first_name, sysdate, NEXT_DAY(sysdate,'MON') FROM employees;
* LAST_DAY: Last day of the month of the date specified.
  * Example: SELECT first_name, hire_date, LAST_DAY(HIRE_DATE) FROM employees;
* ROUND: Round date.
  * Example: SELECT first_name, hire_date, ROUND(HIRE_DATE, 'MONTH'), ROUND(HIRE_DATE, 'YEAR') FROM employees;
* TRUNC: Truncate date.
  * Example: SELECT first_name,hire_date, TRUNC(HIRE_DATE, 'MONTH'), TRUNC(HIRE_DATE, 'YEAR') FROM employees;



*/

SELECT first_name, hire_date, TRUNC(HIRE_DATE, 'MONTH'), TRUNC(HIRE_DATE, 'YEAR') FROM employees;