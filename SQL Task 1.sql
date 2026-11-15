CREATE DATABASE SQL_Practice ;
USE SQL_Practice ;
CREATE TABLE Orders(
order_id INT AUTO_INCREMENT PRIMARY KEY ,
customer_id VARCHAR(10) NOT NULL ,
product_name VARCHAR(20) NOT NULL ,
category VARCHAR(20) CHECK(category IN("Furniture","Office Supplies","Technology")),
country VARCHAR(20) NOT NULL ,
order_date DATE NOT NULL ,
ship_date DATE ,
quantity DECIMAL(8,2) CHECK(quantity>0) ,
unit_price DECIMAL(8,2) NOT NULL CHECK(unit_price>0) ,
sales DECIMAL(8,2) NOT NULL ,
discount DECIMAL(8,2) ,
profit DECIMAL(8,2) 
);
INSERT INTO Orders (order_id , customer_id , product_name , category , Country, order_date , ship_date , quantity , unit_price , sales , discount , profit)
VALUES (1 , "C101" ,"Office Chair" , "Furniture" , "USA" , "2023-01-15" , "2023-01-18" , 2, 250.00  , 500.00 ,0.10 , 80.00) ,
(2, "c102" , "gaming chair" , "Furniture" , "USA" , "2023-03-10" ,  "2023-03-12" , 1 , 700.00 , 700.00 , 0.20 , 120.00) ,
(3 , "a103" , "Laptop" ,"Technology" , "germany" , "2023-05-05" , "2023-05-08" , 3 , 400.00 , 1200.00 , 0.15 , 250.00) ,
(4 , "b104" , "desk lamp" , "office supplies" , "uk" , "2022-11-20" , "2022-11-25" , 5 , 40.00 , 200.00 , 0.05 , 30.00 ),
(5 , "c105" , "tablet" , "technology" , "USA" , "2023-07-01" , null, 1 , 350.00 , 350.00 , null , -20.00 ) ,
(6 , "d106" , "bookshelf" , "furniture" , "canada" , "2024-01-12", "2024-01-15" , 4 , 150.00 , 600.00 , 0.25 , 90.00) , 
(7 , "c107" , "monitor" ,"Technology" , "USA" , "2023-09-09" , "2023-09-14" ,  2 , 275.00 , 550.00 , 0.00 , 60.00) , 
(8 , "e108" , "printer" , "Technology" , "france" , "2023-04-18" , null , 1 , 180.00 , 180.00 , 0.10 , -15.00) ,
(9 , "c109" , "wooden chair" , "Furniture" , "uk" , "2023-12-05" , "2023-12-09" , 6 , 120.00 , 720.00 , 0.30 , 140.00) ,
(10 , "f110" , "mouse" , "Technology" , "germany" , "2023-06-22" , "2023-06-24" , 10 , 25.00 , 250.00 , 0.05 , 40.00) ,
(11 , "c111" , "conference chair" , "Furniture" , "USA" , "2022-08-14" , "2022-08-19" , 3 , 320.00 , 960.00 , 0.10 , -50.00) ,
(12 , "g112" , "phone" , "Technology" , "india" , "2023-02-11" , "2023-02-15" , 2 , 500.00 , 1000.00 , 0.20 , 200.00) , 
(13 , "h113" , "binder" , "office supplies" , "USA" , "2023-10-01" , "2023-10-03" , 1 , 15.00 , 15.00 , 0.00 , 5.00) ,
(14 , "c114" , "standing desk" , "Furniture" , "germany" , "2023-11-19" , "2023-11-22" , 2 , 650.00 , 1300.00 , 0.10 , 300.00) , 
(15 , "i115" , "headphones" , "Technology" , "USA" , "2024-02-05" , "2024-02-07" , 4 , 80.00 , 320.00 , 0.05 , 45.00) ,
(16 , "c116" , "study chair" , "furniture" , "USA" , "2023-08-08" , null , 5 , 210.00 , 1050.00 , 0.40 , 180.00) , 
(17 , "j117" , "router" , "Technology" , "UK" ,  "2023-03-30" , "2023-04-02" , 2 , 150.00 , 300.00 , null , -10.00) , 
(18 , "c118" , "filing cabinet" , "furniture" , "canada" , "2023-05-21" , "2023-05-25" , 1 , 450.00 , 450.00 , 0.20 , 70.00) , 
(19 , "k119"  , "desk chair pro" , "Furniture" , "USA" , "2023-06-01" , "2023-06-05" , 2 , 480.00 , 960.00 , 0.10 , 150.00) , 
(20 , "c120" , "server rack" ,  "Technology" , "germany" , "2023-07-17" , "2023-07-20" , 1 , 1100.00 , 1100.00 , 0.05 , 220.00) ;
SELECT * FROM Orders ;
SELECT order_id , customer_id , sales FROM Orders ;
SELECT * FROM Orders  WHERE sales>500 ;
SELECT * FROM Orders  WHERE quantity=1 ;
SELECT * FROM Orders  WHERE country="USA" ;
SELECT DISTINCT Country FROM Orders ;
SELECT * FROM Orders WHERE profit<0 ;
SELECT * FROM Orders WHERE discount >= 0.2 ;
SELECT * FROM Orders WHERE ship_date   IS  NULL ;
SELECT * FROM Orders WHERE sales= quantity*unit_price ;
SELECT * FROM Orders WHERE Country = "USA"  AND Sales > 300 ;
SELECT * FROM Orders WHERE Category = "Furniture" OR Category = "Technology" ;
SELECT * FROM Orders WHERE customer_id LIKE "c%" ;
SELECT * FROM Orders WHERE order_date  BETWEEN "2023-01-01" AND "2023-12-31" ;
SELECT * FROM Orders WHERE  country IN ( "USA", "UK", "germany") ORDER BY sales DESC ;
SELECT * FROM Orders WHERE Sales > 500 AND Profit > 0  ORDER BY  Profit DESC ;
SELECT * FROM Orders WHERE discount IS NOT NULL AND discount > 0 ORDER BY discount ASC ;
SELECT * FROM Orders WHERE (quantity * unit_price ) - Discount > 1000  ;
SELECT * FROM Orders WHERE product_name LIKE "%Chair%" AND sales BETWEEN 200 AND 1000 ;
SELECT DISTINCT customer_id FROM Orders WHERE country = 'USA' AND profit < 0 ORDER BY customer_id ASC; 



 










