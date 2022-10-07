SELECT * FROM orders;
SELECT purchase_amount FROM orders;
SELECT purchase_amount + 1000 FROM orders;
SELECT purchase_amount , purchase_amount + 1000 FROM orders;
SELECT purchase_amount , purchase_amount + 1000 AS Final_amount FROM orders;    
#Allias concept is we can give any name to the upcoming column 
SELECT purchase_amount , purchase_amount - 1000 AS deducted_amount FROM orders;
SELECT purchase_amount , purchase_amount * 10 AS Multipled_amount FROM orders;
SELECT purchase_amount , purchase_amount / 10 AS divided_amount FROM orders;
SELECT purchase_amount , purchase_amount % 10 AS modulo_amount FROM orders; 


