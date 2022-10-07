SELECT CURDATE(); #This query for display the current day date 
SELECT CURTIME(); #This query for display the current time 
SELECT * FROM Orders;
SELECT DATE(order_date) FROM Orders; # This function displays date only from date and time
SELECT Cust_id ,DATE(order_date) FROM orders;
SELECT Cust_id ,HOUR(order_date) FROM orders; # This function displays hour only from date and time
SELECT Cust_id,YEAR(order_date) FROM orders; # This function displays years only from date and time
SELECT Cust_id,weekofyear(order_date) FROM orders; # This function displays week only from cell value