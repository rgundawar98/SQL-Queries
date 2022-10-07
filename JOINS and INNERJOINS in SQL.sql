CREATE DATABASE TestData;
 
CREATE TABLE Customers_data
(cust_id VARCHAR(6) not null,
cust_name VARCHAR(40) ,
country VARCHAR(60)
);

CREATE TABLE Customers_Order
( Order_id VARCHAR(6) NOT NULL,
  cust_id VARCHAR(6),
  order_amount INT
);


INSERT INTO customers_data (cust_id , cust_name , country) VALUES
('1203' , 'kapil kumar','India'),
('3467' , 'vidya Rao','Madhya Pradesh'),   
('7382' , 'Harshad shedde','Odisha'),
('8237' , 'Bomg bii','UP'),
('3456' , 'Megha shetty','Goa'),
('2748' , 'Prem kilhare','India'),
('4477' , 'Nancy met','Australlia'),
('1345' , 'karun kumte','India'),
('1789' , 'vipul Rathi','Uttar Pradesh');



INSERT INTO Customers_Order (Order_id , cust_id ,order_amount) VALUES
('1234' , '1203','12334'),
('3546' , '3467','76543'),
('1236' , '7382','87654'),
('6789' , '8237','98002'),
('2678' , '3456','34567'),
('8822' , '2748','98750'),
('9888' , '4477','34589');

INSERT INTO Customers_Order (Order_id , order_amount) VALUES
('1450', '67680'),
('1256','76500');






SELECT * FROM customers_data;
SELECT * FROM customers_Order;
# The below query is to display which customer has order
SELECT * FROM customers_data JOIN Customers_order ON customers_data.cust_id = Customers_order.cust_id;

#By both JOIN and INNER JOIN are exactly same
SELECT * FROM Customers_data INNER JOIN customers_order ON Customers_data.cust_id = customers_order.cust_id;

# By using allias method
SELECT * FROM customers_data c INNER JOIN Customers_order o ON c.cust_id = o.cust_id; 


SELECT c.cust_id , c.cust_name , o.order_id , o.order_amount 
FROM customers_data c INNER JOIN customers_order o ON c.cust_id = o.cust_id;
