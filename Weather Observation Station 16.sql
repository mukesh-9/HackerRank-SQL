Question:-
****************
Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. Round your answer to 4 decimal places.
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
SELECT ROUND(MIN(LAT_N),4) AS LAT_N FROM STATION WHERE LAT_N > 38.7780;

Explain:- This is same as "Weather Observation Station 14". The only difference is, here we have to get the smallest LAT_N and for this we'll use MIN() function, 
and we'll check the condition as well that is LAT_N should be greater than 38.7780.
