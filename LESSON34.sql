/*
LESSON 34

SYNONYM: Is used to create alternative names to objects, and we can used if we want to write a table from other users.
•	CREATE SYNONYM: used to create the new syn.
o	Example: CREATE SYNONYM x FOR scott.emp;
•	DROP SYNONYM: Is used to delete the syn.
o	Example: DROP SYNONYM x;

*/


CREATE SYNONYM X FOR SCOTT.EMP;

DROP SYNONYM X;