# REPLACE:
 
SELECT
    SUBSTRING(REPLACE(title, 'e', '3'), 1, 10)
FROM books;



SELECT
    SUBSTRING(REPLACE(title, 'e', '3'), 1, 10) AS 'weird string'
FROM books;

SELECT  REPLACE ( CONCAT('I',' ','LIKE',' ','CATS'),' ','-');


SELECT  
	REPLACE(title,' ','->')
	AS 'title'
FROM books;

#  REVERSE:
 
SELECT CONCAT(author_fname, REVERSE(author_fname)) FROM books;



