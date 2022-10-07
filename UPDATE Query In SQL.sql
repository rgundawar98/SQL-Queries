SELECT * FROM customer_info;
UPDATE customer_info SET cust_name = 'Test_Name';
UPDATE customer_info SET cust_name = 'Test_Name' ,zip_code=2000;
UPDATE customer_info SET cust_name = 'Second-Test' , zip_code=5000 WHERE country = 'UK';
SELECT * FROM customer_info WHERE country='UK';
UPDATE customer_info SET cust_name= 'James Bond' , email = 'ritamet@gmail.com' WHERE city='boston';