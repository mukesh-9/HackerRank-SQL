Question:-
****************
Query all columns (attributes) for every row in the CITY table.
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
SELECT * FROM CITY;

Explain:- We need to select all columns from the table CITY (Given in question). So we use Asterisk(*) that means all columns of the table.
