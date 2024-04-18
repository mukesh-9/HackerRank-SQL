Question:-
****************
Query the average population for all cities in CITY, rounded down to the nearest integer.
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
SELECT FLOOR(AVG(POPULATION)) FROM CITY;

Explain:- We need to get the average population of all cities and then to get the nearest integer we'll use the FLOOR() function for the average population.
