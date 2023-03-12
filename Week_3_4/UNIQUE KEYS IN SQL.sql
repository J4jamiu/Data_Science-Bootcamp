#UNIQUE CONSTRAINT
#It is used whenever you would like to specify taht you dont want to see duplicate data in a given field
#It ensures that all values in a column(or a set of columns are different)
#They are implemented in SQL through the UNIQUE CONSTRAINT
#E.g
ALTER TABLE customers
ADD UNIQUE KEY (email_address);

# TO DROP UNIQUE KEY CONSTRAINTS
ALTER TABLE customers
DROP INDEX email_address;
#ABOVE IS USED TO DROP UNIQUE KEY(DROP INDEX) 
#Unique keys in mysql have the same role as indexes. my sql tool that can be created in a column which will be frequently used to retrieve information from a table

