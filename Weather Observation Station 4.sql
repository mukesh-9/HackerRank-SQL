Question:-
****************
Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
The STATION table is described as follows:

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
For example, if there are three records in the table with CITY values 'New York', 'New York', 'Bengalaru', there are 2 different city names: 'New York' and 'Bengalaru'.
The query returns , because total number of records - number of unique city names = 3-2=1;

Solution:-
****************
SELECT COUNT(CITY)-COUNT(DISTINCT CITY) FROM STATION;

Explain:- Here, we need to count all the cities from the table by COUNT() function. After that we need to count the cities again but now without duplication that means one city will be count only once.
So for this we'll use DISTINCT keyword for the city. So first it will count the city for each row after it count distinct city and then return the result with substraction.
