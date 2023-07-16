# JOIN
SELECT * FROM Customer, Orders;

SELECT * FROM Customer, Orders 
WHERE Customer.custid=Orders.custid;
SELECT *
FROM Customer, Orders
WHERE Customer.custid=Orders.custid
ORDER BY Customer.custid;
SELECT name, saleprice 
FROM Customer, Orders
WHERE Customer.custid=Orders.custid;
SELECT name, SUM(saleprice)
FROM Customer, Orders
WHERE Customer.custid=Orders.custid
GROUP BY Customer.name
ORDER BY Customer.name;
SELECT Customer.name, book.bookname 
FROM Customer, Orders, Book 
WHERE Customer.custid=Orders.custid AND Orders.bookid=Book.bookid;
SELECT Customer.name, book.bookname
FROM Customer, Orders, Book 
WHERE Customer.custid=Orders.custid AND Orders.bookid=Book.bookid 
AND Book. price=20000;
SELECT Customer.name, saleprice 
FROM Customer LEFT OUTER JOIN Orders 
ON Customer.custid=Orders.custid;

#부속질의
SELECT bookname FROM Book WHERE	price = (SELECT MAX(price) FROM Book);
SELECT name FROM Customer WHERE custid IN (SELECT custid FROM Orders);
SELECT name FROM Customer 
WHERE custid IN(SELECT custid FROM Orders 
WHERE bookid IN(SELECT bookid FROM Book WHERE publisher='대한미디어'));
SELECT b1.bookname
FROM Book b1
WHERE b1.price > (SELECT avg(b2.price) FROM Book b2 
WHERE b2.publisher=b1.publisher);

# 집합 연산
SELECT name 
FROM Customer 
WHERE address LIKE '대한민국%'
UNION  
SELECT name
FROM Customer 
WHERE custid IN (SELECT custid FROM Orders);
SELECT name, address 
FROM Customer cs 
WHERE EXISTS (SELECT * FROM Orders od WHERE cs.custid=od.custid);