#SELECT DISTINCT 
#To select no duplicate values
#SYNTAX
#SELECT DISTINCT column_1, column_2, column...n
#FROM table_name
#Example
SELECT DISTINCT
    gender
FROM
    employees

#Obtain a list with all different "hire dates" from the "employees" table.

#SOLUTIONS
SELECT DISTINCT
    hire_date
FROM
    employees