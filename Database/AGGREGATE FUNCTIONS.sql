#INTRODUCTION TO AGGREGATE FUNCTIONS
#AGGREGATE FUNCTIONS: They are applied on multiple rows of a single column 
#of a table and return an output of a single value. They ignore NULL value unless told not to
#COUNT(): It count the number of non null records in a field. it i usually used with the reserved word 'DISTINCT'
#SYNTAX:
#SELECT COUNT(column_name)
#FROM table_name;
#NB Parentesis after count must not have a space
#How many employees are registered in our database 

SELECT 
    COUNT(emp_no)
FROM
    employees;
    
#How many different name are found in employee database
SELECT 
    COUNT(DISTINCT first_name)
FROM
    employees;
    
#EXCERCISE
#How many annual contracts with a value higher than or equal to $100,000 have been registered in the salaries table? 
#How many managers do we have in the â€œemployeesâ€ database? Use the star symbol (*) in your code to solve this exercise.
#SOLUTIONS
SELECT 
    *
FROM
    salaries
WHERE
    salary >= '100000';   
    
SELECT 
COUNT(DISTINCT emp_no)
FROM 
employees;

#Excercise
#Select all data from the "employees" table, ordering it by "hire date" in descending order.
#SOLUTION
SELECT 
    *
FROM
    employees
ORDER BY hire_date DESC;

#SUM(): Sum all the non null vlue in a column
#MIN(): Returns the minimum value from the entire list
#MAX(): Return the maximum vaue from the entire list
#AVG(): Calculate the average of all non null value belonging to a certain column of a table

 