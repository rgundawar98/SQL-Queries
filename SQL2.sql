CREATE DATABASE CUSTOMER;
USE CUSTOMER;

CREATE TABLE CUST(CustNum VARCHAR(5) PRIMARY KEY,  CustName CHAR(20),  CITY CHAR(20), RATING VARCHAR(3), 
SerialNum VARCHAR(4), rowid char(20));
INSERT INTO CUST VALUES(1207 , 'Nill',  'London',    100 , 2001 , 12);
INSERT INTO CUST VALUES(1202 , 'Nik',   'Rome'  ,    200 , 2002 , 13);
INSERT INTO CUST VALUES(1203 , 'Mike',  'SanJose',   300 , 2003 , 14);
INSERT INTO CUST VALUES(1204 , 'will',  'Berlin',    100 , 2004 , 15);
INSERT INTO CUST VALUES(1205 , 'Smith', 'London',    300 , 2005 , 16);
INSERT INTO CUST VALUES(1206 , 'Curry', 'Rome'  ,    100 , 2006 , 17);
INSERT INTO CUST VALUES(1211 , 'Maggi',   ''    ,    500 , 2009 , 18);
INSERT INTO CUST VALUES(1123 , 'Groove','Melbourne', 101 , 2010 , 19);


CREATE TABLE CUST1(CustName CHAR(20), RATING VARCHAR(3),SerialNum VARCHAR(50) , rowid VARCHAR(20));
INSERT INTO CUST1 VALUES('Nill',  100 , 01 , 1);
INSERT INTO CUST1 VALUES('Mike',  300 , 02 , 2);
INSERT INTO CUST1 VALUES('Nik' ,  200 , 03,  3);
INSERT INTO CUST1 VALUES('Will',  100 , 04,  4 );
INSERT INTO CUST1 VALUES('Smith', 300 , 05,  5);
INSERT INTO CUST1 VALUES('Curry', 100 , 06,  6);
INSERT INTO CUST1 VALUES('Maggi', 500 , 07,  7);
INSERT INTO CUST1 VALUES('Groove',101 , 08,  8);

Select CustName from cust where rating = 100;
Select CustName from CUST where rating > 200;
Select CustName from cust where city = 'San Jose' or rating > 200;
Select CustName from cust where rating <= 100 or city = 'Rome'; 
Select CustName from cust where city is null; 
select * from CUST;
Select count(distinct city) from cust;
Select min(CustName) from cust where CustName like 'G%'; 
Select 'For the city (' || city || '), the highest rating is : (' ||  max(rating) || ')' 
from cust group by city;
Select CustName from CUST where CUST.city = city; 
Select CustName from cust where cust.CustName = cust.CustName;
Select custnum from cust where  cust.custnum=cust.custnum;

Select custname, sname, comm from cust, salespeople where comm > 0.12 and cust.serialnum = salespeople.snum;

Select sname, amt * comm from orders, cust, salespeople where rating > 100 and salespeople.snum = cust.snum 
and salespeople.snum = orders.snum and cust.cnum = orders.cnum; 

Select CUST.CustName , CUST1.CustName from CUST , CUST1 where CUST.RATING = CUST1.RATING 
AND CUST.CustName != CUST1.CustName;

Select CustNum, rating from cust where rating > ( select avg(rating)  from cust where city = 'San Jose'); 

Select CustNum, CustName from cust where CustNum > ( select snum+1000  from salespeople where sname = 'Serres');

Select distinct a.custname from cust a ,cust1 b where a.serialnum = b.serialnum and a.rowid != b.rowid;  