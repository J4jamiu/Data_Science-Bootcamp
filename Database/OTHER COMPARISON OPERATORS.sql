#OTHER COMPARISON OPERATORS
# EQUAL, NOT EQUAL(<> or !=), GRETAER THAN, LESS THAN, GREATER OR LESS THAN EQUAL TO) etc

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Mark';
#All employees that started work on or before 01-02-1985
SELECT 
    *
FROM
    employees
WHERE
    hire_date <= '1985-02-01';
#All employees that started work  before 01-02-1985

SELECT 
    *
FROM
    employees
WHERE
    hire_date < '1985-02-01';

#All employees that started work  on 01-02-1985

SELECT 
    *
FROM
    employees
WHERE
    hire_date = '1985-02-01';
    
###EXCERCISES
    
#Retrieve a list with data about all female employees who were hired in the year 2000 or after.

#Hint: If you solve the task correctly, SQL should return 7 rows.

#Extract a list with all employees' salaries higher than $150,000 per annum.

##SOLUTION 1
SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND hire_date >= ('2000-01-01');

#SOLUTION 2

SELECT 
    *
FROM
    salaries
WHERE
    salary >='150000';
