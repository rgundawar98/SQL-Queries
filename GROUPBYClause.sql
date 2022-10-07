SELECT * FROM customer_info;
SELECT country FROM customer_info GROUP BY country;
SELECT country , COUNT(*) FROM customer_info GROUP BY country;
SELECT country , COUNT(*) AS Number_Of_Customers FROM customer_info GROUP BY country; #Using allias concept
SELECT street,country FROM customer_info GROUP BY street;
SELECT street , COUNT(*) as no_of_cust_from FROM customer_info GROUP BY street;