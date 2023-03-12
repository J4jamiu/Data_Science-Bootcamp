#HAVING CLAUSE  : It aklways follows the FROM statement
#after HAVING, you can have a condition with an aggregate function, while WHERE cannot
#use aggregate functions with its conditions.
SELECT 
*
FROM
    employees
HAVING
hire_date >= '2000-01-01';

#DIFF BET HAVING AND WHERE
#after HAVING, you can have a condition with an aggregate function, while WHERE cannot
#use aggregate functions with its conditions.
#EXAMPLE: ''Extract all fist names that appear more than 250 times in the 'employees' table''
SELECT 
first_name, COUNT(first_name) AS names_count
FROM
employees
GROUP BY first_name
HAVING COUNT(first_name) >250
ORDER BY (first_name) DESC;
#NB if WHERE  is used next, there will be an error of invalid Group name

#Excercise
#Select all employees whose average salary is higher than $120,000 per annum.
#SOLUTION

SELECT 
    AVG(salary) AS Avg_Sal, emp_no AS Emp_Code
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000
ORDER BY emp_no DESC;

#WHERE VS HAVING CLAUSES
#Where alows us to set conditions (applied before re-organizing the o/p into groups) that refer to subsets of individual rows
#Exercise: Extract the list of all names that are encountered less than 200 times. 
#Let the data refer to the people hired after the 1st of January 1999.
#SOLUTIONS
SELECT
first_name, COUNT(first_name) AS name_count
FROM 
employees
WHERE hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) <200
ORDER BY first_name DESC; 
