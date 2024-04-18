Question:-
****************
Query the list of CITY names from STATION that either do not start with vowels or do not end with vowels. Your result cannot contain duplicates.
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
SELECT DISTINCT CITY FROM STATION WHERE CITY NOT REGEXP '^[aeiouAEIOU]' OR CITY NOT REGEXP '[aeiouAEIOU]$'

Explain:- This is same as "Weather Observation Station 9" and "Weather Observation Station 10". Here, we just need combine both query.
  And we user 'OR' operator to combine, because we have to get the city names those are not starting with a vowel or not end with a vowel.
