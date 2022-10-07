CREATE DATABASE CustOrders;
USE CustOrders;
CREATE TABLE ORDERS(OrderNum VARCHAR(5) PRIMARY KEY,  AMT VARCHAR(52), OrderDATE Date, CustNum VARCHAR(4),SerialNum VARCHAR(4));
INSERT INTO ORDERS VALUES (3001, 18.69, '1997-11-11' , 2008 , 1007);
INSERT INTO ORDERS VALUES(3002 , 1000 , '1996-11-22', 2011 , 1008);
INSERT INTO ORDERS VALUES(3003 , 1200 , '1999-11-12', 3344 , 1009);
INSERT INTO ORDERS VALUES(3190 , 1300 , '1998-10-11' , 7856 , 1010);
INSERT INTO ORDERS VALUES(3011 , 1700 , '1996-10-13', 0021 , 1011);
INSERT INTO ORDERS VALUES(3021 , 2000 , '1999-10-03' , 9087 , 1012);
INSERT INTO ORDERS VALUES(3025 , 2000 , '1999-10-03' , 9087 , 1012);
INSERT INTO ORDERS VALUES(3026 , 2000 , '1999-10-04' , 9087 , 1012);
Select * from orders where OrderDATE in ('1999-10-03','1999-10-04'); 
Select *  from orders where amt > 1000; 
Select OrderNum, AMT, OrderDATE from orders;
Select OrderNum from orders where amt != 0 or amt is not null;
Select count(*) from orders where odate = '1999-10-03';
Select *  from orders where amt > ( select avg(amt)  from orders where OrderDate = '1994-10-03'); 

	


 