/*
01- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
  select * from city where countrycode ='USA' and population > 100000;
  
02- Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
  select name from city where countrycode ='USA' and population > 120000;
03- Query all columns (attributes) for every row in the CITY table.
  SELECT * FROM city;
04- Query all columns for a city in CITY with the ID 1661.
  SELECT * FROM city WHERE id = 1661;
05- Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
  SELECT * FROM city WHERE countrycode = 'JPN';
06- Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
  SELECT NAME FROM city WHERE countrycode = 'JPN';
07- Query a list of CITY and STATE from the STATION table.
  SELECT city, state FROM station;
08- Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
  SELECT distinct city FROM station where mod(id,2) = 0;
09- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
  SELECT COUNT(city) - count(distinct city) "difference number of CITY" FROM STATION;
10- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name).
If there is more than one smalle  st or largest city, choose the one that comes first when ordered alphabetically.
  SELECT  city, LENGTH(city) FROM (SELECT city, LENGTH(city) from station  ORDER BY LENGTH(city), city) where rownum = 1;

  SELECT  city, LENGTH(city) FROM (SELECT city, LENGTH(city) from station  ORDER BY LENGTH(city) desc, city) where rownum = 1;

11- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates. 

  SELECT DISTINCT city FROM station where city like 'I%' or city like 'E%' or city like 'A%' or city like 'O%' or city like 'U%';   

12- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates. 

  SELECT DISTINCT city FROM station where city like '%i' or city like '%e' or city like '%a' or city like '%o' or city like '%u';   

13- Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates. 

  SELECT DISTINCT CITY FROM STATION  WHERE SUBSTR(CITY,1,1) IN ('A', 'E', 'I', 'O', 'U')  AND SUBSTR(CITY,-1,1) IN ('a', 'e', 'i', 'o', 'u'); 

14- Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates. 

    SELECT DISTINCT CITY FROM STATION  WHERE SUBSTR(CITY,1,1) NOT IN ('A', 'E', 'I', 'O', 'U'); 

15- Query the list of CITY names from STATION that do not end with vowels. Your result cannot contain duplicates. 

  SELECT DISTINCT CITY FROM STATION  WHERE SUBSTR(CITY,-1,1) NOT IN ('a', 'e', 'i', 'o', 'u'); 

16 - Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates. 

  SELECT DISTINCT CITY FROM STATION  WHERE SUBSTR(CITY,1,1) NOT IN ('A', 'E', 'I', 'O', 'U')  OR SUBSTR(CITY,-1,1) NOT IN ('a', 'e', 'i', 'o', 'u'); 

17-  Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates. 

  SELECT DISTINCT CITY FROM STATION  WHERE SUBSTR(CITY,1,1) NOT   IN ('A', 'E', 'I', 'O', 'U')  AND SUBSTR(CITY,-1,1) NOT IN ('a', 'e', 'i', 'o', 'u'); 

18- Query the Name of any student in STUDENTS who scored higher than  Marks. 
Order your output by the last three characters of each name. 
If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
  
  SELECT name FROM students WHERE marks > 75 ORDER BY substr(name,-3),id;

19- Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.

  SELECT name FROM employee ORDER BY name;
  
20- Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than  per month who have been employees for less than  months. 
Sort your result by ascending employee_id.

  SELECT name FROM employee WHERE salary > 2000 and months < 10 ORDER BY employee_id;
  
21- 



 

*/

select last_name, substr(last_name,-3) from employees order by last_name;

