###AGGREGATE FUNCTIONS
# They garther data from rows of a table , then aggregate it into a single value
##INPUT: Information contained in multiple rows
##OUTPUT:The single value they provide
#COUNT(), SUM(), MIN(), MAX(), AVG().
#COUNT() work for numeric and non numeric 

#while others work with only NUMERIC DATA
#AGGRE FUNCT: ussualy ignore null values, only if u have indicated a specific column name within the paentheses
#COUNT is applicable to numeric and non numeric values
#Count(*) returns the number of all rows of the table , NULL Vlaues included
#How many employees start date are in database 

SELECT
COUNT(DISTINCT from_date)
FROM
salaries;
#NB..No space must be left between Parentheses and COUNT Statement COUNT() Not COUNT ()...

###SUM()
#It is used to summ all NUMERIC DATA in a table
#Let sum all salary column in the table

SELECT 
SUM(salary)
FROM
salaries; 

#MAX() AND MIN(): RETURNS MAXIMUM AND MINIMU VALUES
#Which salary is the maximum
SELECT 
MAX(salary)
FROM
salaries; 


#What is the Minimum salary paid
SELECT 
MIN(salary)
FROM
salaries; 

#EXCERCISE
#Which is the lowest employee number in the database?

#Which is the highest employee number in the database?

#SOLUTION
SELECT 
MIN(emp_no)
FROM
employees;

#SOLUTION 2
#SOLUTION
SELECT 
MAX(emp_no)
FROM
employees;

##AVG() : It extract average value of all non values in a field

#What is the average salary employees receive

SELECT
AVG(salary)
FROM
salaries;

#EXCERCISE:

#What is the average annual salary paid to employees who started after the 1st of January 1997?

SELECT 
AVG(salary)
FROM salaries
where from_date > '1997-01-01';

##ROUND() : is a numeric or math function u can use
#It is ussually applied to the single values that aggregate functions return
 #ROUND(#, decimal_places)
 #Example1 : Round up the average salary into complete numbers
 #Example2 :Round up the average salary into two decimal places
#SOLUTION 1
SELECT
ROUND(AVG(salary))
FROM
salaries;

#SOLUTION2
SELECT
ROUND(AVG(salary),2)
FROM
salaries;