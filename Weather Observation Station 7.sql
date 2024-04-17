Question:-
****************
Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
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
Query1: SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '[aeiouAEIOU]$';

Query2: SELECT DISTINCT CITY FROM STATION WHERE 
        CITY LIKE '%a' 
        OR CITY LIKE '%e' 
        OR CITY LIKE '%i' 
        OR CITY LIKE '%o' 
        OR CITY LIKE '%u' 
        OR CITY LIKE '%A' 
        OR CITY LIKE '%E' 
        OR CITY LIKE '%E' 
        OR CITY LIKE '%O' 
        OR CITY LIKE '%U';

Explain:- Everything will be same as "Weather Observation Station 6". But here we only need to reverse that. 
In query1, for starting we used ^ symbol, but for ending we'll use $ symbol at the end of Regular Expression.
In query2, for starting we started the city name with vowel character and the remaining characters are denoted by '%' symbol, but for ending we'll end the city name with vowel character, and the starting characters will be denoted by same '%' symbol
