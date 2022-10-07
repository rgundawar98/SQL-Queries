USE testdata;
SELECT * FROM Customers_data LEFT JOIN Customers_order ON Customers_data.cust_id = Customers_order.cust_id;

#BY using allias concept 
#The below query displays as below because left of the LEFT JOIN there is customers_data table it displays like that
SELECT * FROM Customers_data CD LEFT JOIN Customers_order CO ON CD.cust_id = CO.cust_id;

#If we took orders table to left of LEFT JOIN
SELECT * FROM Customers_order CO LEFT JOIN Customers_data CD ON CD.cust_id = CO.cust_id; 

SELECT CO.order_id ,CO.order_amount , CD.cust_name FROM customers_Order CO LEFT JOIN customers_data CD
ON CD.cust_id = CO.cust_id;

#By using LEFT OUTER JOIN
SELECT CO.order_id , CO.order_amount , CD.cust_name FROM customers_Order CO LEFT OUTER JOIN customers_data CD
ON CD.cust_id = CO.cust_id;