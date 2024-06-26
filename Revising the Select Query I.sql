Question:-
****************
Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
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
SELECT * FROM CITY WHERE POPULATION > 100000 AND COUNTRYCODE = 'USA';

Explain:- We need to select all columns from the table CITY (Given in question). So we use Asterisk(*) that means all columns of the table. And as well we check the POPULATION should be larger than 100000 and the COUNTRYCODE should be USA.
