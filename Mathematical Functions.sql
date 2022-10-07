SELECT * FROM Orders;
SELECT Purchase_amount FROM Orders;
SELECT Purchase_amount , SQRT(Purchase_amount) FROM Orders;
SELECT purchase_amount , ROUND(purchase_amount) FROM Orders;#This function rounds the decimal value to nearest integer 
SELECT purchase_amount , round(Purchase_amount, 1) FROM orders;#it rounds number to one decimal point number
select purchase_amount,rand(purchase_amount) from Orders; #it returns or displays random value
select purchase_amount, MOD(purchase_amount , 10) from Orders; #you have to write 2 argument to display modulo