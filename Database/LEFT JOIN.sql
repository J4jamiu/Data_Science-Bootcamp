##LEFT JOIN OR LEFT OUTER JOIN
#Its o/p allows us to see all matching records and those not matched in right table
#When working with left joins, the order in which you join tables matters
#REMOVE DUPLICATES FROM THE TWO TABLES (dept_manager_dup and departments_dup)
DELETE FROM dept_manager_dup
WHERE emp_no = '110228';

DELETE FROM departments_dup
WHERE dept_no = 'd009';

#ADD BACK THE INITIAL RECORDS
INSERT INTO dept_manager_dup
VALUES
(
'110228', 'd003','1992-03-21', '9999-01-01'
);

INSERT INTO departments_dup
VALUES
(
'd009', 'Customer Service'
);

select * from employees;
select * from dept_manager;
#LEFT JOIN

#EXAMPLE
SELECT
m.dept_no, m.emp_no, d.dept_name
FROM
dept_manager_dup m
LEFT JOIN 
departments_dup d ON m.dept_no = d.dept_no
GROUP BY m.emp_no
ORDER BY m.dept_no;

#EXCERCISE
#Join the 'employees' and the 'dept_manager' tables to return a subset of all the employees whose last name is Markovitch. See if the output contains a manager with that name.

#Select and return all columns from the two tables

SELECT 
    *
FROM
    employees;
    
#SOLUTION 1

SELECT 
    e.emp_no, e.last_name, d.dept_no
FROM
    employees e
        LEFT JOIN
    dept_manager d ON e.emp_no = d.emp_no
WHERE
    last_name = 'Markovitch'
GROUP BY e.emp_no
ORDER BY e.last_name ASC;

#IT CAN BE SOLVED AS BELOW ALSO:
SELECT 
    e.emp_no, e.last_name, d.dept_no,e.first_name, d.from_date
FROM
    employees e
        LEFT JOIN
    dept_manager d ON e.emp_no = d.emp_no
WHERE
    last_name = 'Markovitch'
GROUP BY e.emp_no
ORDER BY d.dept_no DESC;


