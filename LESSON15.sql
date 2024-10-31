/*
Nesting Functions:
  Single-Row Function can be nested to any level.
  Nesting Functions are evaluated from deepest level to the least deep level.
    Example: SELECT first_name, UPPER(CONCAT(SUBSTR(first_name, 1, 3), '_MI')) FROM employees;
General Functions: The following functions work with any data type and pertain to using null.
  NVL: Changing NULL to number to use it in mathmatics.
    Example:SELECT first_name, salary, commission_pct, nvl(commission_pct, 1) FROM employees;
  NVL2: its mean if null give result and we can make the result be char.
    Example: SELECT first_name, salary, commission_pct, nvl2(commission_pct, salary*1.1, 0) FROM employees;
  NULLIF: Compare between 2 values and if == give you null and if \= result value 1.
    Example: SELECT  length(first_name), length(last_name), NULLIF(length(first_name), length(last_name)) FROM employees;
  COALESCE: search between values and when find the first notnull value get it.
    Example: SELECT COALESCE(NULL, NULL, NULL, 1,NULL) FROM dual;
Conditional Expressions:
  CASE:
    Example: SELECT last_name, job_id , salary,
    CASE job_id WHEN 'PU_MAN' THEN 1.15 * salary
              WHEN 'SH_CLERK' THEN 1.3 * salary
              WHEN 'AC_ACCOUNT' THEN 1.4 * salary
              WHEN 'FI_ACCOUNT' THEN 1.51 * salary
              ELSE SALARY * 1.1 END "Annual Salary increase" FROM employees;
  DECODE: 
    Example: last_name, job_id , salary,
    DECODE( job_id , 'PU_MAN' , 1.15 * salary
              , 'SH_CLERK' , 1.3 * salary
              , 'AC_ACCOUNT' , 1.4 * salary
              , 'FI_ACCOUNT' , 1.51 * salary
              , SALARY * 1.1) "Annual Salary increase"          
    FROM employees;
*/


SELECT last_name, job_id , salary,
  DECODE( job_id , 'PU_MAN' , 1.15 * salary
              , 'SH_CLERK' , 1.3 * salary
              , 'AC_ACCOUNT' , 1.4 * salary
              , 'FI_ACCOUNT' , 1.51 * salary
              , SALARY * 1.1) "Annual Salary increase"          
FROM employees;