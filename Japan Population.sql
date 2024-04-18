Question:-
****************
Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
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
SELECT SUM(POPULATION) FROM CITY WHERE COUNTRYCODE='JPN';

Explain:- We have to get the total population of those cities that has the COUNTRYCODE 'JPN'.
