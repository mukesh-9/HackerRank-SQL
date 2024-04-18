Question:-
****************
Query the difference between the maximum and minimum populations in CITY.
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
SELECT MAX(POPULATION)-MIN(POPULATION) FROM CITY;

Explain:- We have to calculate the population difference between the maximum and minimum population cities. So we'll substract the minimum population from maximum population by using MAX() - MIN() functions.
