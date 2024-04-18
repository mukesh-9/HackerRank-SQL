Question:-
****************
Given the CITY and COUNTRY tables, query the names of all the continents (COUNTRY.Continent) and their respective average city populations (CITY.Population) rounded down to the nearest integer.
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
SELECT COUNTRY.CONTINENT, FLOOR(AVG(CITY.POPULATION)) FROM COUNTRY JOIN CITY ON COUNTRY.CODE=CITY.COUNTRYCODE GROUP BY COUNTRY.CONTINENT;

Explain:- In this query we need to get the all continent from table COUNTRY and we have to get the population for their respective cities.
          So first we get the CONTINENT from COUNTRY table and select the city population, and to get the nearest integer we use FLOOR function. We'll connect both CITY and COUNTRY table on the base of the CODE and COUNTRYCODE.
