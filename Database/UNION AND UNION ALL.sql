#UNION VS UNION ALL
# UNION ALL : It used 
#SYNTAX
#When uniting 2 identical tables: Union dispaly only distinc values in the o/prepare
#While Union all return all values including duplicate.
#Union use more memory and resources

#Excercise
#CREATE EMPLOYEES_DUP TABLE
DROP TABLE IF EXISTS employees_dup;
CREATE TABLE employees_dup (
    emp_no INT(11),
    birth_date DATE,
    first_name VARCHAR(14),
    last_name VARCHAR(16),
    gender ENUM('M', 'F'),
    hire_date DATE
);

#DUPLICATE THE STRUCTURE OF THE employees table

INSERT INTO employees_dup
SELECT
e.*
FROM 
employees e
LIMIT 20;
#check table
SELECT 
    *
FROM
    employees_dup;
#UNION ALL : Used to combine a few SELECT statements in a single o/prepare
#SYNTAX
SELECT 
    N columns
    FROM 
    table_1
    UNION ALL SELECT
    n columns
    FROM 
    table_2;
    #We have to select d same no of columns from each table
    #These columns should have the same name , should be in the d same order and  should contan related data types
    
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    NULL AS dept_no,
    NULL AS from_date
FROM
    employees_dup e
WHERE
    e.emp_no = 10001 
UNION ALL SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    m.dept_no,
    m.from_date
FROM
    dept_manager m;
    
    #USE UNION
    
        
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    NULL AS dept_no,
    NULL AS from_date
FROM
    employees_dup e
WHERE
    e.emp_no = 10001 
UNION  SELECT 
    NULL AS emp_no,
    NULL AS first_name,
    NULL AS last_name,
    m.dept_no,
    m.from_date
FROM
    dept_manager m;