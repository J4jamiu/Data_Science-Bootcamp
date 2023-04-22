#ORDER BY
#It helps to arrange the outcome/output as required
#ASC: Ascending---default
#DESC: Descending
#RETURN LIST OF ALL EMPLOYEES order by employee first_name decending
SELECT 
    *
FROM
    employees
ORDER BY first_name DESC;

##Select all lists of all employees order by  first_name and last name decending
SELECT 
    *
FROM
    employees
ORDER BY first_name, last_name DESC;

#Select all data from the "employees" table, ordering it by "hire date" in descending order.
#SOLUTION
SELECT 
*
FROM 
employees
ORDER BY hire_date DESC;