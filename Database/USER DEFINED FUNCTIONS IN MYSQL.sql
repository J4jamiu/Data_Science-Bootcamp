?* USER DEFINED FUNCTIONS IN MY SQL
SYNTAX :
DELIMITER $$
CREATE FUNCTION function_name(parameter data_type) RETURNS data_type
DECLARE variable_name date_type
BEGIN
 SELECT........
 RETURN variable_name
 END $$
 DELIMITER ;
 
 TECHNICAL DIFFERENCES BTW STORED PROCEDURE AND USER DEFINED FUNCTION
 SP. Doeas not return a vlue
 
 UDF: Returns a value
 
 We use CALL procedure to recall stored procedure
 while SELECT FUNCTION IS USED FOR UDF
 
 CONCEPTUAL DIFFERENCES
 SP Can have multiple OUT Parameters
 UDF Can only return A SINGLE value only
 
 Including a procedure in a SELECT statement is impossible
 UDF : U  can easily include a function as one of the columns inside a SELECT Statement
 
 #EXCERCISE
 Create a function called "emp_info" that takes for parameters the first and last name of an employee, and returns the salary from the newest contract of that employee.

Hint: In the BEGIN-END block of this program, you need to declare and use two variables - v_max_from_date that will be of the DATE type, and v_salary, that will be of the DECIMAL (10,2) type.

Finally, select this function.

#SOLUTION
##DROP FUNCTION IF EXISTS f_employees_emp_info;
DELIMITER $$
Create function f_employees_emp_info (p_first_name Varchar (255), p_last_name Varchar (255)) Returns Decimal(10, 2)
 Deterministic
 Begin
 
 Declare v_max_from_date Date;
 Declare v_salary Decimal(10, 2);
 
SELECT 
    MAX(from_date)
INTO v_max_from_date FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.first_name = p_first_name
        AND e.last_name = p_last_name;

SELECT 
    s.salary
INTO v_salary FROM
    employees e
        JOIN
    salaries s ON e.emp_no = s.emp_no
WHERE
    e.first_name = p_first_name
        AND e.last_name = p_last_name
        AND s.from_date = v_max_from_date;
 Return v_salary; 
 End$$
 
 Delimiter ;
 
 
 
 
 