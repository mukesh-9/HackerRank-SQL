Question:-
****************
Query a count of the number of cities in CITY having a Population larger than 100,000.
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
SELECT COUNT(NAME) AS COUNT FROM CITY WHERE POPULATION > 100000;

Explain:- We just need to count the number of cities those population is larger than 100,000. So for this we'll use COUNT() function for city name.
