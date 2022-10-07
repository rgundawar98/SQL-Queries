SELECT * FROM customer_info WHERE zip_code = 122468; #Equal to operator
SELECT * FROM customer_info WHERE zip_code > 122468;  #Greater than operator
SELECT * FROM customer_info WHERE zip_code < 122468;  #Less than operator
SELECT * FROM customer_info WHERE zip_code >= 122468; #Greater than or equal to operator
SELECT * FROM customer_info WHERE zip_code <= 122468; #Less than or equal to operator
SELECT * FROM customer_info WHERE zip_code <> 122468; #Not equal to operator 

SELECT * FROM customer_info WHERE city="London";
SELECT * FROM customer_info WHERE street="Holy Street" && phone=8721783456;
SELECT * FROM customer_info WHERE zip_code=123468 || email='jamesbond@gmail.com' AND cust_name='James Bond';
