/*

LESSON 31
View: We can used to create new view from tables to used to show it to other user’s or be shortcut to our query.
•	CREATE VIEW: We can create the view with it.
•	Example: CREATE VIEW emp_dit AS SELECT e.first_name, e.salary, d.department_name, l.city, l.postal_code FROM EMPLOYEES e, DEPARTMENTS d, LOCATIONS l WHERE e.department_id = d.department_id and d.location_id = l.location_id;
•	 REPLACE: modify the view or change it.
o	Example: CREATE or REPLACE VIEW emp_dit AS SELECT e.first_name, e.salary, d.department_name, l.city, l.street_address FROM EMPLOYEES e, DEPARTMENTS d, LOCATIONS l WHERE e.department_id = d.department_id and d.location_id = l.location_id;
•	DROP: Delete the view.
o	Example: DROP VIEW emp_dit;


*/

DROP VIEW emp_dit;