#INSERT STATEMENT CONTINUATION
#NB: It is important the values and column names correspond for the insert statetment to work properly.

##INSERT DATA INTO A ANOTHER/NEW TABLE
#SYNTAX
#INSERT INTO 
#table_2 (coulmn_names)
#SELECT column_name
#FROM 
#table_1
#WHERE condition;

#STEP 1: CREATE NEW TABLE
#Check the contraints of current table and ensure same is maintained in new table. go to table name, info, ddl

CREATE TABLE departments_dup 
(
    dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);
#Confirm if the newly created table has the same column or required columns

SELECT 
    *
FROM
    departments_dup;
#INSERT INTO THE NEW TABLE AS DESIRED

INSERT INTO departments_dup (dept_no, dept_name)

SELECT 
    *
FROM
    departments;

#CHECK THE NEW TABLE TO CONFIRM DATA INSERTED SUCCEFFULLY

SELECT 
    *
FROM
    departments_dup;

#EXCERCISE
#Create a new department called "Business Analysis". Use departments table

#SOLUTION
#First select to crosscheck the data in departments table
SELECT 
    *
FROM
    departments;

#CREATE NEW TABLE (Business Analysis)
CREATE table Business_Analysis
(
dept_no char(4) NOT NULL,
  dept_name varchar(40) NOT NULL
  );
  
  #CROSS CHECK THE NEWLY CREATED TABLE, TO BE SURE IT WAS CREATED SUCCESSFULLY
SELECT 
    *
FROM
    Business_Analysis;
    
#INSERT INTO NEWLY CREATED TABLE

INSERT INTO Business_Analysis (dept_no, dept_name)

SELECT
*
FROM 
departments;

#Create a new department called "Business Analysts". ADD Business_Analyst  under number "d010". Use departments table

#SOLUTION

INSERT INTO Business_Analysis
(
dept_no,
dept_name
)
VALUES
(
'd010',
'Business_Analyst'
);

#CHECK TO VALIDATE THE ENTRIES
SELECT 
*
FROM
Business_Analysis
WHERE 
dept_no ='d010';