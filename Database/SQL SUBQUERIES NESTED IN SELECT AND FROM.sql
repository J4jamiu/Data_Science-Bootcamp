#SQL SUBQUERIES NESTED IN SELECT AND FROM STATEMENTS
#Assign employee number 110022 as a manager to all employees from 10001 to 10020, and empoyee number 110039 as a manger to all employees from 10021 to 10040
#Solution
SELECT 
    A.*
FROM
    (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    dm.emp_no
                FROM
                    dept_manager dm
                WHERE
                    dm.emp_no = 110022) AS manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no <= 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no) AS A
     
UNION SELECT 
    B.*
FROM
    (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    dm.emp_no
                FROM
                    dept_manager dm
                WHERE
                    dm.emp_no = 110039) AS manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no > 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no) AS B
    LIMIT 40;
 
 #Assign employee number 110022 as a manager to all employees from 10001 to 10020, and empoyee number 110039 as a manger to all employees from 10021 to 10040
#SOLUTION

SELECT 
    A.*
FROM
    (SELECT 
        e.emp_no AS Employee_ID,
            MIN(de.dept_no) AS Dept_Code,
            (SELECT 
                    dm.emp_no
                FROM
                    dept_manager dm
                WHERE
                    dm.emp_no = 110022) AS Dept_Manager
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no <= 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no) AS A 
UNION SELECT 
    B.*
FROM
    (SELECT 
        e.emp_no AS Employee_ID,
            MIN(de.dept_no) AS Dept_Code,
            (SELECT 
                    dm.emp_no
                FROM
                    dept_manager dm
                WHERE
                    dm.emp_no = 110039) AS Dept_Manager
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no > 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no) AS B
LIMIT 40;

#EXCERCISE
#Task 1:
#Starting your code with â€œDROP TABLEâ€, create a table called â€œemp_managerâ€ (emp_no â€“ integer of 11, not null; dept_no â€“ CHAR of 4, null; manager_no â€“ integer of 11, not null).
#SOLUTION
#FIRST COMMIT to guarranty Rollback later if necessary.
COMMIT;

CREATE TABLE emp_manager 
(
    emp_no INT(11) NOT NULL,
    dept_no CHAR(4) NULL,
    manager_no INT(11) NOT NULL
);

#Task 2:
#Fill emp_manager with data about employees, the number of the department they are working in, and their managers.

#Your query skeleton must be:

#Insert INTO emp_manager SELECT
#U.*
#FROM 
                 (A)
#UNION (B) UNION (C) UNION (D) AS U;

#A and B should be the same subsets used in the last lecture (SQL Subqueries Nested in SELECT and FROM). In other words, assign employee number 110022 as a manager to all employees from 10001 to 10020 (this must be subset A), and employee number 110039 as a manager to all employees from 10021 to 10040 (this must be subset B).

#Use the structure of subset A to create subset C, where you must assign employee number 110039 as a manager to employee 110022.

#Following the same logic, create subset D. Here you must do the opposite - assign employee 110022 as a manager to employee 110039.

#Your output must contain 42 rows.

#Good luck!

#SOLUTION

DROP TABLE emp_manager;

Insert into emp_manager 
 Select U.* from  
 (SELECT 
    A.*
FROM
    (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110022) AS manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no <= 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no) AS A 
    
UNION SELECT 
    B.*
FROM
    (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110039) AS manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no > 10020
    GROUP BY e.emp_no
    ORDER BY e.emp_no
    LIMIT 20) AS B  
    
UNION SELECT 
    C.*
FROM
    (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110039) AS manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no = 110022
    GROUP BY e.emp_no
    ORDER BY e.emp_no) AS C
    
    UNION SELECT 
    D.*
FROM
    (SELECT 
        e.emp_no AS employee_ID,
            MIN(de.dept_no) AS department_code,
            (SELECT 
                    emp_no
                FROM
                    dept_manager
                WHERE
                    emp_no = 110022) AS manager_ID
    FROM
        employees e
    JOIN dept_emp de ON e.emp_no = de.emp_no
    WHERE
        e.emp_no = 110039
    GROUP BY e.emp_no
    ORDER BY e.emp_no) AS D) As U; 
  
  -- query the above union set to view output
 Select * from emp_manager;  

