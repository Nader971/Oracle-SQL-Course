/*
LESSON28
Constraints: Is to make rules make less miss entering wrong data.
  •	NOT NULL: Can’t make the table null or empty.
  •	UNIQUE: Is a unique data can be duplicated.
  •	CHECK: Check if the data entered is required.
  •	PRIMARY KEY: It’s a unique key generated and cant be duplicated and cant be null.
  •	FOREIGN KEY: It's make reference to PK or another table and can be duplicated and can be null.
    o	Example: CREATE TABLE EMP(
    emp_id number(10),
    emp_name varchar2(30) NOT NULL, 
    salary NUMBER(8,2),
    email varchar2(50),
    dept_id number(10),
    CONSTRAINT emp_pk  PRIMARY KEY(emp_id),
    CONSTRAINT sa_ck CHECK(salary > 1000) ,
    CONSTRAINT em_un UNIQUE(email),
    CONSTRAINT dept_fk FOREIGN KEY(dept_id) REFERENCES DEPARTMENTS(DEPARTMENT_ID));
*/


CREATE TABLE EMP(
emp_id number(10),
emp_name varchar2(30) NOT NULL, 
salary NUMBER(8,2),
email varchar2(50),
dept_id number(10),
CONSTRAINT emp_pk  PRIMARY KEY(emp_id),
CONSTRAINT sa_ck CHECK(salary > 1000) ,
CONSTRAINT em_un UNIQUE(email),
CONSTRAINT dept_fk FOREIGN KEY(dept_id) REFERENCES DEPARTMENTS(DEPARTMENT_ID));

