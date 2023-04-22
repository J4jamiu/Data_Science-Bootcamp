##THE NEW AND THE OLD JOIN SYNTAX

#JOIN
SELECT
m.dept_no, m.emp_no, d.dept_name
FROM
dept_manager_dup m
INNER JOIN 
departments_dup d ON m.dept_no = d.dept_no
GROUP BY m.emp_no
;
#THE OLD JOIN SYNTAX
SELECT 
t1.column_name, t1.column_name...,t2.column_name,
FROM
table_1 t1,
table_2 t2
WHERE t1.column_name = t2.column_name;

#EXAMPLE USING WHERE
SELECT 
m.dept_no, m.emp_no, d.dept_name
FROM 
dept_manager m,
departments_dup d
WHERE 
m.dept_no = d.dept_no
ORDER BY m.dept_no;

#N.B The retrieved output is identical
#NB Using WHERE is more time consuming
#N.B The WHERE syntax is perceived as morally ola and is rarely employed by professionals
#The JOIN syntax allows you to modify the connection between tables easily

#EXCERCISE
#Extract a list containing information about all managers' employee number, first and last name, department number, and hire date. Use the old type of join syntax to obtain the result.

SELECT 
    e.emp_no, e.first_name, e.last_name, d.dept_no, e.hire_date
FROM
    employees e,
    dept_manager d
WHERE
    e.emp_no = d.emp_no
ORDER BY first_name ASC;

#JOIN AND WHERE USED TOGETHER
 #JOIN + WHERE: Used for connecting the Employees and Salaries tab;es
 #WHERE: Used to define the condition/s that will determine which will be the connecting points between the two tables
 
 #EXAMPLE :
 # We need records  first name and last name and empl number of employees  whose salaries has been moved to 145,000 USD
 SELECT 
 e.emp_no, e.first_name, e.last_name, s.salary
 FROM employees e
 JOIN
 salaries s ON e.emp_no = s.emp_no
 WHERE 
 S.salary > 145000
 ;
 select * from titles;
 #EXCERCISE
 Select the first and last name, the hire date, and the job title of all employees whose first name is "Margareta" and have the last name "Markovitch".
 #SOLUTION
 
 SELECT
 e.first_name,e.last_name, e.hire_date, t.title, t.emp_no
 FROM
 employees e
 JOIN
 titles t ON  e.emp_no = t.emp_no
 WHERE
 e.first_name = 'Margareta'  AND e.last_name = 'MarKovitch';
 