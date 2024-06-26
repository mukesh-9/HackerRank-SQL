Question:-
****************
Query all columns for a city in CITY with the ID 1661.
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
SELECT * FROM CITY WHERE ID = 1661;

Explain:- We need to select all columns from the table CITY (Given in question). So we use Asterisk(*) that means all columns of the table. And as well we check the ID should be 1661.
