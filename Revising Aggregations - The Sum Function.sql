Question:-
****************
Query the total population of all cities in CITY where District is California.
The CITY table is described as follows:
+----------------+---------------------+
| Field          |   Type              |
+----------------+---------------------+
| ID             | NUMBER              |
| NAME           | VARCHAR(17)         |
| COUNTRYCODE    | VARCHAR(3)          |
| DISTRICT       | VARCHAR2(20)        |
| POPULATION     | NUMBER              |
+----------------+---------------------+

Solution:-
****************
SELECT SUM(POPULATION) FROM CITY WHERE DISTRICT = 'California';

Explain:- We need to get the total population of all cities those district is 'California'.
