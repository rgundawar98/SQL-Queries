SELECT * FROM Customers_data c RIGHT JOIN Customers_order o ON c.cust_id = o.cust_id;

#Using RIGHT OUTER JOIN
SELECT * FROM Customers_data c RIGHT OUTER JOIN Customers_order o ON c.cust_id = o.cust_id;

SELECT * FROM Customers_order o RIGHT JOIN Customers_data c  ON c.cust_id = o.cust_id;

#####FULL JOIN concept################

SELECT * FROM Customers_order o LEFT JOIN Customers_data c  ON c.cust_id = o.cust_id
UNION
SELECT * FROM Customers_order o RIGHT JOIN Customers_data c  ON c.cust_id = o.cust_id;
