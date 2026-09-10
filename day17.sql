--Aggregate Function -> Sum count avg min max
--dROP TABLE
DROP TABLE IF EXISTS products;

--cREATE TABLE
CREATE TABLE products(
	product_id  SERIAL PRIMARY KEY,
	product_name  VARCHAR(100),
	category VARCHAR(50),
	price NUMERIC(10,2),
	quantity INT,
	added_date DATE,
	discount_rate NUMERIC(5,2)
	
);

--INSERT THE VALUE
INSERT INTO products(product_name , category , price , quantity , added_date , discount_rate)
VALUES('Laptop' , 'Electronics' , 75000.50, 10 , '2024-01-15' ,10.00),
		('smartphone' , 'Electronics' ,45000.99 , 25 , '2024-02-20' , 5.00),
		('Headphone' , 'Accessories' , 1500.75 , 50 , '2024-03-05' , 20.00),
		('Office Chair' , 'Furniture' , 5500.00 , 20 , '2023-12-01' , 20.00),
		('Desk' , 'Furniture' , 8000.00 , 20 , '2023-11-20' , 12.00),
		('Monitor' , 'Electronics' , 12000.00, 8 , '2024-01-10' ,8.00),
		('Printer' , 'Electronics' , 9500.50, 5 , '2024-02-01' ,7.50),
		('Keyboard' , 'Accessories' , 1250.00 , 35 , '2024-03-18' , 10.00),
		('Tablet' , 'Electrnoics' , 30000.00, 12 , '2024-02-28' , 5.00);

SELECT * FROM products;


--Total quantity available of all products
SELECT SUM(quantity) AS Total_Quantity
FROM products;


---Total quantity available of all products
SELECT SUM(quantity) AS quantity_of_electronics
FROM products
WHERE category = 'Electronics' AND price > 20000;

--Total number of Products
SELECT COUNT(*) AS total_products
FROM products;

--count with condition
SELECT COUNT(*) AS total_products_phone
FROM products
WHERE product_name LIKE '%phone%';

--AVG price column
SELECT AVG(price) AS average_price
FROM products;

--AVG price column with condition
SELECT AVG(price) AS average_price
FROM products
WHERE category = 'Accessories';


--AVG price column with condition with OR
SELECT AVG(price) AS average_price
FROM products
WHERE category = 'Accessories' OR added_date > '2024-02-01';

--Maximum and minimum price
SELECT MAX(price) AS max_price,
       MIN(price) AS min_price
FROM products;	   
	   



		