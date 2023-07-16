# 집계 함수
SELECT SUM(saleprice) FROM Orders;
SELECT SUM(saleprice) AS 총매출 FROM	Orders;
SELECT SUM(saleprice) AS 총매출 FROM Orders WHERE custid=2;
SELECT	SUM(saleprice) AS Total,
		AVG(saleprice) AS Average,
		MIN(saleprice) AS Minimum,
		MAX(saleprice) AS Maximum
FROM	Orders;
SELECT COUNT(*) FROM Orders;

#group by
SELECT	custid, COUNT(*) AS 도서수량, SUM(saleprice) AS 총액
FROM Orders
GROUP BY custid 
ORDER BY custid; 
SELECT custid, COUNT(*) AS 도서수량	
FROM Orders				
WHERE saleprice >= 8000		
GROUP BY custid				
HAVING count(*) > 1			
ORDER BY custid;

