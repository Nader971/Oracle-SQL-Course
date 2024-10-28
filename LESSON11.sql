/* 
Character-Manipulation Function:
•	CONCAT: it's not usable and it’s the same as Concatenation Operation || is more advanced.
  o	SELECT first_name||last_name, CONCAT(first_name, last_name) FROM employees;
•	SUBSTR: it’s used to select several letters from a word.
o	select first_name,last_name, job_id FROM employees WHERE SUBSTR(job_id,1,2) = 'SA';
•	LENGTH: It’s used to know the number of the letters in the word.
  o	SELECT first_name,last_name, LENGTH(first_name) FROM employees;
•	INSTR: it’s used to know the position number in the word.
  o	SELECT first_name,last_name, INSTR(first_name, 'n',1,2) FROM employees;
•	LPAD: It’s used to add letters to the LEFT of the word.
  o	SELECT first_name,last_name, LPAD(salary, LENGTH(SALARY)+1, '$') FROM employees;
•	RPAD: It’s used to add letters to the RIGHT of the word.
  o	SELECT first_name,last_name, RPAD(salary, LENGTH(SALARY)+1, '$') FROM employees;
•	REPLACE: It’s used to REPLACE letters with other letters.
  o	SELECT first_name,last_name, REPLACE(first_name, 'e', 'i' ) FROM employees;
•	TRIM: It’s used to remove the beginning of the word and the end of it.
  o	SELECT TRIM(' ' FROM '        Nader Mamdouh       ') FROM dual;

*/
