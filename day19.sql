--DATE TIME function
SELECT * FROM products;

--1 . NOW() - get current date and time
SELECT NOW() AS CURRENT_DATETIME;

--2 current date() - GET current dtae
SELECT CURRENT_DATE  AS today_date;

SELECT added_date ,current_date ,(CURRENT_DATE - added_date)AS Date_DIFF
FROM products;

--3.EXTRACT() -> Extract parts of a drae
--Extract the year , month and day from the added_date column

SELECT product_name,
      EXTRACT(YEAR FROM added_date) AS year_added
FROM products;	 


--extact the date
SELECT product_name,
      EXTRACT(DAY FROM added_date) AS day_added
FROM products;	 

--extact the month
SELECT product_name,
      EXTRACT(month FROM added_date) AS month_added
FROM products;	 

--4 . AGE() - calculate age btw dates
--Calculate the time difference between added_date and today_date

SELECT product_name ,
	AGE(CURRENT_DATE , added_date) AS Age_since_added
FROM products;	


--5.TO CHAR() - formate dates as string
--Formate added_date in a custom format (DD_MM_YYYY),

SELECT product_name,
			TO_CHAR(added_date ,'DD-Mon-YYYY') AS formated_date
FROM products;			

--6.DATE_PART() -Get specific date part
--extract the day of the week from added_date

SELECT product_name , added_date, --dow = day of week
		DATE_PART('dow', added_date) AS day_of_week
FROM products;


SELECT product_name , added_date, --year extract 
		DATE_PART('year', added_date) AS yaers
FROM products;


SELECT product_name , added_date, --month extract 
		DATE_PART('month', added_date) AS months_ext
FROM products;


--7. TRUNC() - Truncate Date to precision
--Truncate added_date to the start of the month

SELECT product_name , added_date,
		DATE_TRUNC('month' , added_date) AS month_start
FROM products;		

-- to calculate the start week date
SELECT product_name , added_date,
		DATE_TRUNC('week' , added_date) AS week_start
FROM products;		


--8. INTERVAL - add or substract time intervals
--add 6 monts to the added_date
SELECT product_name , added_date,
		added_date + INTERVAL '6 days' AS new_date
FROM products;		


--9.CURRENT_TIME()- get current time
--Retrive only the current time

SELECT CURRENT_TIME AS current_time;

--10. To_DATE() -convert string to date
--convert a string to a date function

SELECT TO_DATE('20-11-2024' , 'DD-MM-YYYY') AS converted_date;