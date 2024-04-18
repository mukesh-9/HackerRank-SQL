Question:-
****************
Query the Name of any student in STUDENTS who scored higher than 75  Marks. Order your output by the last three characters of each name. 
If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
The STUDENTS table is described as follows:

+----------------+---------------------+
| Coulmn         |   Type              |
+----------------+---------------------+
| ID             | Integer             |
| Name           | String              |
| Marks          | Integer             |
+----------------+---------------------+

Solution:-
****************
SELECT Name FROM STUDENTS WHERE Marks > 75 ORDER BY RIGHT(Name, 3), ID;

Explain:- Here, we have to get the Name from the table STUDENTS. And we have to check the student marks also that should be higher than 75. 
  We'll set the order of the data as per the last three characters of the student Name for this we use RIGHT() function, and after we also set the order with studnt ID.
        
