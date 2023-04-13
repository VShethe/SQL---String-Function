SELECT CONCAT
    (
        SUBSTRING(title, 1, 10),
        '...'
    ) AS 'short title'
FROM books;



 SELECT CONCAT 
	 (author_fname) AS 'fowards', REVERSE(author_fname) As 'backwards' 
 FROM books;
 
 
 
 SELECT UPPER 
	(CONCAT(author_fname,' ',author_lname)) As 'Full Name in Caps' 
FROM books;



SELECT CONCAT 
	(title, ' was released in ', released_year) 
	As 'Year of Release' 
FROM books;



SELECT 
	CONCAT(SUBSTRING(title, 1, 10),'...') AS 'short title',
	CONCAT(author_lname, ',', author_fname) AS 'author',
	CONCAT(stock_quantity, ' in stock') AS 'quantity'
FROM books;