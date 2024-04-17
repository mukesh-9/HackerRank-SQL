Question:-
****************
Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

+-------------+---------------------+
| Field       |   Type              |
+-------------+---------------------+
| ID          | NUMBER              |
| CITY        | VARCHAR(21)         |
| STATE       | VARCHAR(2)          |
| LAT_N       | NUMBER              |
| LONG_W      | NUMBER              |
+-------------+---------------------+

where LAT_N is the northern latitude and LONG_W is the western longitude.

Solution:-
****************
Query1: SELECT DISTINCT CITY FROM STATION WHERE CITY REGEXP '^[aeiouAEIOU]';

Query2: SELECT DISTINCT CITY FROM STATION WHERE 
        CITY LIKE 'a%' 
        OR CITY LIKE 'e%' 
        OR CITY LIKE 'i%' 
        OR CITY LIKE 'o%' 
        OR CITY LIKE 'u%' 
        OR CITY LIKE 'A%' 
        OR CITY LIKE 'E%' 
        OR CITY LIKE 'I%' 
        OR CITY LIKE 'O%' 
        OR CITY LIKE 'U%';

Explain:- We can do this by two query, one by REGEXP(Regular Expression) and second by 'LIKE' operator. 
In query1, In the Regular Expression ('^[aeiouAEIOU]'), ^ symbol denotes the start of a string (city name) and it checks the given characters (aeiouAEIOU) are at the starting of the city name.
In query2, we use 'LIKE' operator and we set the first character from the vowels (a,e,i,o,u) with both lowercase and uppercase. And the '%' symbol denotes any remaining charcters of the city name.
Here we also use 'OR' operator to check that any vowel is present at the starting of city name.
