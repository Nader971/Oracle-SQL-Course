/*

LESSON 33
INDEX: Is used to improve the performance to the query so it can used to make the search for the data faster and we should use just for the search column or something we use to join between tables.
•	CREATE INDEX: Its easy to create index and we cant modify just delete and created again.
o	Example: CREATE INDEX EMP_LAST_NAME ON EMPLOYEES(LAST_NAME);
•	DROP INDEX: Use it to delete the indexs.
o	Example: DROP INDEX EMP_LAST_NAME;

*/


CREATE INDEX EMP_LAST_NAME ON EMPLOYEES(LAST_NAME);

DROP INDEX EMP_LAST_NAME;