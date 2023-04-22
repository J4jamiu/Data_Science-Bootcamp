#STORED PROCEDURES WITH AN OUTPUT PARAMETER
#SYNTAX
DELIMITER $$
CREATE PROCEDURE procedure_name(in parameter, out parameter)
BEGIN
SELECT * FROM employees
LIMIT 1000;
END$$
DELIMITER ;
#OUT PARAMETER : Represents the variable containing the o/p values of the operation executed by the query of the stored procedure
#EXAMPLE

USE employees;
DROP PROCEDURE IF EXISTS emp_avg_salary_out;
DELIMITER $$
CREATE PROCEDURE emp_avg_salary_out( IN p_emp_no INT, OUT p_avg_salary DECIMAL(10,2))
BEGIN
SELECT
AVG(s.salary)
INTO p_avg_salary FROM
employees e
JOIN
salaries s ON e.emp_no = s.emp_no
WHERE
s.emp_no = p_emp_no;
END $$
DELIMITER $$;

call employees.emp_avg_salary_out(11300, @p_avg_salary);

#EXCERCISE : Create a procedure called "emp_info" that uses as parameters the first and the last name of an individual, and returns their employee number.
USE employees;
DROP PROCEDURE IF EXISTS emp_info_out;
DELIMITER $$
CREATE PROCEDURE emp_info_out( IN p_first_name CHAR(14), OUT p_emp_no INT)
BEGIN
SELECT
d.emp_no
INTO p_emp_no FROM
dept_no d
JOIN
employees e  ON e.emp_no = d.emp_no
WHERE
d.emp_no = p_first_name;
END $$
DELIMITER $$;
Call employees.

SELECT 
    e1.*
FROM
    emp_manager e1
        JOIN
    emp_manager e2 ON e1.emp_no = e2.manager_no
    
#
DROP PROCEDURE emp_info;
USE employees;
DELIMITER $$
CREATE PROCEDURE emp_info(IN p_first_name VARCHAR(14), IN p_last_name VARCHAR(16), OUT p_emp_no INTEGER)
	BEGIN
		SELECT e.emp_no INTO p_emp_no
			FROM employees e
            WHERE e.first_name =p_first_name  AND e.last_name = p_last_name;
    END$$
DELIMITER $$;

