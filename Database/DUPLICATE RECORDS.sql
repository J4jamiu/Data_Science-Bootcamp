#DUPLICATE RECORDS
#Identical rows on SQL Table
# They are not allowed on the DB or data table. Regular practice is to clean the data
#Insert duplicate records into dept manager dup table and departmests-dup tables

INSERT INTO dept_manager_dup
VALUES 
('110228', 'd003','1992-03-21', '9999-01-01');

INSERT INTO departments_dup
VALUES 
('d009', 'Customer Service');

#CHECK THE TWO TABLES FOR THE INSERTED RECORDS
SELECT * FROM dept_manager_dup
ORDER BY dept_no ASC;

SELECT * FROM departments_dup
ORDER BY dept_no ASC;

#TO REMOVE DUPLICATE RECORDS : GROUP the JOIN Statement by the field that DIFFERS MOST AMONG RECORDS

Select m.dept_no, m.emp_no, d.dept_name  
from dept_manager_dup m 
Join
departments_dup d on m.dept_no = d.dept_no 
group by m.emp_no # always group the joins by the field that differs most among records
order by m.dept_no;

SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));







SELECT 
    m.dept_no, m.emp_no, d.dept_name
FROM
    dept_manager_dup m
        JOIN
    departments_dup d ON m.dept_no = d.dept_no
GROUP BY m.emp_no
ORDER BY m.dept_no;