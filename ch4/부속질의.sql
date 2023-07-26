/*1*/
SELECT (SELECT name 
		FROM customer cs 
        WHERE cs.custid=od.custid)'name',SUM(saleprice) 'total'
FROM orders od
GROUP BY od.custid;

ALTER TABLE orders ADD bname VARCHAR(40);
UPDATE orders
SET bname=(SELECT bookname
		   FROM book
           WHERE book.bookid=orders.bookid);
           
SELECT * FROM orders;

/*2*/
SELECT cs.name, SUM(od.saleprice)'total'
FROM (SELECT custid,name 
	  FROM customer
      WHERE custid<=2)cs, orders od
WHERE cs.custid=od.custid
GROUP BY cs.name;

/*3*/
SELECT orderid,saleprice
FROM orders
WHERE saleprice<=(SELECT AVG(saleprice) FROM orders);

SELECT orderid,custid,saleprice
FROM orders md
WHERE saleprice>(SELECT AVG(saleprice) FROM orders so 
				where md.custid=so.custid);
                
SELECT SUM(saleprice)'total'
FROM orders
WHERE custid IN(SELECT custid FROM customer WHERE address LIKE '%대한민국%');

SELECT orderid, saleprice
FROM orders
WHERE saleprice>ALL(SELECT saleprice FROM orders WHERE custid='3');

SELECT SUM(saleprice)'total'
FROM orders od
WHERE EXISTS (SELECT * FROM customer cs 
			WHERE address LIKE '%대한민국%' AND cs.custid=od.custid );