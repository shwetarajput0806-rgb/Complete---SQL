--String function -> upper , lower , length , concat , substring , trim , replace
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

-- get all the category in UPPER case
SELECT UPPER(category) AS Category_in_capital
FROM products;

-- get all the category in Lower case
SELECT LOWER(category) AS Category_in_lower
FROM products;

--Concat-> join product name and category with _
SELECT CONCAT(product_name , '-' ,category) AS product_details
FROM products;

--substring -> extract the first 5 character from product_name
SELECT SUBSTRING(product_name , 1 , 5) AS top_five_char
FROM products;

--Total length count
SELECT  product_name ,LENGTH(product_name) AS CONT_of_char
FROM products;

--use trim function remove the space 
SELECT TRIM('  Monitor   ') AS clean_trim_text;

--use trim function remove the space 
SELECT LENGTH(TRIM('  Monitor   ') )AS clean_trim_text;

--use replace funtion  -> replace the word phone with device in product-name
SELECT REPLACE(product_name , 'phone' ,'device') AS replace_name
FROM products;

---Get the first 3 chategory 
SELECT LEFT (category , 3) AS category_capatial
FROM products;

---Get the last 3 chategory 
SELECT RIGHT (category , 3) AS category_capatial
FROM products;

