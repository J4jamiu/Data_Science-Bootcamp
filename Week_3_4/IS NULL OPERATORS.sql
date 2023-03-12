#IS NOT NULL- IS NULL OPERATORS
#It is used to extract values that are not null
#Syntax
#SELECT column_a, column_2,...column_n
#FROM table_name
#WHERE colun_name IS NOT NULL;
SELECT 
    *
FROM
    employees
WHERE
    first_name IS NOT NULL
#EXCERCISE
#Select the names of all departments whose department number value is not null
#SOLUTION
SELECT 
    *
FROM
    departments
WHERE
    dept_no IS NOT NULL;