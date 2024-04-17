Question:-
****************
Query the following two values from the STATION table:
1. The sum of all values in LAT_N rounded to a scale of 2 decimal places.
2. The sum of all values in LONG_W rounded to a scale of 2 decimal places.
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

Where LAT_N is the northern latitude and LONG_W is the western longitude.

Solution:-
****************
SELECT ROUND(SUM(LAT_N), 2) AS lat, ROUND(SUM(LONG_W), 2) AS lon FROM STATION;

Explain:- We need to select the SUM of all values of LAT_N and the SUM of all values of LONG_W with 2 decimal places. So, first we get SUM by using "SUM(LAT_N)" and then we get ROUND by using "ROUND(SUM(LAT_N), 2)" of the SUM with 2 decimal places.
