/*
LESSON18:
Types Of Joins: Joins that’s are compliant with the SQL: 1999 standard include the following:
  ?	NATRUAL JOINS: is 1 of joins types
    o	NATRUAL JOINS: we use to join 2 tables with the PK and FK its have to be the same data type
     ?	Example: SELECT department_id, department_name, location_id, city FROM departments d NATURAL JOIN locations;
    o	USING: we used when we need to join 2 tables with differnt data type.
      ?	Example: SELECT department_id, department_name, location_id, city FROM  departments d JOIN locations USING (location_id);
    o	ON: We used when we need to join 2 tables with different names.
     ?	Example: SELECT department_id, department_name location_id, city FROM departments d JOIN locations l ON (d.location_id = l.location_id);
    o	More than 2 tables: we can use more than 2 tables.
     ?	Example: SELECT e.last_name, d.department_id, department_name, l.location_id, city FROM departments d JOIN locations l ON (d.location_id = l.location_id) JOIN employees e ON d.manager_id =  e.employee_id;
    o WHERE & AND & OR: we can use where, and, or in differant table.
      ?	Example: SELECT e.last_name, d.department_id, department_name, l.location_id, city FROM departments d JOIN locations l ON (d.location_id = l.location_id) JOIN employees e ON d.MANAGER_ID = e.employee_id WHERE d.department_id = 70 OR d.department_name = 'IT' AND e.last_name = 'Hunold';
    o SELF JOIN: You can make 2 tabels and join each other from the table itself.
      ?	Example: SELECT a.employee_id worker, a.last_name, b.employee_id manager, b.last_name FROM employees a JOIN employees b ON a.manager_id = b.employee_id;
    o None EquiJoins: Retrieving Records with NoneEquiJoins.
      Example: SELECT e.last_name, e.salary, j.grade_level FROM employees e JOIN job_grades j ON e.salary BETWEEN j.lowest_sal AND j.highest_sal;

To create new Table:
  create table JOB_GRADES (
  GRADE_LEVEL VARCHAR2(3),
  LOWEST_SAL NUMBER,
  HIGHEST_SAL NUMBER);
  
  insert into JOB_GRADES (GRADE_LEVEL, LOWEST_SAL, HIGHEST_SAL)
  values ('A', 1000, 2999);
  insert into JOB_GRADES (GRADE_LEVEL, LOWEST_SAL, HIGHEST_SAL)
  values ('B', 3000, 5999);
  insert into JOB_GRADES (GRADE_LEVEL, LOWEST_SAL, HIGHEST_SAL)
  values ('C', 6000, 9999);
  insert into JOB_GRADES (GRADE_LEVEL, LOWEST_SAL, HIGHEST_SAL)
  values ('D', 10000, 14999);
  insert into JOB_GRADES (GRADE_LEVEL, LOWEST_SAL, HIGHEST_SAL)
  values ('E', 15000, 24999);
  insert into JOB_GRADES (GRADE_LEVEL, LOWEST_SAL, HIGHEST_SAL)
  values ('F', 25000, 40000);
  commit;

*/


SELECT e.last_name, e.salary, j.grade_level FROM employees e JOIN job_grades j ON e.salary BETWEEN j.lowest_sal AND j.highest_sal;










