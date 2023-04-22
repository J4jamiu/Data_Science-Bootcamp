#AND OPERATORS
#AND can be used with WHERE Operator
# It allows you to combine two statetements in the condition code block.alter
#AND binds SQL to meet both conditions enlisted in the WHERE clause simultaneously

#SYNTAX
#SELECT column_1, column_2,....column_n
#FROM table_name
#WHERE condition_1 AND condition_2;
#Example
SELECT 
     *
FROM 
     employees
WHERE 
     first_name = 'Denis' AND gender = 'M';
     # LOGICAL OPERATOR PRECEDENCE
#An SQL rule stating that in the execution of the query, the operator AND is applied first while the operator OR is applied second
####AND OR. SQL will always read condition around AND operator before OR
#Example
SELECT 
     *
FROM 
     employees
WHERE 
     last_name = 'Denis' AND (gender = 'M' OR gender ='F');

#EXCERCISE
#Retrieve a list with all female employees whose first name is Kellie.alter
#SOLUTION

SELECT
      *
FROM
    employees
WHERE
     first_name = 'Kellie';

#EXCERCISE 2
#Retrieve a lsit with all female employees whose first name is either Kellie or HARUNA

#SOLUTION
SELECT
     *
FROM 
    employees
WHERE 
     gender = 'F' AND (first_name = 'Aruna' OR 'Kellie');
