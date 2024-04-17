Question:-
****************
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.
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
SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '^[aeiouAEIOU]' AND CITY REGEXP '[aeiouAEIOU]$';

Explain:- This is also same as "Weather Observation Station 6" and "Weather Observation Station 7". But here, we'll use both Regular Expression, 
        Regulare Expression1: '^[aeiouAEIOU],
        Regulare Expression2: '[aeiouAEIOU]$'
        Expression1 will use to check starting character of city name and Expression2 will use to check last character of the city name. Here we'll also use 'AND' oprator to check both starting and last character should be a vowel.
        
