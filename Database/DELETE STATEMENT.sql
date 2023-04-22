#DELETE

#SYNTAX
#DELETE FROM table_name
#WHERE conditions;

#Before we go aahed we need to commit so we can roll back later
USE employees;
commit;

select * 
from titles
WHERE title = 'Senior Engineer' AND emp_no = '999903'
ORDER BY emp_no DESC;


DELETE FROM titles
WHERE emp_no = 999903;
#Check to be sure it was deleted

select * 
from titles
where emp_no = 999903
ORDER BY emp_no DESC;

#We can roll back
DELETE FROM titles
WHERE emp_no = 999903;
ROLLBACK;

#To confirm  

select * 
from titles
ORDER BY emp_no DESC;


#EXCERCISE
#Remove the department number 10 record from the "departments" table.
#Hint: To solve this exercise, use the "departments" table.
SELECT * FROM departments;

#first commit to guarranty ROLL BACK
USE departments;
COMMIT;

DELETE  FROM departments
WHERE  dept_no = 'd009';

# Roll back 

ROLLBACK;

