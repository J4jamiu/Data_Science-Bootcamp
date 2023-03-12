##BETWEEN ....AND , NOT BETWEEN OPERATORS
#Used for Date values and applied to strings and numbers
#It helps us designate the interval to which a given value belongs
#Example
#To obtain the list of employees hired between 1st Jan 1990 to 1st Jan 2000
#SOLUTION
SELECT 
    *
FROM
    employees
WHERE
    hire_date BETWEEN '1990-01-01' AND '2000-01-01';
 
#EXCERCISES
#1. Select all the information from the "salaries" table regarding contracts from 66,000 to 70,000 dollars per year.
#2.Retrieve a list with all individuals whose employee number is not between "10004" and "10012".
#3. Select the names of all departments with numbers between "d003" and "d006".

#SOLUTION 1
SELECT 
    *
FROM
    salaries
WHERE
    salary BETWEEN '66000' AND '70000';


#SOLUTION2
SELECT 
*
FROM 
departments
WHERE
emp_no NOT BETWEEN "10004" and "10012";

#SOLUTION3

SELECT 
    *
FROM
    departments
WHERE
    dept_no BETWEEN 'd003' AND 'd006';
