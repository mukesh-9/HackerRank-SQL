Question:-
****************
Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than $2000 per month who have been employees for less than 10 months. 
Sort your result by ascending employee_id.
The Employee table containing employee data for a company is described as follows:
  
+----------------+---------------------+
| Column         |   Type              |
+----------------+---------------------+
| employee_id    | Integer             |
| name           | String              |
| months         | Integer             |
| salary         | Integer             |
+----------------+---------------------+
  
where employee_id is an employee's ID number, name is their name, months is the total number of months they've been working for the company, and salary is the their monthly salary.


Solution:-
****************
SELECT name FROM Employee WHERE salary > 2000 AND months < 10 ORDER BY employee_id;

Explain:- Here, we just need to get the name from the table Employee with some conditions that are the salary should be greater than $2000 and the months of the employee should be less than 10. 
          And we have to sort the data in ascending order with employee_id.
