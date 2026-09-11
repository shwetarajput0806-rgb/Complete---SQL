--Case statement assignment

/*Q1 We will classify the product based on the quantity available
1 IN stock if quantity is 10 or more'
2 Limited stock if quantity is bwtween 5 and 9
3 out of stock soon if quantityt is less than 5

*/


SELECT * FROM products;

--Q1
SELECT product_name , quantity,
					CASE
					   WHEN quantity >= 10 THEN 'In stock'
					   WHEN quantity >=5 AND quantity <=9 THEN 'Limited Stock'
					   ELSE 'Out_of_stock'
					   END AS  Quantity_category
FROM products;



/*--

Q2-> Case with AND and OR operator - stock status
We will classify products based on quantity available

1 IN stock if quantity is 10 or more'
2 Limited stock if quantity is bwtween 5 and 9
3 out of stock soon if quantityt is less than 5

*/

SELECT * FROM products;


SELECT product_name , quantity,
							CASE
							   WHEN quantity >= 10 THEN 'In stock'
							   WHEN quantity BETWEEN 5 AND 9 THEN 'Limited Stock'
					           ELSE 'Out of stock'
					           END AS  Quantity_category
FROM products;


/*
CASE 3 - case with like operator - category classification
check if the category name contains 'Electronics' or ' finance' using like

*/

SELECT product_name , category,
        CASE
		   WHEN category LIKE 'Electronics%' THEN 'ele item'
		   WHEN category LIKE 'Furnitures%' THEN 'Furni item'
		   ELSE 'Accessories'

		 END AS CLassify_category
FROM products;		 

				
