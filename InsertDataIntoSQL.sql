SHOW DATABASES;
CREATE database OnlineShop;
USE OnlineShop;
CREATE TABLE Customer_Info
(  cust_id VARCHAR(6) NOT NULL PRIMARY KEY,
   cust_name VARCHAR(40) NOT NULL,
   street VARCHAR(255),
   city VARCHAR(50),
   country VARCHAR(20) NOT NULL,
   zip_code VARCHAR(10),
   phone VARCHAR(20),
   email VARCHAR(50)
   );
   
   
   CREATE TABLE ORDERS
 ( order_id VARCHAR(6) NOT NULL PRIMARY KEY,
   cust_id VARCHAR(40) NOT NULL,
   phone VARCHAR(20),
   order_date VARCHAR(60) ,
   purchase_amount VARCHAR(60));
    
   CREATE TABLE payment
   (
   cust_id VARCHAR(20) NOT NULL PRIMARY KEY,
   Card_credit VARCHAR(20),
   Card_debit VARCHAR(20),
   cash VARCHAR(20) ,
   date_time VARCHAR(60));
   
   
INSERT INTO Customer_Info VALUES('001','Raj singh','London Street','Boston','UA','23478','7868546312','rajsingh@rediffmail.com');
INSERT INTO Customer_Info VALUES('002','Nancy sin','Holland','Thailand','Singapour','28878','786812345','nancyin@rediffmail.com');

INSERT INTO Customer_INfo(cust_id, cust_name,street,city , country, zip_code, phone, email) VALUES
('001','Raj singh','Delhi Gate','Delhi','India','234782','7868546312','rajsingh@rediffmail.com'),
('002','Nancy sin','Thailand Street','Singapore','Malesiya','887822','4568123450','nancysin@rediffmail.com'),
('003','Rita met','Dharavi','Munbai','India','123467','8790123456','ritamet@gmail.com'),
('004','git mik','Boston Street','Boston','UK','234606','3495673456','gitmik@gmail.com'),
('005','rony mith','Holy Street','Boston','UK','123469','8793456756','ronymith@gmail.com'),
('006','Rae methos','Broadway','New York','New york','123468','8721783456','raemethos@gmail.com'),
('007,','rancy','wall street','New Amesterdam','New York','127868','8721785678','rancy@gmail.com'),
('008','James Bond','Hawra Street','London','UK','121168','8721123334','jamesbond@gmail.com'),
('009','Bond Thomas','Dubai','Abu Dhabi','Dubai','122468','9003783456','bondthos@gmail.com'),
('010','bejoy sen','second street','Chicago','US','23411','7658493726','bejoy@rediff.com'),
('011',' kim met','Fourth street','Austin','US','123467','8790123456','met@gmail.com'),
('012','mathews','Lands Street','Florida','Us','35689','4567321900','mathews@gmail.com'),
('013','        kin Jot        ','   Fifth street    ','    Austin','    US    ','123467','8790123456','     jot@gmail.com'),
('014','metwas hikk     ','Lands     Street    ','Florida Next    ','     Us','35689','4567321900','metwas@gmail.com');



INSERT INTO orders(order_id, cust_id, phone, order_date, purchase_amount) VALUES
('1016','001','7868546312','30-07-2022  11:35:29','1550'),
('1214','002','7868123450','31-07-2022  10:32:19','1350'),
('1233','003','8790123456','01-07-2022  12:45:09','1450'),
('1412','004','8795673456','02-07-2022  09:35:19','5550'),
('1511','005','8793456756','03-07-2022  05:35:29','1450'),
('1260','006','8721783456','04-07-2022  08:35:40','2250'),
('1230','007','8721781234','05-07-2022  01:33:24','2550'),
('1228','008','8721678456','06-07-2022  02:33:09','5540'),
('1267','009','8720967456','07-07-2022  03:15:56','7560'),
('1263','010','8726565456','08-07-2022  04:15:23','8550'),
('1224','011','8721333456','09-07-2022  07:55:50','8590'),
('1114','012','8721333556','09-07-2002  07:55:50','85.90'),
('1204','013','8721333123','09-07-2023  17:55:50','4.32');





INSERT INTO payment(cust_id , Card_credit, Card_debit,cash,date_time) VALUES
('001','No','yes','No','12-09-2019 11:30:33:009'),
('002','yes','No','No','11-09-2018 01:30:37:002'),
('003','No','No','Yes','09-01-2019 13:35:33:001');



SELECT * FROM Customer_Info;
select *From orders;