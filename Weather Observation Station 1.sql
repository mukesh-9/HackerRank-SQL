Question:-
****************
Query a list of CITY and STATE from the STATION table.
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
SELECT CITY, STATE FROM STATION;

Explain:- We need to select the CITY and STATE column from the table STATION (Given in question).

