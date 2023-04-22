#GROUP BY
#It is used to group results according to a specific field or fields
#GROUP BY : MUST be placed IMMEDIATELY after the WHERE conditions, if analyze
#and just before the ORDER BY clause
#SYNTAX

#SELECT column_1, column_2,...column_n
#FROM table_name
#WHERE conditions
#GROUP BY column_name(s)
#ORDER BY column_name(s);
#Example: Select all first_name from employees group by first_name ORDER BY first_name
SELECT 
    first_name, COUNT(first_name)
FROM
    employees
GROUP BY first_name
ORDER BY first_name;

#ALIASES
#It help to explain reason for using an aggregate function. used to rename a selection from your query
#instead of COUNT(first_name) in the above output as heading. it can be changed to  AS (name_count)
SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
GROUP BY first_name
ORDER BY first_name;


