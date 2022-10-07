select* From customer_info;
select* From customer_info WHERE city IS NULL;
select* From customer_info WHERE city IS NOT NULL;
select* From customer_info WHERE city IS NULL  AND country IS NOT NULL ;
select* From customer_info WHERE city IS NULL AND street IS NULL;
select* From customer_info WHERE city IS NOT NULL AND street IS NOT NULL;