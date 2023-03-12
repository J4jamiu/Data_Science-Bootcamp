###SELECT
select * from sales;

SELECT 
    *
FROM
    employees
WHERE
    gender = 'M'
        AND last_name LIKE ('%arm%') AND birth_date LIKE ('%1962%');

SELECT first_name, last_name
FROM employees;
#Select all employees with name Denis
SELECT *
 FROM employees
 WHERE 
      first_name = 'Alvis';
      
#Select all employees with name Denis
SELECT *
 FROM employees
 WHERE 
      first_name = 'Alvis';
      
#Select all from Department table;

SELECT 
    *
FROM
    departments;

#Question : #Select all employees with name Denis

#Solution
SELECT *
      FROM
          employees
          WHERE first_name = 'Denis';