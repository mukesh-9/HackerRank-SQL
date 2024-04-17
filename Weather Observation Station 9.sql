Question:-
****************
Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
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

Solution:-
****************
Query1: SELECT DISTINCT CITY FROM STATION WHERE CITY NOT REGEXP '^[aeiouAEIOU]';

Query2: SELECT DISTINCT CITY FROM STATION WHERE CITY NOT LIKE 'a%'
        AND CITY NOT LIKE 'e%'
        AND CITY NOT LIKE 'i%'
        AND CITY NOT LIKE 'o%'
        AND CITY NOT LIKE 'u%'
        AND CITY NOT LIKE 'A%'
        AND CITY NOT LIKE 'E%'
        AND CITY NOT LIKE 'I%'
        AND CITY NOT LIKE 'O%'
        AND CITY NOT LIKE 'U%';

Explain:- This is same as "Weather Observation Station 6". Here, we just need to add a 'NOT' keyword in the query. And for Query2, we'll use 'AND' operator instead 'OR' operator because now we don't want any city name that start with a vowel.
