#CROSS JOIN
#A cross join will take the values from a certain table and connect them with all the values from the t tables we want to join it with
#INNER JOIN: Typically connects only the MATCHING VALUES
#CROSS JOIN : Connects all the values , not just those taht match
#The Cartesian product of the values of two or more sets 
# Particularly useful when the tables in database are not well connected
#
SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
ORDER BY dm.emp_no , d.dept_no;

#IT CAN SOLVED AS BELOW:
SELECT 
    dm.*, d.*
FROM
    dept_manager dm,
    departments d
ORDER BY dm.emp_no , d.dept_no;

#ALSO IT CAN BE SOLVED AS 
SELECT
    dm.*, d.*
FROM
    dept_manager dm
   INNER JOIN
    departments d
ORDER BY dm.emp_no , d.dept_no;
# NB. Though all above methods are correct, but it very important we stick to standard metthod  i.e the first solution above that uses CROSS JOIN.
#Clarity is a substantial part of writing good code!
# We can CROSS JOIN more than two tables

SELECT 
    e.*, d.*
FROM
    deptartments d
        CROSS JOIN
    dept_manager dm
        JOIN
    employees e ON dm.emp_no = e.emp_no
WHERE
    d.dept_no <> dm.dep_no
ORDER BY dm.emp_no , d.dept_no;

#EXCERCISE
#Task 1:
#Use a CROSS JOIN to return a list with all possible combinations between managers from the dept_manager table and department number 9.

SELECT 
dm.*, d.*

FROM
dept_manager dm
CROSS JOIN
departments d
WHERE d.dept_no = 'd090'
ORDER BY dm.dept_no;
#EXCERCISE 2:
#Return a list with the first 10 employees with all the departments they can be assigned to. #Hint: Dont use LIMIT; use a WHERE clause.

#SOLUTION
SELECT 
    e.*, d.*
FROM
    employees e
        CROSS JOIN
    departments d
WHERE
    e.emp_no BETWEEN '10001' AND '10010';
    
