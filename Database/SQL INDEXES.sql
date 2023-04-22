#MY SQL INDEXES: It helps to increase the speed of searches related to a table
#SYNTAX
CREATE INDEX index_name
ON table_name (column1, column2....);
#The parentheses serve us to indicate the column names on which our search will be based
#the content of parentheses must be fileds from your data table you will serch frequently

CREATE INDEX i_hire_date ON employees(hire_date); 
To check:
SELECT 
    *
FROM
    employees
WHERE
    hire_date > '2000-01-01'
    
#COMPOSITE INDEXES; Applicable to multiple columns
Check the time it takes before it is indexed 
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Georgi'
    AND last_name = 'Facello';
# It took 0.235sec
CREATE INDEX i_composite ON employees(first_name,last_name);
#It took 0.000sec after indexed
 
#EXCERCISE
#Task 1:
#Drop the i_hire_date index.

#SOLUTION
ALTER TABLE employees
DROP INDEX  i_hire_date;

#Task 2:

#Select all records from the â€˜salariesâ€™ table of people whose salary is higher than $89,000 per annum.
#Then, create an index on the â€˜salaryâ€™ column of that table, and check if it has sped up the search of the same SELECT statement.

#SOLUTION
SELECT 
    *
FROM
    salaries
WHERE
    salary > 89000;
    CREATE INDEX i_hire_date ON employees(hire_date); 

CREATE INDEX i_salary ON salaries(salary); 