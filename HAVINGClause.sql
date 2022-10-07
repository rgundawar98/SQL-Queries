SELECT * FROM customer_Info;
SELECT * FROM orders;
SELECT country ,COUNT(country) FROM customer_Info GROUP BY country HAVING COUNT(country) >= 2; 
SELECT street , COUNT(street) FROM customer_Info GROUP BY street HAVING COUNT(street) >=3;

#Below query will count purchase_amount which counts more than 1 times
SELECT purchase_amount , COUNT(purchase_amount) FROM orders GROUP BY
 Purchase_amount HAVING COUNT(Purchase_amount) >= 1; 
