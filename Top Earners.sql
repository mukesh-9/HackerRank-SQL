Question:-
****************
We define an employee's total earnings to be their monthly salary*months worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. 
Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as 2 space-separated integers.

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
SELECT MAX(salary*months) , COUNT(*) FROM Employee WHERE (salary*months) = (SELECT Max(salary*months) FROM Employee);

Explain:- We need to get the maximum earning of any employee by multiply the salary with months. And we also count the number of employee who earning maximum salary.
          So first we calculate the maximum earning by MAX(salary*months), so our query will be like - "SELECT Max(salary*months) FROM Employee".
          After that we'll get the maximum salary and count of employee who earning maximum. So here we'll use our first query as subquery. Because the first query returning the maximum earning.
