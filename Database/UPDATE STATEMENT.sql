#UPDATE
#use to update the data in a table
#SYNTAX
#UPDATE table_name
#SET column_1 = value_1, colume_2 = value_s...
#WHERE condition;
select * from employees limit 10;
#EXCERCISE
#Update the value of employee where first_name =Georgi to Jamiu
#SOLUTION
UPDATE employees
SET 
first_name = 'Jamiu',
last_name = 'Olabisi',
birth_date = '1998-1-03',
gender = 'M'
WHERE 
emp_no = 10001;

#TO check
select * from employees where emp_no = '10001';

#NB WHERE CLAUSE IS 'VERY CRUCIAL'

SELECT 
    *
FROM
    departments
ORDER BY dept_no;

#Change the "Business Analysis" department name to "Data Analysis".
#Hint: To solve this exercise, use the "departments" table.

UPDATE departments
SET 
dept_name = 'Data_Analysis',
dept_no = 'd090'
WHERE 
dept_no = 'd010';
select * from departments
limit 10;