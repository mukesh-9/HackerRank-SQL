Question:-
****************
Consider p1(a,b) and p2(c,d) to be two points on a 2D plane.
 - a happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
 - b happens to equal the minimum value in Western Longitude (LONG_W in STATION).
 - c happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
 - d happens to equal the maximum value in Western Longitude (LONG_W in STATION).
Query the Manhattan Distance between points  and  and round it to a scale of 4 decimal places.
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
SELECT ROUND(ABS(MIN(LAT_N) - MAX(LAT_N)) + ABS(MIN(LONG_W) - MAX(LONG_W)), 4) FROM STATION;

Explain:- Here, we have to calulate the Manhattan Distance.
  Manhattan Distance: The distance between two points measured along axes at right angles. In a plane with p1 at (x1, y1) and p2 at (x2, y2), 
  The formula is to calulate this distance is |x1 - x2| + |y1 - y2|. But in SQl, we'll use ABS(x-y) function insteas of |x-y|
  So the complete formula will be ABS(a-c) + ABS(b-d) as per question.
  So we need to apply this formula in query, and need to find the ROUND of the result from this formula.
  As we'll replace the values of a,b,c,d in the formula as per given in question, 
  -> a = Minimum/smallest LAT_N => MIN(LAT_N)
  -> b = Minimum/smallest LONG_W  => MIN(LONG_W)
  -> c = Maximum/largest LAT_N => MAX(LAT_N)
  -> d = Maximum/largest LONG_W => MAX(LONG_W)
  Query before applying values - SELECT ROUND(ABS(a - c) + ABS(b - d), 4) FROM STATION;
  Query after applying values - SELECT ROUND(ABS(MIN(LAT_N) - MAX(LAT_N)) + ABS(MIN(LONG_W) - MAX(LONG_W)), 4) FROM STATION;

  
