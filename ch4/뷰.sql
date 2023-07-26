CREATE VIEW vw_book
AS SELECT *
FROM book
WHERE bookname LIKE '%축구%';

SELECT *
FROM vw_book;

CREATE VIEW vw_customer
AS SELECT *
FROM customer
WHERE address LIKE '%대한민국%';

SELECT *
FROM vw_customer;

CREATE VIEW vw_orders(orderid,custid,name,bookid,bookname,saleprice,orderdate)
AS SELECT od.orderid,od.custid,cs.name,od.bookid,bk.bookname,
od.saleprice,od.orderdate
FROM orders od, customer cs, book bk
WHERE od.custid=cs.custid AND od.bookid=bk.bookid;

SELECT orderid,bookname,saleprice
FROM vw_orders
WHERE name='김연아';

/*2*/
CREATE OR REPLACE VIEW vw_customer(custid,name,address)
AS SELECT custid,name,address
FROM customer
WHERE address LIKE '%영국%'

SELECT *
FROM vw_customer;

/*3*/
DROP VIEW vw_customer;

SELECT *
FROM vw_customer;
