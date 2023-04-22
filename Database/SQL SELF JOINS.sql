#SQL SELF JOINS : it is used when a table is to join itself.
# If you would like to combine certain rows of a table with other rows of teh smae tables you need a self join
#The two tables will be identical to the table you will be using in the self join
#you can think of them as virtual projections of teh underlying , base table
#Self join will reference both implied tables and will treat them as two separate tables in its operations
#Dat used will come from one source
#Using aliases are MANDATORY
#You can use either both in the join , or you can filter one of them in the WHERE clause, and the other one in the join.alter

#EXAMPLE
#From emp_manager table, extract the record data only of those employees who are managers as well
#SOLUTION
SELECT 
    *
FROM
    emp_manager
ORDER BY emp_manager.emp_no
LIMIT 42;
	
SELECT 
    e1.*
FROM
    emp_manager e1
        JOIN
    emp_manager e2 ON e1.emp_no = e2.manager_no 
LIMIT 42;

#OR BY USING WHERE CLAUSE

SELECT 
    e1.*
FROM
    emp_manager e1
        JOIN
    emp_manager e2 ON e1.emp_no = e2.manager_no 
    WHERE 
    e2.emp_no IN (SELECT  manager_no
    FROM 
    emp_manager);

# OR BY USING WHERE IN 

SELECT 
    e1.*
FROM
    emp_manager e1
        JOIN
    emp_manager e2 ON e1.emp_no = e2.manager_no 
    WHERE 
    e2.emp_no IN (SELECT  manager_no
    FROM 
    emp_manager); 