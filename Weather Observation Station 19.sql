Question:-
****************
Consider p1(a,c) and p2(b,d) to be two points on a 2D plane where (a,b) are the respective minimum and maximum values of Northern Latitude (LAT_N) 
and (c,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

Query the Euclidean Distance between points p1 and p2 and format your answer to display 4 decimal digits.
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

Solution:-
****************
SELECT ROUND(
          SQRT(
            POWER((MIN(LAT_N)-MAX(LAT_N)), 2) +  
            POWER((MIN(LONG_W)-MAX(LONG_W)), 2)
          ), 4) FROM STATION;

Explain:- Here, we have to calulate the Euclidean Distance.
  Euclidean Distance: Euclidean distance between two points in Euclidean space is the length of the line segment between them.
  The formula is to calulate this distance is "√(p1-q1)^2 + (p2-q2)^2. (Square root of (p1-q1)^2 + (p2-q2)^2). But in SQl, we'll use SQRT and POWER function for this
  So the complete formula will be SQRT(POWER((a-b), 2) + POWER((c-d), 2)) as per question.
  So we need to apply this formula in query, and need to find the ROUND of the result from this formula.
  We'll replace the values of a,b,c,d in the formula as per given in question, 
  -> a = Minimum/smallest LAT_N => MIN(LAT_N)
  -> b = Maximum/largest LAT_N  => MAX(LAT_N)
  -> c = Minimum/smallest LONG_W => MIN(LONG_W)
  -> d = Maximum/largest LONG_W => MAX(LONG_W)
  Query before applying values - SELECT ROUND(SQRT(POWER((a-b), 2) + POWER((c-d), 2)), 4) FROM STATION;
  Query after applying values - SELECT ROUND(SQRT(POWER((MIN(LAT_N)-MAX(LAT_N)), 2) +  POWER((MIN(LONG_W)-MAX(LONG_W)), 2)), 4) FROM STATION;

  
