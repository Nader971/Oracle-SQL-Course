/*
LESSON26
Database Transactions: Start and End
  Begin when the DML SQL Statement is executed.
  End with one of the following events:
    A COMMIT or ROLLBACK Statement is issued.
    A DDL or DCL Statement executes (Automatic commit).
    The User exit SQL Developer or SQL plus.
    The system crashes.
  COMMIT and ROLLBACK: its like a savepoints and we can use it to be sure and before make the changes.
  
  ROLLBACK: its make you back from the begining and remove the all changes you did it
    Example: DELETE employees_copy; ROLLBACK;
    
  COMMIT: its commit all changes and save the data.
    Example:DELETE employees_copy; COMMIT;
  
  SAVEPOINT: its saveing changes and use it to back to savepoint we choose.
    Example:UPDATE employees_copy SET SALARY = 10000 WHERE employee_id = 103;
    SAVEPOINT a;
    UPDATE employees_copy SET SALARY = 10000 WHERE employee_id = 104;
    SAVEPOINT b;
    UPDATE employees_copy SET SALARY = 10000 WHERE employee_id = 105;
    DELETE employees_copy;
    ROLLBACK TO SAVEPOINT b;
    
  FOR UPDATE: use to lock the other users from select the rows you use and we can make from many tables so we can use joins.
    Example; SELECT e.employee_id, e.salary, e.commission_pct FROM EMPLOYEES e JOIN departments d USING (department_id)
    WHERE job_id = 'ST_CLERK' AND location_id = 1500
    FOR UPDATE
    ORDER BY e.employee_id;
    
*/

SELECT e.employee_id, e.salary, e.commission_pct FROM EMPLOYEES e JOIN departments d USING (department_id)
WHERE job_id = 'ST_CLERK' AND location_id = 1500
FOR UPDATE
ORDER BY e.employee_id;
