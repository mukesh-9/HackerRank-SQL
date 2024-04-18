Question:-
****************
Generate the following two result sets:
1. Query an alphabetically ordered list of all names in OCCUPATIONS, immediately followed by the first letter of each profession as a parenthetical (i.e.: enclosed in parentheses).
   For example: AnActorName(A), ADoctorName(D), AProfessorName(P), and ASingerName(S).
2. Query the number of ocurrences of each occupation in OCCUPATIONS. Sort the occurrences in ascending order, and output them in the following format:
   "There are a total of [occupation_count] [occupation]s."
    where [occupation_count] is the number of occurrences of an occupation in OCCUPATIONS and [occupation] is the lowercase occupation name. 
    If more than one Occupation has the same [occupation_count], they should be ordered alphabetically.
Note: There will be at least two entries in the table for each type of occupation.
The OCCUPATIONS table is described as follows:

+----------------+---------------------+
| Column         |   Type              |
+----------------+---------------------+
| Name           | String              |
| Occupation     | String              |
+----------------+---------------------+
  
Solution:-
****************
1. SELECT CONCAT(Name, '(', LEFT(Occupation,1), ')') AS Name FROM OCCUPATIONS ORDER BY Name;
2. SELECT CONCAT('There are a total of ', COUNT(Occupation),' ', LOWER(Occupation), 's.') AS Text FROM OCCUPATIONS GROUP BY Occupation ORDER BY Text;

Explain:- 1. Here, we need to get the name but with the first letter of its occupation by closing in parentheses ().
             So for this we'll use the CONCAT() function that concat (add/connect) the given strings.
             Example. CONCAT("My", "SQL"), OUTPUT will be "MySQL".
             Same as we pass the Name field, left parentesis '(', first character of occupation by "LOWER(Occupation)" function and right parenthesis ')'.
             So the CONCAT function will be look like- CONCAT(Name, '(', LOWER(Occupation), ')');
          2. Here, we need to create a sentence for each occupation with total number of occurrences. As well the occupation should be in lowercase.
              So same as first query, here we also use the CONCAT() function.
              So the CONCAT function will be look like - CONCAT('There are a total of ', COUNT(Occupation), ' ', LOWER(Occupation), 's.')
              We will use the COUNT() function to count the total occupation and group it by Occupation that help to count the total occurrence of each occupation.
          
