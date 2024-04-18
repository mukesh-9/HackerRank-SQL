Question:-
****************
Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.
Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
  
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

The COUNTRY table is described as follows:
+----------------+---------------------+
| Field          |   Type              |
+----------------+---------------------+
| CODE           | VARCHAR(3)          |
| NAME           | VARCHAR(44)         |
| CONTINENT      | VARCHAR(13)         |
| REGION         | VARCHAR2(25)        |
| SURFACEAREA    | NUMBER              |
| INDEPYER       | VARCHAR(2)          |
| POPULATION     | NUMBER              |
| LIFEEXPECTANCY | VARCHAR(2)          |
| GNP            | NUMBER              |
| GNPOLD         | VARCHAR2(9)         |
| GOVERNMENTFORM | VARCHAR2(44)        |
| HEADOFSTATE    | VARCHAR(32)         |
| CAPITAL        | VARCHAR2(4)         |
| CODE2          | VARCHAR2(2)         |
+----------------+---------------------+

Solution:-
****************
SELECT CITY.NAME FROM CITY JOIN COUNTRY ON CITY.COUNTRYCODE=COUNTRY.CODE WHERE COUNTRY.CONTINENT = 'Africa';

Explain:- This problem is same as "Population Census". Here, we only get the name of those cities that country's continent is 'Africa'.
