#INSERT
INSERT INTO Book(bookid, bookname, publisher, price)
VALUES (11, '스포츠 의학', '한솔의학서적', 90000);
SELECT  * FROM book;  
INSERT INTO Book(bookid, bookname, publisher)
VALUES (12, '스포츠 의학', '한솔의학서적');
SELECT  * FROM book;
INSERT INTO Book(bookid, bookname, price, publisher)
SELECT bookid, bookname, price, publisher
FROM Imported_book;       
SELECT  * FROM book;

#update
UPDATE Customer
SET address ='대한민국 부산'
WHERE custid=5;
SELECT  * FROM Customer;
UPDATE book 
SET    publisher = (SELECT publisher 
                    FROM   imported_book 
                    WHERE  bookid = '21') 
WHERE  bookid = '12' ;

SELECT  * FROM book;

#delete
DELETE FROM Book 
WHERE  bookid = '11'; 
SELECT  * FROM book;