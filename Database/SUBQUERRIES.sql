#SQL Subqueries with IN nested inside WHERE : The are queres embedded in another query. usually  introduced by WHERE clause
#May return a single column, a single o/p 
#It amy return  a single value (a scalar ), a singlr row , column or an entire table
#U can have a lot more than one subquery in ur outer query
#it is possible to nest inner queries within other inner queries, in that case the sql engine would execute the innermost query first and then each subsequent query until it returns outermost query last.alter

SELECT 
    e.first_name, e.last_name
FROM
    employees e
WHERE
    E.emp_no IN (SELECT 
            dm.emp_no
        FROM
            dept_manager dm);
#SUBQUERY always be placed in a parenthesis. 
#It can be run separately
SELECT 
    dm.emp_no
FROM
    dept_manager dm;

#EXCERCISE
#Extract the information about all department managers who were hired between the 1st of January 1990 and the 1st of January 1995.
#SOLUTION
SELECT 
    e.last_name, e.first_name, e.emp_no
FROM
    employees e
WHERE
    e.hire_date BETWEEN '1990-01-01' AND '1995-01-01';

#SQL SUBQUERIES WITH EXISTS - NOT EXISTS NESTED INSIDE WHERE
#SUBQUERIES : Allows for better structuring of teh outer query
#Thus, each inner query can be thought of in isolation
#Hence the name SQL - Structured Query Language!
#In some situatons , the use of subqueries is much more intuitve compared to the use of complex joins and unions
#Many users prefers subqueryie simply bcos they offer ehnaced code reliabilty

#EXISTS: It checks whether certain rows are found within a subquery
#This check is conducted row by row
#It returns a Boolean values#If a row value of a subquery exists
#The operator returns TRUE otherwse EXIST return FALSE

#EXAMPLE
SELECT 
    e.first_name, e.last_name
FROM
    employees e
WHERE
    EXISTS( SELECT 
            *
        FROM
            dept_manager dm
        WHERE
            dm.emp_no = e.emp_no);
            
	#DIFF BTW EXISTS AND IN
    #EXISTS: It tests row values for existence nad it is quicker in retrieving large amount of datea
    
    #IN: Searches among values and faster with smaller datasets
    #ORDERBY should be used at the final subqueries

#EXCERCISE    
#Select the entire information for all employees whose job title is "Assistant Engineer".
Hint: To solve this exercise, use the 'employees' table.
********#SOLUTION
SELECT 
e.first_name, e.last_name, e.emp_no
FROM
employees e
WHERE
EXISTS(SELECT 
* FROM titles t
WHERE
 title = 'Assistant Manager'
 AND e.emp_no = t.emp_no);

select * from employees;

