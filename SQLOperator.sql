USE onlineshop;

SELECT* FROM customer_Info WHERE city="Boston" && cust_name="Rita met" AND country="US";
SELECT *FROM customer_Info;

SELECT* FROM customer_Info WHERE city="Boston" || zip_code=123460;