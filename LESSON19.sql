/*
OUTER JOIN:

  LEFT OUTER JOIN: showes the nulls value of the left culomns.
    Example: SELECT a.employee_id worker, a.last_name, b.employee_id manager, b.last_name FROM employees a LEFT OUTER JOIN employees b ON a.manager_id = b.employee_id;
    
  RIGHT OUTER JOIN: showes the nulls value of the right culomns.
    Example: SELECT e.last_name, d.department_id, d.department_name FROM employees e RIGHT OUTER JOIN departments d ON (e.department_id = d.department_id);
  
  FULL OUTER JOIN: showes the nulls value of ALL  culomns.
    Example: SELECT e.last_name, d.department_id, d.department_name FROM employees e FULL OUTER JOIN departments d ON (e.department_id = d.department_id);
  

Cartesian Prodact: All rows in the first table are joined to all rows in the second table, to avoid a Cartesian product, always include a valid join condition.

  CROSS JOIN: 
    SELECT last_name, department_name FROM employees CROSS JOIN departments;

*/


SELECT last_name, department_name FROM employees CROSS JOIN departments;
