SELECT * FROM customers_data;

# The below query is to create a view in sql 
CREATE VIEW Cust_info AS SELECT cust_name ,country FROM customers_data;

# To display or watch data in VIEW below query works
SELECT	* FROM Cust_info;

### Insert data into created view  #######
INSERT INTO Cust_info VALUES ('Neha sharma','Malesiya');

INSERT INTO Cust_info VALUES (NULL ,'Malad');



