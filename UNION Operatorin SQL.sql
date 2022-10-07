CREATE TABLE Orders1(order_id1 INT);
CREATE TABLE Orders2(Order_id2 INT);


INSERT INTO Orders1 (Order_id1) VALUES (2),(4),(6),(7);
INSERT INTO Orders2 (Order_id2) VALUES (5),(6),(8),(4);

SELECT * FROM orders1;
SELECT * FROM orders2;

# Using UNION Opeartor
SELECT * FROM orders1 UNION SELECT * FROM orders2;

#The below query displays all values in both tables
SELECT * FROM orders1 UNION ALL SELECT * FROM orders2;

