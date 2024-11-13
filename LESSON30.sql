/*
LESSON 30
Alter Table: We used to modify or change or add new column to the exist table.
  •	ADD: We can add new column to the table.
    o	Example: ALTER TABLE emp ADD (first_name VARCHAR2(30), last_name VARCHAR2(30));
  •	RENAME: We can rename the column in the table.
    o	Example: ALTER TABLE emp RENAME COLUMN emp_name TO full_name;
  •	MODIFY: We can modify the data in the column we already created.
    o	Example: ALTER TABLE emp MODIFY comm NUMBER(10,2);
  •	DROP: We can delete column from the table.
    o	Example: ALTER TABLE emp DROP COLUMN comm;
  •	RENAME(Table): We can rename the table with it.
    o	Example: ALTER TABLE emp RENAME to NEW_EMPLOYEES;

*/

ALTER TABLE emp RENAME to NEW_EMPLOYEES;