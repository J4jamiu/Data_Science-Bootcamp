#IFNULL() and COALESCE()
#IFNULL() AND COALESCE() do not make any changes to the data set. They merely create an output where certain data values appear in place of NULL VALUES

SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;
#IFNULL(expression_1, expression_2) returns the first two of the two indicated values if the data found in the table is not null and returns the second value if there is a null value
#prints the returned value in the column of the output

SELECT 
    dept_no,
    IFNULL(dept_name,
            'Department name not provided') AS dept_name
FROM
    departments_dup;

#IFNULL() :It can not contain more than 2 parameters
#COALESCE() can contain more that 2 parameters

#SYNTAX: COALESCE(expression_1, expression_2...,expression_N
#If COALESCE() has two arguments, it works precisely like IFNULL()

#As shown below

SELECT 
    dept_no,
    COALESCE(dept_name,
            'Department name not provided') AS dept_name
FROM
    departments_dup;

#
SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_manager,
            dept_name,
            'NOTHING TO SHOW') AS dept_manager
FROM
    departments_dup
ORDER BY dept_no ASC;

##ANOTHER EXAMPLE OF USING COALESCE()
#COALESCE(expression_1)
SELECT 
    dept_no,
    dept_name,
    COALESCE('department manager name') AS fake_col
FROM
    department_dup;


#EXCERCISE: Create an output that return the values in dept name  where  values in department manager or deptmt name is NULL. Return empty where none of the condition is met. i.e where ever there is no vaue in dept name too

#SOLUTION

SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_manager, dept_name, 'EMPTY')
FROM
    departments_dup;

#EXCERCISE 2
#Select the department number and name from the ˜departments_dup™ table and add a third column where you name the department number (˜dept_no™) as ˜dept_info™. If ˜dept_no™ does not have a value, use ˜dept_name™.

SELECT 
    dept_name,
    dept_no,
    COALESCE(dept_no, dept_name) AS dept_info
FROM
    departments_dup;

#EXCERCISE 3
#Modify the code obtained from the previous exercise in the following way. Apply the IFNULL() function to the values from the first and second column, so that â˜N/A™ is displayed whenever a department number has no value, and â ˜Department name not provided™ is shown if there is no value for ˜dept_name™
#SOLUTION 1
SELECT 
    dept_name,
    IFNULL(dept_name,
            'Department Name Not Provided') AS dept_name
FROM
    departments_dup;

#SOLUTION 2
SELECT 
    dept_no, IFNULL(dept_no, 'N/A') AS dept_no
FROM
    departments_dup;