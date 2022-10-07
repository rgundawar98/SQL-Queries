CREATE DATABASE Salespeople;
USE SalesPeople;
CREATE TABLE SALESPEOPLE(SNUM VARCHAR(5) PRIMARY KEY, SNAME CHAR(10), CITY CHAR(20),COMM DECIMAL(6.5), Cname VARCHAR(20));
INSERT INTO salespeople VALUES (1001, 'Peel', 'London',0.12 , 'pearl' ); 
INSERT INTO salespeople VALUES(1002, 'Serres','San Jose',0.13 , 'Hogg'); 
INSERT INTO salespeople VALUES(1003, 'chris' ,'san Fransisco',0.21 ,'pree');
INSERT INTO salespeople VALUES(1004 , 'Saini', 'London', 0.9, 'nindd');
INSERT INTO salespeople VALUES(1006 , 'christin','Barcelona', 0.8,'dipss');
INSERT INTO salespeople VALUES(1010 , 'croni','Lostcity', 0.15,'traun');
INSERT INTO salespeople VALUES(1000, 'perry','' ,0.1,'perry');
INSERT INTO salespeople VALUES(1100 , 'Motika','Kolar',0.9,'Hansika');
Select snum, sname, city, comm from salespeople;


CREATE TABLE CUST(CustNum VARCHAR(5) PRIMARY KEY,  CustName CHAR(20),  CITY CHAR(20), RATING VARCHAR(3),
 SerialNum VARCHAR(4) , SNum CHAR(20));
INSERT INTO CUST VALUES(1207 , 'Nill' , 'London' ,   100 , 2001, 001);
INSERT INTO CUST VALUES(1202 , 'Nik'  , 'Rome'   ,   200 , 2002, 002);
INSERT INTO CUST VALUES(1203 , 'Mike' , 'SanJose',   300 , 2003, 003);
INSERT INTO CUST VALUES(1204 , 'will' , 'Berlin' ,   100 , 2004, 004);
INSERT INTO CUST VALUES(1205 , 'Smith', 'London' ,   300 , 2005, 005);
INSERT INTO CUST VALUES(1206 , 'Curry',  'Rome'  ,   100 , 2006, 006);
INSERT INTO CUST VALUES(1211 , 'Maggi',  ''      ,   500,  2009, 007);
INSERT INTO CUST VALUES(1123 , 'Groove','Melbourne', 101 , 2010, 008);
INSERT INTO CUST VALUES(1127 , 'Hoffman','Mexico',   107 , 2014, 009);





CREATE TABLE Orders(Snum VARCHAR(50) PRIMARY KEY , sname VARCHAR(50), Odate DATE, AMT VARCHAR(50) ,
 Cnum VARCHAR(20) , onum varchar(10));
INSERT INTO Orders VALUES(1001 , 'peel' , '2022-03-22',  2600 , 001,77);
INSERT INTO Orders VALUES(1002, 'Monika' , '2021-09-15', 4300,  002,78);
INSERT INTO Orders VALUES(1100 , 'Motika','2019-01-10' , 8000,  003,79);

Select distinct snum from orders;
Select sname,comm from salespeople where city = 'London';
Select sname, city from salespeople where comm>0.10 and city = 'London';
Select sname, city from salespeople where city in ('Barcelona','London');
Select sname, comm from salespeople where comm > 0.10 and comm < 0.12; 

Select custname from cust, orders where orders.cnum = cust.custnum and orders.snum in
 ( select snum from salespeople where sname in 'Peel','Motika'));
 
Select count(distinct snum) from orders; 
Select odate, snum, max(amt) from orders group by odate, snum order by odate,snum; 
Select odate, amt, snum, cnum from orders where amt = (select max(amt)  from orders);
Select cnum, min(amt) from orders group by cnum;  
Select ' there are '||  count(*) || ' Orders' from orders group by odate;
Select onum, snum, amt, amt * 0.12 from orders order by snum;
Select odate, count(onum) from orders group by odate order by count(onum); 
Select sname from salespeople where salespeople.city = city; 
Select sname from salespeople where salespeople.SNUM= salespeople.SNUM;  
Select onum from Orders where Orders.onum = Orders.onum;

Select onum, snum from orders, salespeople 
where orders.onum = orders.onum and salespeople.snum = salespeople.snum; 
//not work

Select sname, amt * comm from orders, cust, salespeople where rating > 100 and salespeople.snum = cust.snum 
and salespeople.snum = orders.snum and cust.CustNum = orders.cnum; //nOt working

Select cname, sname, comm from cust, salespeople where comm > 0.12 and cust.snum = salespeople.snum;

Select cname, sname from salespeople, cust where sname in  
( select sname  from salespeople where rownum <= 3) order by cname; //not working//

Select CustName from cust where city = ( select city  from cust, salespeople
where cust.snum = salespeople.snum and sname = 'Serres');

Select CustNum, CustName from cust where CustNum > ( select snum+1000  from salespeople where sname = 'Serres');
 
Select comm from salespeople where snum in (select snum from cust where city = 'London'); 
Select snum, cnum  from orders where cnum in (select CustNum  from cust where city = 'London'); 
Select avg(comm) from salespeople where city = 'London'; 

Select onum, custname, amt from orders a, salespeople b, cust c where a.snum = b.snum and a.cnum = c.custnum
and a.snum = ( select snum from orders where cnum = ( select custnum from cust where custname = 'Hoffman')); 

Select Onum from orders	where snum = ( select snum from salespeople where sname = 'Motika');

Select custname, city from cust where rating = (select rating from cust where custname = 'Hoffman') 
and custname != 'Hoffman'; 



