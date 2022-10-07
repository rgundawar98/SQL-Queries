SELECT CURDATE(); #This query for display the current day date 
SELECT CURTIME(); #This query for display the current time 
SELECT * FROM Orders;
SELECT DATE(order_date) FROM Orders; # This function displays date only from date and time
SELECT Cust_id ,DATE(order_date) FROM orders;
SELECT Cust_id ,HOUR(order_date) FROM orders; # This function displays hour only from date and time
SELECT Cust_id,YEAR(order_date) FROM orders; # This function displays years only from date and time
SELECT Cust_id,weekofyear(order_date) FROM orders; # This function displays week only from cell value




# table of testdatabase db
CREATE TABLE customer_order
(cust_id VARCHAR(50),
cust_name VARCHAR(60) NOT NULL PRIMARY KEY,
date_time VARCHAR(60),
amount VARCHAR(50)
);
INSERT INTO customer_order (cust_id,cust_name,date_time,amount) VALUES
('001','Ali k', '12-10-2019 13:37:09:001','13456'),
('001','Ajit k', '11-01-2018 05:27:12:003','14567'),
('001','Amey k', '01-10-2021 10:31:09:000','90675'),
('001','Kiran k', '12-10-2022 01:13:10:002','12345');
select * from customer_order;

