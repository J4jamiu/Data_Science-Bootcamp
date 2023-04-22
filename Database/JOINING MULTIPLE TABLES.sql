#JOINING MORE THAN 2 TABLES 

#JOIN MORE THAN TWO TABLES IN SQL (HANDLE WITH CAUTION!!!)
#When creating a query that joins multiple tables, you must back it with strong intuiton and a crystal clear idea of how you would like the tables to be connected.
#You are required to provide the first name and last names of their depatments , hire dates of the managers and date they were promoted

#SOLUTION
#FIRST Check the tables that have required output, also check what is common in any two of them 
select * from dept_manager, dept_manager, departments;
 #(* from departments and depatment manager :emp_no is common, between departments and department manager :dept_no is common ;

SELECT
e.first_name,
e.last_name,
e.hire_date,
d.dept_name,
dm.from_date
FROM
employees e
JOIN
dept_manager dm ON e.emp_no = dm.emp_no
JOIN
departments d ON d.dept_no = dm.dept_no
ORDER BY from_date DESC;


#EXCERCISE
#Select all managers' first and last name, hire date, job title, start date, and department name.

#SOLUTION
#Check for tables that have the required data and common columns between them
SELECT 
    *
FROM
    dept_manager;
SELECT 
    *
FROM
    employees;
SELECT 
    *
FROM
    departments;
#(dept_manager=from_date, emp_no and dept_no)
#(employees=emp_no, first and last name,hire_date)
#(departments= dept_no,dept_name)

SELECT 
e.emp_no,
e.first_name,
e.last_name,
e.hire_date,
dm.from_date,
d.dept_name
FROM
Employees e
JOIN
dept_manager dm ON e.emp_no = dm.emp_no
JOIN
departments d ON d.dept_no = dm.dept_no
ORDER BY emp_no;
