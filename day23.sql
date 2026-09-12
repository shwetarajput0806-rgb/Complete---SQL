--Window Functions
SELECT * FROM products;

--assign the unique row number  to each product within same category 

--Row number function
SELECT product_name , category , price,
		ROW_NUMBER() OVER(PARTITION BY category ORDER BY price DESC) AS row_number
FROM products;

 -- rank function
SELECT product_name , category , price,
		RANK() OVER(PARTITION BY category ORDER BY price DESC) AS rank
FROM products;


--Dense function
SELECT product_name , category , price,
		DENSE_RANK() OVER(PARTITION BY category ORDER BY price DESC) AS rank
FROM products;


--SUM function -- running total
SELECT product_name , category , price,
		SUM(price) OVER(ORDER BY price DESC) AS running_total
FROM products;


--