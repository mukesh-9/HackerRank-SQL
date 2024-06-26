Question:-
****************
Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
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
SELECT * FROM CITY WHERE COUNTRYCODE = 'JPN';

Explain:- We need to select all attributes(columns) from the table CITY (Given in question). So we use Asterisk(*) that means all columns of the table. And as well we check the COUNTRYCODE should be JPN. JPN is countrycode for Japanese city that given in question.
