#TRANSACTION CONTROL LANGUAGE
#ROLL BACK AND COMMIT
#If u have used commit 10 times, roll back back can only return you to the last commit done.
#DELETE

#SYNTAX
#DELETE FROM table_name
#WHERE conditions;

#Before we go aahed we need to commit so we can roll back later
USE employees;
COMMIT;

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

DELETE FROM departments