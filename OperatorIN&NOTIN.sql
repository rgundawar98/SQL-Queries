USE onlineshop;
SELECT * FROM customer_Info;
SELECT * FROM customer_Info WHERE(city='London' || city="Boston");
#Below is IN operator
SELECT * FROM customer_Info WHERE city IN('London','Boston');
#Below is NOT IN operator
SELECT * FROM customer_Info WHERE city NOT IN('London','Boston');


