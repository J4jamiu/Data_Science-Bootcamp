#USING AGGREGATE FUNCTIONS WITH JOINS
#Find the SUM of salaries of men and women in the company by gender
SELECT 
e.gender, ROUND(SUM(s.salary), 2) AS Total_salary_Per_Gender
FROM
employees e
JOIN
salaries s ON e.emp_no = s.emp_no
GROUP BY gender;


#EXAMPLE
#Find the Minimum salaries of men and women in the company by gender
SELECT 
e.gender, ROUND(MIN(s.salary)) AS Min_salary_Per_Gender
FROM
employees e
JOIN
salaries s ON e.emp_no = s.emp_no
GROUP BY gender;

#EXCERCISE
#Find the Maximum salaries of men and women in the company by gender
SELECT 
e.gender, MAX(s.salary) AS Max_salary_Per_Gender
FROM
employees e
JOIN
salaries s ON e.emp_no = s.emp_no
GROUP BY gender;

#EXCERCISE
#Find the average salaries of men and women in the company by gender
SELECT 
e.gender, ROUND(AVG(s.salary),2) AS Average_salary_Per_Gender
FROM
employees e
JOIN
salaries s ON e.emp_no = s.emp_no
GROUP BY gender;

#EXCERCISE
#How many male and how many female managers do we have in the "employees" database?
SELECT  gender, COUNT(gender) AS N0_of_Gender
FROM
employees e

GROUP BY gender;
