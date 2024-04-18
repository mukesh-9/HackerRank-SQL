Question:-
****************
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
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
SELECT SUM(CITY.POPULATION) AS TOTAL FROM CITY JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE WHERE COUNTRY.CONTINENT = 'Asia';

Explain:- We have to get the total population of the cities those country's continent is 'Asia'. But the continent of the city is present in another table COUNTRY. 
          To match the exact data from other table we have a matching key that is COUNTRYCODE. We can get the continent by COUNTRYCODE. The COUNTRYCODE is present in COUNTRY table as CODE.
          So, we'll join the COUNTRY table with CITY table on the basis of COUNTRYCODE (from CITY table) and CODE(from COUNTRY table). And check the continent should be 'Asia' in COUNTRY table where CODE is matching.
