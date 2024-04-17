Question:-
****************
Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
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

Where LAT_N is the northern latitude and LONG_W is the western longitude.

Solution:-
****************
SELECT DISTINCT CITY FROM STATION WHERE MOD(ID, 2) = 0;

Explain:- We need to select the CITY column from the table STATION (Given in question). And we'll check the ID should be a even number. 
So for this we use MOD() function that returns the remainder of a number divided by another number. For even or odd number we will divided the ID by 2. So, If remainder is 0 then the ID number is even else ID number will be odd.
