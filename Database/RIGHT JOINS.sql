#RIGHT JOIN also known as RIGHT OUTER JOIN
#Their functionality is identical to LEFT JOINS, with the only difference being taht the direction of the operation is inverted
#RIGHT JOIN is seldom used
#When applying a RIGHT JOIN, all the records from the right table will be included in the reult set
#Values from the left tabe will be included only if their linking column contains a value coinciding or matching a value from the linking column of the right table.

#LEFT and RIGHT joins are perfect examples of one to many relationships
#EXAMPLE of RIGHT JOIN

SELECT
m.dept_no, m.emp_no, d.dept_name
FROM
dept_manager_dup m
RIGHT JOIN 
departments_dup d ON m.dept_no = d.dept_no
GROUP BY m.emp_no
ORDER BY m.dept_no;

SELECT
m.dept_no, d.emp_no, m.dept_name
FROM
departments_dup m
LEFT JOIN 
dept_manager d ON m.dept_no = d.dept_no
GROUP BY dept_no;

