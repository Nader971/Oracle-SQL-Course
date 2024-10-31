/*
Conversion Function:
Data Type Conversion: -
•	Implicit data type conversion: In expressions, the Oracle Server can automatically convert the followin:
  o	VARCHAR2 or CHAR to NUMBER or DATE
    o Example: SELECT last_name, employee_id FROM employees WHERE employee_id = '200';
Explicit data type conversion: this to use functions to change data type from number or date to char or the oppsitve
•	TO_CHAR: use to change date or number to char.
  o	Example1: SELECT hire_date, TO_CHAR(hire_date, 'dd-mm-yyyy') FROM employees;
  o	Example2: SELECT first_name, salary, TO_CHAR(salary, 'L999,999,999.00') FROM employees;
•	TO_DATE: Convert a character string to a DATE format.
  o	Example1: SELECT last_name, hire_date FROM employees WHERE hire_date <= TO_DATE('01/02/2007', 'dd-mm-yyyy');
•	TO_NUMBER: Convert a character string to a number format.
  o	Example1: SELECT TO_NUMBER('01112008903', '99999999999999') FROM dual;


*/


SELECT last_name, hire_date FROM employees WHERE hire_date <= TO_DATE('01/02/2007', 'dd-mm-yyyy');

