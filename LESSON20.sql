/*
LESSON 20
Subquery: We can used in make another select statement to get a specific output to used in the main statement.
  •	we use it in ().
  •	Its better to put it in the right the code to easy read.
  •	We use Single-row operators with Single-row subquery and the Multiple-row operators with Multiple-row subquery  
  Example: SELECT last_name, salary FROM employees WHERE salary > (SELECT salary FROM employees WHERE last_name = 'Abel');
Single-row subqueries: Return only one row & use single- row comparison operators.
Example: SELECT last_name, salary FROM employees WHERE salary > (SELECT salary FROM employees WHERE last_name = 'Abel') AND salary < (SELECT salary FROM employees WHERE last_name = 'King' and salary > 10000);
  •	Group Functions in a Subquery: we can use group functions with in and with subqueries.
    o	Example: SELECT last_name, salary FROM employees WHERE salary > (SELECT AVG(salary) "Average" FROM employees) AND salary < (SELECT MAX(salary) "MAX" FROM employees);
  •	HAVING clause with Subquery:
    o	Example:SELECT department_id, min(salary) FROM employees GROUP BY department_id HAVING min(salary) > (SELECT min(salary) "Minimum" FROM employees WHERE department_id =50);

*/

SELECT department_id, min(salary) FROM employees GROUP BY department_id HAVING min(salary) > (SELECT min(salary) "Minimum" FROM employees WHERE department_id =50);