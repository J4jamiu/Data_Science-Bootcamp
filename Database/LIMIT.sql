#LIMIT
#Go to edit menu, select prefereneces, select sql execution, uncheck the limit.
#Example select 10 highest paid employees.
SELECT 
    *
FROM
    Salaries
    ORDER BY salary DESC
    LIMIT 10;
    #LIMIT MUST BE THE LAST STATEMENT OF THE SQL QUERY....
    
    #Excercise

#Select the first 100 rows from the 'dept_emp' table.

SELECT 
*
FROM 
dept_emp
Order by emp_no DESC
LIMIT 100;