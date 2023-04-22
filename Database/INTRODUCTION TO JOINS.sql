###INTRODUCTION TO JOINS

#EXCERCISE
#If you currently have the â€˜departments_dupâ€™ table set up, use DROP COLUMN to remove the â€˜dept_managerâ€™ column from the â€˜departments_dupâ€™ table.
#Then, use CHANGE COLUMN to change the â€˜dept_noâ€™ and â€˜dept_nameâ€™ columns to NULL.
ALTER TABLE departments_dup
DROP  Column dept_manager;

#CHECK TO CONFIRM
SELECT * FROM departments_dup;


CREATE TABLE `departments_dup` (
  `dept_no` char(4) NOT NULL,
  `dept_name` varchar(40) DEFAULT NULL;
  
  DROP TABLE IF EXISTS dept_manager_dup;
CREATE TABLE dept_manager_dup (
  emp_no int(11) NOT NULL,
  dept_no char(4) NULL,
  from_date date NOT NULL,
  to_date date NULL
  );

INSERT INTO dept_manager_dup;

SELECT * from departments_dup;

INSERT INTO dept_manager_dup (emp_no, from_date)
VALUES                (999904, '2017-01-01'),
                            (999905, '2017-01-01'),
                            (999906, '2017-01-01'),
                            (999907, '2017-01-01');


USE dept_manager_dup;
COMMIT;

DELETE FROM dept_manager_dup
WHERE
    dept_no = 'd001'; 

INSERT INTO departments_dup
(
dept_no, 
dept_name)
VALUES               
(
'd012',
'Public Relations'
);

SELECT * FROM departments_dup;

DELETE FROM departments_dup
WHERE
    dept_no = 'd002'; 
    
    #INNER JOIN: It is used to return matching column/records in an SQL.
    #SYNTAX FOR INNER JOIN
    
    SELECT
    TABLE_1.COLUMN_NAME, TABLE_2.COLUMN_NAME
    FROM
    TABLE_1 T1
    JOIN
    TABLE_2 T2 ON TABLE_1.COLUMN_NAME = TABLE_2.COLUMN_NAME;
    
    #EXAMPLE
    SELECT m.dept_no, m.emp_no, d.dept_name
    FROM dept_manager_dup m
    INNER JOIN
    departments_dup d ON m.dept_no = d.dept_no
    ORDER BY m.dept_no;
    #ONLY NON NULL VALUES ARE RETURNED
    
#EXCERCISE
#Extract a list containing information about all managers' employee number, first and last name, department number, and hire date.
#FIRST Select all from relvant tables to see which of them have the required details and common column/s.

SELECT * FROM employees; 
SELECT * FROM  dept_manager;

SELECT 
d.emp_no, d.dept_no, e.gender, e.birth_date,e.first_name, e.last_name, e.hire_date
FROM employees e
INNER JOIN
dept_manager d ON d.emp_no = e.emp_no;

SELECT * FROM employees;

