USE SALES;
CREATE TABLE sales
(
purchase_name INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
date_of_purchase DATE NOT NULL,
customer_id INT,
item_code VARCHAR(10) NOT NULL
);

select * from sales
CREATE TABLE customers
(
customer_id INT,
number_of_complaints  INT,
first_name VARCHAR(255),
last_name VARCHAR(255),
email_address VARCHAR(255),
PRIMARY KEY (Customer_id)
);

CREATE TABLE items
(
item_code VARCHAR(255),
item VARCHAR (255),
unit_price NUMERIC(10, 2),
company_id VARCHAR(255)
);

CREATE TABLE companies
(company_id VARCHAR(255),
company_name VARCHAR(255),
headquarters_phone_number INT(120)
);