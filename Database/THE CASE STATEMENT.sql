/* THE CASE STATEMENT
SYNTAX 
SELECT
coulmn_name(s)
CASE condition_field
WHEN condition_field_value_1 THEN result_1
WHEN condition_field_value_2 THEN result_2
.....
ELSE
END AS 
FROM 
table_name;

EXAMPLE 
SELECT 
emp_no,
first_name,
last_name,
CASE
WHEN gender = 'M' THEN 'Male'
ELSE 'Female'
END AS gender
FROM 
employees;

SELECT 
dm.emp_no,
e.first_name,
e.last_name,
MAX(s.salary) - MIN(s.salary) AS salary_Difference,
CASE
WHEN MAX(s.salary) - MIN(s.salary) > 30000 THEN 'Salary was raised more than $30,000'
WHEN MAX(s.salary) - MIN(s.salary) BETWEEN 20000 AND 30000 THEN 'Salary was raised more than $20,000 but less than 30,000'

ELSE 'salary was raised by less than $20,000'

END AS salary_increase
FROM 
dept_manager dm
JOIN
employees e ON e.emp_no = dm.emp_no
JOIN
salaries s ON s.emp_no = dm.emp_no
GROUP BY s.emp_no;

Task 1:
Similar to the exercises done in the lecture, obtain a result set containing the employee number, first name, and last name of all employees with a number higher than 109990. Create a fourth column in the query, indicating whether this employee is also a manager, according to the data provided in the dept_manager table, or a regular employee.

Task 2:
Extract a dataset containing the following information about the managers: employee number, first name, and last name. Add two columns at the end â€“ one showing the difference between the maximum and minimum salary of that employee, and another one saying whether this salary raise was higher than $30,000 or NOT.

If possible, provide more than one solution.

Task 3:
Extract the employee number, first name, and last name of the first 100 employees, and add a fourth column, called â€œcurrent_employeeâ€ saying â€œIs still employedâ€ if the employee is still working in the company, or â€œNot an employee anymoreâ€ if they arenâ€™t.

Hint: Youâ€™ll need to use data from both the â€˜employeesâ€™ and the â€˜dept_empâ€™ table to solve this exercise.