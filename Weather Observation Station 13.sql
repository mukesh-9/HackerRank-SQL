Question:-
****************
Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345. Truncate your answer to 4 decimal places.
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
Query1: SELECT ROUND(SUM(LAT_N), 4) FROM STATION WHERE LAT_N > 38.7880 AND LAT_N < 137.2345;
Query2: SELECT ROUND(SUM(LAT_N), 4) AS LAT_N FROM STATION WHERE LAT_N > 38.7880 AND LAT_N < 137.2345;

Explain:- This is same as "Weather Observation Station 2". Here, it's updated a bit with some conditions. 
Here we have two conditions, first is LAT_N should be greater than 38.7880 and second is LAT_N should be less than 137.2345.
And we have to get the ROUND of the sum upto 4 decimal places.
Query2 is used for an example, to use the resulted value we can set a alies to the column name. It means instead of using ROUND(SUM(LAT_N), 4) you can use LAT_N to use the resulted value. 
