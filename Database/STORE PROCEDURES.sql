#SQL SYTAX FOR CREATION OF STORED PROCEDURES

#Step 1
#Type use table_name
#SEMI COLONS : Function has a state ent terminator
#Technically , they can also be called DELIMITERS
#By typing DELIMITERS $$, you will be able to use dolar symbol  as your delimiter
#Imagine using an SQL Database that uses only semi colons, it means only query 1 will b executed
#Temporary DELIMITER $$ or //
#Parameters are certain values that the procedure will use to complete the calculation
#Procedures ca be created without parameters but parenthesis must always be attached to its name
#USE Employees;
#DROP PROCEDURE IF EXISTS procedure_name;
DELIMITER $$
CREATE PROCEDURE select_employees()
BEGIN 
SELECT * FROM employees
LIMIT 1000;
END$$
DELIMITER ;
#REFRESH THE SCEMAS TO CONFIRM ITS CREATION
#We can call the procedure by 3 methods:
call employees.select_employees();
 #OR
 call select_employees();
 #OR
 #Go to SCHEMAS, Store procedure name, click on the tiny icon it will show you the o/p
 
 #EXCERCISE
 #Create a procedure that will provide the average salary of all employees. Then, call the procedure.
 #SOLUTION
 DROP PROCEDURE IF EXISTS select_Average_Salary;
# USE database_name
 DELIMITER $$
 CREATE PROCEDURE select_Average_Salary()
 BEGIN
 SELECT  ROUND(AVG(salary),2) AS Avg_Salary
 FROM salaries;
 END $$
 DELIMITER $$;
 
 #TO CALL THE STORE PROCEDURE:
 call select_Average_Salary();
 
  #OR
  
  call salaries.select_Average_Salary();
  
  #ANOTHER WAY TO CREATE STORE PROCEDURE IN MY SQL DB
  #Right click on Store procedure under schemas on the DB.
  #Select ''create store procedure''
  #Write your query and end it with SEMI COLON
  #Click apply, and apply then finish
  
  #TO DELETE STORE PROCEDURE
  #DROP PROCEDURE procedure name...
  # OR
  #Right click on the store procedure under schemas then click drop store procedure.
  
#STORED PROCEDURES WITH AN INPUT PARAMETER :This value is represented by IN
#Recall that a stored routine can perform a calculation that transforms an input value in an o/p value
#Store procedures can take an input value and then use it in the query or quries written in the body of the procedure

#EXAMPLE : Create a procedure call employee salary, indicate the data type to be used, 

USE employees;
DROP PROCEDURE IF EXISTS emp_salary;

DELIMITER $$
USE employees $$
CREATE PROCEDURE emp_salary (IN p_emp_no INTEGER)
BEGIN
SELECT
e.first_name, e.last_name, s.salary, s.from_date, s.to_date
FROM
employees e
JOIN
salaries s ON e.emp_no = s.emp_no
WHERE
e.emp_no = p_emp_no;
END $$
DELIMITER $$;
call employees.emp_salary(11300);

#EXCERCISE
#Create a procedure call employee average salary, indicate the data type to be used, 

#SOLUTION
USE employees;
DELIMITER $$
USE employees $$
CREATE PROCEDURE emp_avg_salary( IN p_emp_no INT)
BEGIN
SELECT
e.emp_no, e.first_name, s.avg(salary)
FROM 
employees e
JOIN
salaries s ON e.emp_no = s.emp_no
WHERE
s.emp_no = p_emp_no;
END $$
DELIMITER $$;
call employees.emp_avg_salary(110022);

