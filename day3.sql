--create the table user
CREATE TABLE users(
	user_id INT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	email VARCHAR(100) UNIQUE,
	age INT CHECK (age >= 18),
	reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--Used the  all constraints

--SELECT the table users
SELECT * FROM users;

--insert the data into the table
INSERT INTO users(user_id , name , email , age , reg_date)
VALUES (1 , ' shweta' , 'shweta@gmail.com' , 20 , '2020-04-01');

-- insert again -> user id is a primary key but both user id is same so show the error
INSERT INTO users(user_id , name , email , age , reg_date)
VALUES (1 , ' arun' , 'ashweta@gmail.com' , 20 , '2020-04-01');

--insert the data into the table -> show the error because email is not uniqe
INSERT INTO users(user_id , name , email , age , reg_date)
VALUES (2 , ' abhi' , 'shweta@gmail.com' , 20 , '2020-04-01');

--insert the data into the table -> show the error because  age is less than 18
INSERT INTO users(user_id , name , email , age , reg_date)
VALUES (6 , ' abhis' , 'aashweta@gmail.com' , 16 , '2020-04-01');


	