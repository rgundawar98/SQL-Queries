SELECT * FROM customer_info;
SELECT * FROM customer_info WHERE cust_name LIKE 'r%'; #it displays zero,one,more values due to this '%' wildcard 
SELECT * FROM customer_info WHERE cust_name LIKE 'j_________'; #it displays only one values due to this '_' wildcard 
#To calculate the values if it is name then you have to write (raj singh='r________';)