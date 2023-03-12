#OR OPERATOR: use for condition set on the same column
SELECT 
      *
FROM
    customers
    
Where 
     condition_1 = ''A''or condition_2 = ''B'' ;
     first_name = 'denis' AND first_name = ''Elvis''

#WHERE TO USE AND , OR TOGETHER
SELECT 
      * 
FROM 
     employees
WHERE 
      last_name = 'Denis' AND (gender = 'M' or 'F');

#N.B parenthesis was used to introduce codition under AND.alter