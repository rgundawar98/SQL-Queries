SELECT * FROM customer_info;
SELECT * FROM customer_info ORDER BY cust_name; #By default orderBy clause show the columns data in ascending order

SELECT * FROM customer_info ORDER BY cust_name DESC;
SELECT cust_name, country FROM customer_info ORDER BY cust_name DESC , country DESC;

SELECT cust_id , city FROM customer_Info ORDER BY cust_id DESC , city DESC;
SELECT * FROM customer_Info ORDER BY city DESC;