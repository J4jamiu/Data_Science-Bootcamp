#LIKE - NOT LIKE OPERATORS (PATTERN MATCHING) 
#To extract list of all ppl whose first name contains Mar.
SELECT 
    *
FROM
    employees
WHERE
     first_name LIKE ('%Mar%');

#To extract list of all ppl whose first name begins with 'ar'.
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('ar%');

##To extract list of all ppl whose first name Ends with 'ar'.
SELECT 
    *
FROM
    employees
WHERE
     first_name LIKE ('%ar');


#Underscore helps to match a single character. e.g all firstname starting with Mar with only 4 letters

SELECT
     *
FROM 
     employees
WHERE
     first_name LIKE ('Mar_');
     
#My SQL is NOT case insensitive


###NOT LIKE 
# It is exact opposite of LIKE
#To extract list of all ppl whose first name does not contain Mar.
SELECT 
    *
FROM
    employees
WHERE
     first_name NOT LIKE ('%Mar%');

#To extract list of all ppl whose first name DOES NOT begins with 'ar'.
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT LIKE ('ar%');

##To extract list of all ppl whose first name Ends with 'ar'.
SELECT 
    *
FROM
    employees
WHERE
     first_name LIKE ('%ar');


#Underscore helps to match a single character. e.g all firstname THAT DOES NOT start with Mar with only 4 letters

SELECT
     *
FROM 
     employees
WHERE
     first_name NOT LIKE ('Mar_');
     
#Exercise
#Working with the employees table, use the LIKE operator to select the data about all individuals , whose firstnme starts with Mark;
#Specify that the name can be succeeded by any sequence of characters
#Rerieve a list with all employees who have been hired in the year 2000
#Retrieve a lsit of all employees whose employee number is written with 5 characters and starts with 1000
#SOLUTION
SELECT 
      *
FROM
     employees
WHERE 
     first_name LIKE ('Mark%');

#SOLUTION
SELECT 
      *
FROM
     employees
WHERE 
     hire_date LIKE ('2000%');
     
#SOLUTION
SELECT 
      *
FROM
     employees
WHERE 
     emp_no LIKE ('1000_');