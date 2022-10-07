SELECT * FROM Customer_Info;
SELECT UPPER(cust_name) , UPPER(street) FROM Customer_Info;
SELECT UPPER(Country) , UPPER(City) FROM Customer_Info;
SELECT LOWER(Country) , LOWER(City) FROM Customer_Info; 
SELECT LENGTH(Country)  FROM Customer_Info;
SELECT LENGTH(Street)  FROM Customer_Info;
SELECT REVERSE(Cust_name)  FROM Customer_Info;
SELECT TRIM(cust_name) FROM customer_Info;# This function removes all the leading and trailing spaces from cell values
# The replace() method replaces the word what you want it says 
#(From What to change , 'anywhere u see that character' ,'What to put Instead of that') in short-(Str, from str ,to string)
SELECT REPLACE(cust_name , 'm' , 'TT') FROM Customer_Info;
# From where you want to make a substring to the string  value you can put the number there
SELECT SUBSTR(cust_name , 2) FROM Customer_Info;

