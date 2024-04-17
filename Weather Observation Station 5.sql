Question:-
****************
Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
The STATION table is described as follows:

+-------------+---------------------+
| Field       |   Type              |
+-------------+---------------------+
| ID          | NUMBER              |
| CITY        | VARCHAR(21)         |
| STATE       | VARCHAR(2)          |
| LAT_N       | NUMBER              |
| LONG_W      | NUMBER              |
+-------------+---------------------+

where LAT_N is the northern latitude and LONG_W is the western longitude.
For example, CITY has four entries: DEF, ABC, PQRS and WXY.

Solution:-
****************
SELECT CITY, LENGTH(CITY) AS CITY_LENGTH FROM STATION ORDER BY CITY_LENGTH DESC, CITY LIMIT 1;
SELECT CITY, LENGTH(CITY) AS CITY_LENGTH FROM STATION ORDER BY CITY_LENGTH ASC, CITY LIMIT 1;

Explain:- Here we need to select the shortest and longest city name with its length (number of letters/characters in the city name).
First, we select the shortest city name with its length. So, for city name we use city name field 'CITY' and for its length we'll use LENGTH() function. 
  We have to get the shortest name, so we sort the list in descending order by city name length by using the 'ORDER BY' after that we sort the list again by city name because of there may be multiple cities with same name and length.
  And we need to get only one city name, so for this we'll use 'LIMIT' 1
Second, we select the longest city name, the steps will be same but this time we'll sort the list in ascending order.
