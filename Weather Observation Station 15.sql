Question:-
****************
Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. Round your answer to 4 decimal places.
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
SELECT ROUND(LONG_W, 4) AS LONG_W FROM STATION WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345);

Explain:- Here, we have to get the LONG_W of largest LAT_N. It means in "Weather Observation Station 14", we got the largest LAT_N. So here we have to get the LONG_W for this largest LAT_N.
  So first we need to get the largest LAT_N but less than 137.2345. So our query will be "SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345".
  Now we will get the ROUND of LONG_W with 4 decimal places, so our query will be "SELECT ROUND(LONG_W, 4) AS LONG_W FROM STATION"
But here we have a condition that is LAT_N should be largest for this LONG_W. So we will use our first query as subquery (A query inside the query). Because our first query giving us the largest LAT_N so we can set "WHERE LAT_N = first query" in second query
So the complete query will be "SELECT ROUND(LONG_W, 4) AS LONG_W FROM STATION WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345);"

  
