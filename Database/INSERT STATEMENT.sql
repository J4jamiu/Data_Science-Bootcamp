#INSERT STATEMENT

#SYNTAX

#INSERT INTO table_name (column_1, column_2, column ...n
#VALUES (value_1, value_2, value_...n);
#Create record of john smith, insert into employee and insert emp no, birth date, first name, last nam, gender, hire date
INSERT INTO employees
(
emp_no,
birth_date,
first_name,
last_name,
gender,
hire_date
)
VALUES
(
678910,
'1990-03-02',
'Jamiu',
'Omotoso',
'M',
'2000-03-01'
);
SELECT 
*
FROM 
employees
WHERE
first_name = 'Jamiu'
SELECT 
    *
FROM
    salaries
WHERE
    salary <= 61000
#Excercise
#Insert employee number, salary from-date and to date into salaries table
#SOLUTIONS
INSERT INTO salaries
(
emp_no,
salary,
from_date,
to_date
)
VALUES
(
33333,
500000,
'1999-02-09',
'2000-02-08'
);

#To check 

SELECT * FROM salaries where emp_no = 33333 AND salary = 500000;

#Excercise2 : Insert the following in to employees table: employee number, bithdate first and last name, gender and hire date
#SOLUTION
SELECT * FROM EMPLOYEES
LIMIT 2;

#SOLUTION
INSERT INTO employees
(
emp_no,
birth_date, 
first_name,
last_name,
gender, 
hire_date
)
VALUES
(
999903,
'1997-09-14',
'Johnathan',
'Creek',
'M',
'1999-01-01'
);

#Select ten records from the â€œtitlesâ€ table to get a better idea about its content.
#Then, in the same table, insert information about employee number 999903. State that he/she is a â€œSenior Engineerâ€, who has started working in this position on October 1st, 1997.
#At the end, sort the records from the â€œtitlesâ€ table in descending order to check if you have successfully inserted the new record.

#Solutions:
SELECT 
*
FROM
titles
LIMIT 10;

#SOLUTION
#employee number 999903, TITLE ,from date October 1st, 1997
INSERT INTO titles
(
emp_no,
title,
from_date
)
VALUES
(
999903,
'Senior Engineer',
'1997-10-01'
);

#
SELECT * from titles
order by emp_no DESC
LIMIT 10;