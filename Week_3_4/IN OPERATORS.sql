#IN OPERATOR

SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Cathie' , 'Mark', 'Nathan');
    
    # IN operator allow sql to return all the information in quotations if they exist on the database

#NOT IN OPERATORS

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('Cathie' , 'Mark', 'Nathan');
    
#Exercise 1 
#Use the IN operator to select all individuals from the employees table, whose first nmee is either Denis or Elvis.
SELECT 
      *
FROM
    employees
WHERE
     first_name IN ('Denis', 'Elvis'); 

#Excercise 2
#Extract all records from the employees table , aside from those with employees nameds John, Mark, or Jacob
#SOLUTION

SELECT 
      *
FROM 
	employees
WHERE 
    first_name NOT IN ('John', 'Mark', 'Jacob');