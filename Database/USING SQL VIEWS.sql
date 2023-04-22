/* Using SQL views
View: A virtual table whose contents are obtained from an existing table(s), called Base tables 
	  the retrieval happens through an SQL statement, incorporated into the view
SQL View: think of a view object as a view into the base table.
		  the view itself does not contain any real data; the data is physically stored in the base table.
          the view simply shows the data contained in the base table.*/
Select * from dept_emp;

Select 
emp_no, from_date, to_date, count(emp_no) As Num
from
dept_emp
group by emp_no
Having Num > 1;

-- to visualize only the period emcompassing the last contract of each employee

CREATE OR REPLACE VIEW v_dept_emp_latest_date AS
    SELECT 
        emp_no, MAX(from_date) AS from_date, MAX(to_date) AS to_date
    FROM
        dept_emp
    GROUP BY emp_no;
 
 SELECT 
        emp_no, MAX(from_date) AS from_date, MAX(to_date) AS to_date
    FROM
        dept_emp
    GROUP BY emp_no; -- base table showing last from and to date
    
-- check views session to see the view created
-- you can also click the DDL to see the view output
    
select * from employees.v_dept_emp_latest_date;

/* Why views?
- Imagine a database is used by a large web application being accessed by many users
- If you would like to allow each user to see this table, istead of typing the SQL code each time
- A view allows each user see the result set on their user space.
- A view also acts a shortcut for writing the same SELECT statement every time a new request has been made.
- It saves a lot of coding time and since it is written only once, It occupies no extra memory
-- acts as a dynamic table because it instantly reflects data and structural charges in the base tables 
Note:
	- Views are advantageous when used logically
    - They are not real, physical data sets, meaning we cannot insert or update the info that has already been extracted
    - They should be seen as temporary virtual data tables retrieving info from base tables.*/
   
-- Assignment: Create a view that will extract the average salary of all managers registered in the database. Round this value to the nearest cent.
CREATE OR REPLACE VIEW v_managers_avg_salary AS
    SELECT 
        m.emp_no, Round(Avg(salary), 2) As Avg_salary
    FROM 
		salaries s
	Join
    dept_manager m
    On s.emp_no = m.emp_no;
    
