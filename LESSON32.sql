/*

LESSON 32
SEQUENCE: Is to create a id or number generator for your next insert values.
•	CREATE SEQUENCE: Is to create a new sequence.
o	Example: CREATE SEQUENCE seq START WITH 5 INCREMENT BY 1 NOCACHE;
•	START WITH: this is the number we should start with we set it as the the tables stops or begin.
o	Example: CREATE SEQUENCE seq START WITH 5 INCREMENT BY 1 NOCACHE;
•	INCREMENT BY: Here we set the increment of the seq value in every insert to the table 
o	Example: CREATE SEQUENCE seq START WITH 5 INCREMENT BY 1 NOCACHE;

•	MINVALUE: We set the min value we start from it we used because if the last id in the table is 5 so we need to start from 5 and if we removed from the query will use the start as minvalue.
o	Example: CREATE SEQUENCE seq START WITH 5 INCREMENT BY 1 MINVALUE 5 NOCACHE;
•	MAXVALUE: We use it to set the end of the seq so if the seq get to the value 900 will end there.
o	Example: CREATE SEQUENCE seq START WITH 5 INCREMENT BY 1 MAXVALUE 900 NOCACHE;
•	CACHE & NOCACHE: Cache is to store amount of values in the memory for fast insert but if the app crash the seq will start from last value we put it in the cache.
o	Example: CREATE SEQUENCE seq START WITH 5 INCREMENT BY 1 NOCACHE OR CACHE 30;
•	NEXTVAL: Here we used to when we insert new value with the sequence.
o	Example: INSERT INTO regions values (seq.nextval, 'EGYPT');
•	DROP: Used to delete the sequence.
o	Example: DROP SEQUENCE seq

*/


CREATE SEQUENCE SEQ START WITH 5 INCREMENT BY 1 NOCACHE;


INSERT INTO regions values (seq.nextval, 'EGYPT');