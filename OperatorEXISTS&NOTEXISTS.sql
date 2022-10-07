USE onlineshop;
SELECT * FROM customer_info;
SELECT * FROM orders;
#if subqery is get true then the main query will be executed otherwise it show null data 
SELECT * FROM customer_info WHERE EXISTS (SELECT * FROM customer_info WHERE cust_id='001');
SELECT *FROM customer_info WHERE EXISTS(SELECT * FROM orders WHERE customer_info.cust_id= orders.cust_id);

SELECT *FROM customer_info WHERE NOT EXISTS(SELECT * FROM orders WHERE customer_info.cust_id= orders.cust_id);