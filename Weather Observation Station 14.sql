Question:-
****************
Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345. Truncate your answer to 4 decimal places.
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
SELECT ROUND(MAX(LAT_N), 4) AS LAT_N FROM STATION WHERE LAT_N < 137.2345;

Explain:- Here we need to get the maximum LAT_N value but less than 137.2345. So to get the  maximum value of a column, we'll use MAX() function. And we also have to get it ROUND upto 4 decimal places. So, after getting MAX, we'll calculate ROUND with 4 decimal places.
  And we'll check the LAT_N should be less than 137.2345.
