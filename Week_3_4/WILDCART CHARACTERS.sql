#WILDCARD CHARACTERS
#  % - Is a substitute for a sequence of characters
#LIKE ('Mar%')--Will return; Mark, Martin, Margaret etc
 #_(Underscore)- Helps you match a single character
 #LIKE('Mar_') Mark Marc, Marv, Marl...
 
 #EXCERCISE
 #Extract all individuals from the employees table whose first name contains Jack
 
 #Once you have done that , extract another list containing the names of employees that do not contain 'Jack'
 
 #SOLUTION 1
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%Jack%');
#SOLUTION 2
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('%Jack%');