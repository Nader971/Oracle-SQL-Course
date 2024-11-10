/*
Lesson27

Database Objects: 
•	Table: Basic Unit of storage, composed with rows
•	View: Its show you data from tables to edit and represent.
•	Sequence: Generates Numeric values.
•	Index: Improves the performance of some queries.
•	Synonym: we can use to give sample names to objects.

Naming Rules:
•	Must to begin with a latter.
•	Must be 1-30 char long.
•	Must be contain only A-Z, a-z, 0-9, _, $, and #.
•	Must not duplicate the object name in the same user.
•	Most not be an Oracle server words like: SELECT, FROM, ……etc.	

CREATE TABLE Statement:
•	Example: CREATE TABLE DEMP(d_id number(9), first_name varchar2(30), last_name varchar2(30), create_date date DEFAULT sysdate);
*/


CREATE TABLE DEMP(d_id number(9), first_name varchar2(30), last_name varchar2(30), create_date date DEFAULT sysdate);