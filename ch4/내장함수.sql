#숫자
SELECT 	ABS(-78), ABS(78);
SELECT	ROUND(4.875, 1); 
SELECT custid '고객번호', ROUND(SUM(saleprice)/COUNT(*), -2) '평균금액' 
FROM Orders 
GROUP BY custid;

#문자
SELECT bookid, REPLACE(bookname, '야구', '농구') bookname, publisher, price
FROM Book;
SELECT bookname '제목', CHAR_LENGTH(bookname) '문자수', LENGTH(bookname) '바이트수'
FROM Book
WHERE publisher='굿스포츠';
SELECT SUBSTR(name, 1, 1) '성', COUNT(*) '인원'
FROM Customer
GROUP BY SUBSTR(name, 1, 1);

#날짜/시간 함수
SELECT orderid '주문번호', orderdate '주문일', ADDDATE(orderdate, INTERVAL 10 DAY) '확정'
FROM Orders;
SELECT orderid '주문번호', STR_TO_DATE(orderdate, '%Y-%m-%d') '주문일', custid '고객번호', bookid '도서번호'
FROM Orders
WHERE orderdate=DATE_FORMAT('20140707', '%Y%m%d');
SELECT SYSDATE(),DATE_FORMAT(SYSDATE(), '%Y/%m/%d %M %h:%s') 'SYSDATE_1'; 
