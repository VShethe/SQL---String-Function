SELECT CHAR_LENGTH('Hello World');

SELECT author_lname, CHAR_LENGTH(author_lname) AS 'length' FROM books;

SELECT
  CONCAT(author_lname, ' is ', CHAR_LENGTH(author_lname), ' characters long') 
  As 'length'
FROM books;


SELECT CONCAT('MY FAVORITE BOOK IS ', UPPER(title)) FROM books;
SELECT CONCAT(LOWER('MY FAVORITE BOOK IS '), LOWER(title)) FROM books;