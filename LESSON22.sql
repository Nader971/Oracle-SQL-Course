/*
Set Operators: When we need to get the data from 2 tables or the different from this data.

•	UNION ALL: get the all data from the 2 tables with the duplicate
o	Example: SELECT employee_id, job_id FROM employees WHERE employee_id = 200 UNION ALL SELECT employee_id, job_id FROM job_history WHERE employee_id = 200; 

•	UNION: get the all data from the 2 tables without the duplicate
o	Example: SELECT employee_id, job_id FROM employees WHERE employee_id = 200 UNION SELECT employee_id, job_id FROM job_history WHERE employee_id = 200; 

•	INTERSECT: Get the duplicated area from the 2 tables
o	Example: SELECT employee_id, job_id FROM employees WHERE employee_id = 200 INTERSECT SELECT employee_id, job_id FROM job_history WHERE employee_id = 200; 

•	MINUS: Get the data from the first table that isn’t in the second table” we can say from the example that we can’t the data that didn’t changed”.	
o	Example: SELECT employee_id, job_id FROM employees MINUS SELECT employee_id, job_id FROM job_history; 

•	MATCHING: that is a rule that we can’t get more info from the first table without matching the output from the second table.
o	Example: SELECT employee_id, job_id, salary, 'current' FROM employees UNION SELECT employee_id, job_id, 0, to_char(end_date, 'dd/mm/yyyy') FROM job_history;  

*/

SELECT employee_id, job_id, salary, 'current' FROM employees UNION SELECT employee_id, job_id, 0, to_char(end_date, 'dd/mm/yyyy') FROM job_history; 