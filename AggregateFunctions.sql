SELECT * FROM Orders;
SELECT MAX(Purchase_amount) FROM Orders;
SELECT MIN(Purchase_amount) FROM Orders;
SELECT SUM(Purchase_amount) FROM Orders;
SELECT AVG(Purchase_amount) FROM Orders; 
# when we count cell values then when they are null then they are skipped from count of cell values
SELECT COUNT(Purchase_amount) FROM Orders;
#while using * wild card that null values should be count 
SELECT COUNT(*) FROM Orders;
# DISTINCT aggregate function returns the different  values or cell to the user
SELECT DISTIINCT(Purchase_amount) FROM Orders;


