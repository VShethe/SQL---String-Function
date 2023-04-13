
# SQL: String Function





## Table of Content


**1. SQL: String Function**
 - Book_Data.sql
 - Concat.sql
 - Substring.sql
 - Replace and Reverse.sql
 - CHAR_Length.sql
 - concat_string.sql
## Project Description

**String Function:**

**1. Books Data**

    CREATE DATABASE book_shop
    
![1](https://user-images.githubusercontent.com/128286364/231873312-b0adec9e-06c0-4b36-963f-ec7140616762.png)

    CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);
  
![2](https://user-images.githubusercontent.com/128286364/231873368-6894d750-bb13-4568-8cfc-21ab52f0db61.png)

![16](https://user-images.githubusercontent.com/128286364/231873926-463bbd1d-f476-46ec-9a0b-87b6a4888881.png)


    INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES......

    SELECT * FROM books;
![3](https://user-images.githubusercontent.com/128286364/231874038-699e091d-454a-4b2d-ba92-32382db79403.png)

**2. Concat**

    SELECT 
    	author_fname AS first, author_lname AS last, 
    	CONCAT(author_fname, ' ', author_lname) AS full
    FROM books;
![6](https://user-images.githubusercontent.com/128286364/231877259-8c07e718-90fb-47f9-906d-db8f504db283.png)


    SELECT
    CONCAT
    (
        SUBSTRING(title, 1, 10),
        '...'
    ) AS 'short title'
    FROM books;
![9](https://user-images.githubusercontent.com/128286364/231874570-e9803d19-c41d-455a-8a73-7bf6d0da8593.png)


**3. Substring**

    SELECT title FROM books;
    
    SELECT 
        SUBSTRING("Where I'm Calling From: Selected Stories", 1, 10);
![7](https://user-images.githubusercontent.com/128286364/231875121-d152d6e8-7041-4483-80af-df27978f3bc3.png)


    SELECT SUBSTR(title, 1, 10) AS 'short title' FROM books;
![8](https://user-images.githubusercontent.com/128286364/231875183-755ec95e-812f-4d7b-8fe8-d3e96daccd69.png)
    
    
    SELECT 
	      CONCAT(SUBSTRING(title, 1, 10),'...') AS 'short title',
	      CONCAT(author_lname, ',', author_fname) AS 'author',
	      CONCAT(stock_quantity, ' in stock') AS 'quantity'
    FROM books;
![14](https://user-images.githubusercontent.com/128286364/231875017-e37c8281-8530-4fde-975e-70a5e225ddd0.png)



**4. Replace**

    SELECT
        SUBSTRING(REPLACE(title, 'e', '3'), 1, 10) AS 'weird string'
    FROM books;
![10](https://user-images.githubusercontent.com/128286364/231875257-5553258b-56c1-4cf2-849d-7ca64315e2fd.png)


**5. Reverse**
 
  SELECT 
      CONCAT(author_fname, REVERSE(author_fname)) 
  FROM books;
![17](https://user-images.githubusercontent.com/128286364/231876078-c51fdc91-5d3f-4b67-b79c-d1e027a849b5.png)


**6. CHAR Length**

    SELECT
        CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long') 
         As 'length'
    FROM books;
![12](https://user-images.githubusercontent.com/128286364/231876237-5227e825-dcc1-484f-8a36-092c104491b0.png)


**7. UPPER & LOWER**    

    SELECT 
        CONCAT('MY FAVORITE BOOK IS ', UPPER(title)) 
    FROM books;
![13](https://user-images.githubusercontent.com/128286364/231876275-c6c791dc-7ca5-4d37-bb23-f534fc8f4299.png)


    SELECT
        UPPER
            (
               CONCAT(author_fname, ' ', author_lname)
            ) AS 'full name in caps'
    FROM books;
![15](https://user-images.githubusercontent.com/128286364/231876462-ff247181-8f56-4450-acb1-cfb29a407067.png)

## Installation

To run the program

mysq-ctl cli;

