Question:-
****************
Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
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
SELECT NAME FROM CITY WHERE COUNTRYCODE = 'JPN';

Explain:- We need to select the NAME column from the table CITY (Given in question). And as well we check the COUNTRYCODE should be JPN. JPN is the countrycode for Japanese city that given in question.
