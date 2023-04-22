
#FOREIGN KEY :It points to a column of another table and, thus links the two tables
#it is  a field or collection of fields called the child table (referencing table) and refers to column of another table called parent table or referenced table
#defined through a foreign key contraints

CREATE TABLE sales
(
purchase_number INT AUTO_INCREMENT,
date_of_purchase DATE,
customer_id INT,
item_code VARCHAR(10),
PRIMARY KEY (purchase_number)
);

#FOREIGN KEYS ARE ADDDED TO ALREADY EXISTING TABLES
ALTER TABLE sales

ADD FOREIGN KEY(customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE;
#ON DELETE CASCADE means whenever a specific value from the parent table's primary key has beeen deleted, all the records from the child table referring to this value will be removed as well.
#You can drop only FOREIGN KEYS 
#ALTER TABLE sales
#DROP FOREIGN KEY sales_ibfk_1;

