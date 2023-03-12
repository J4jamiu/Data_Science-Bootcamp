#DEFAULT CONSTRAINT

#ALTER TABLE customers
CHANGE number_of_complaints INT DEFAULT 0;

#NUT NULL CONSTRAINT
company_name VARCHAR(255) NOT NULL

#TO CHANGE IT TO NULL
MODIFY company_name VARCHAR(255) NULL

#NULL VALUE IS MISSNG VALUE 0 DOES NOT MEAN NULL

#BEST CODING PRACTICES
#GOOD CODE is not teh one computer understans it is d one human understand
#When assigning names to variables or sql objects, choose shorter, meaninngful naes
#Readability of ur code.
#use adhoc software that reorganizes code and colour to diff words consitently 
#to brush your code. use CTR+B

#Create table applying above 
CREATE TABLE IF NOT EXISTS test (
numbers INT(10), words VARCHAR(10)
);

#LOADING DATA
#DATA MANIPULATION



