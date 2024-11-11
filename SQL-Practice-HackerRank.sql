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

*/


