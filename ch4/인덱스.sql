CREATE INDEX ix_book ON book(bookname);
CREATE INDEX ix_book2 ON book(publisher,price);
SHOW INDEX FROM book;

SELECT * 
FROM book
WHERE publisher='대한미디어' AND price>=30000;

ANALYZE TABLE book;
DROP INDEX ix_book ON book;