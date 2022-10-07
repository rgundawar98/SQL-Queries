USE Testdatabase;
CREATE TABLE Online_Orders(id int not null, location VARCHAR(60) NULL ,cust_name VARCHAR(45) NOT NULL);
CREATE TABLE Online_Orders1(id int not null, location VARCHAR(60) NULL ,cust_name VARCHAR(45) NOT NULL);
CREATE TABLE Online_Orders3(id int not null, city VARCHAR(30) NULL ,cust_name1 VARCHAR(45) NOT NULL);
CREATE TABLE Customer_details(cust_name VARCHAR(45) NOT NULL,city VARCHAR(60) NULL ,country VARCHAR(6) NULL);

INSERT INTO Online_Orders VALUES
(1,'New Delhi','MV Kumar'),
(2,'New Delhi','kK'),
(3,'Sydney',' A K'),
(4,'Melbourne','S Kumar');

SELECT * FROM Online_Orders;
SELECT * FROM Online_Orders1;
SELECT * FROM Online_Orders3;

# Due to same coloumns of both tables we can insert data into one another below query shows 
INSERT INTO Online_Orders1 SELECT * FROM Online_Orders;

# If datatype will be same of different tables then we can insert or copy data from one table to another
INSERT INTO Online_Orders3 SELECT * FROM Online_Orders1;

SELECT * FROM Customer_details;
INSERT INTO Customer_details SELECT * FROM Online_Orders WHERE cust_name ='kk';

INSERT INTO Customer_details (cust_name , city) SELECT cust_name , location FROM Online_Orders;