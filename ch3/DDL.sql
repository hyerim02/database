#CREATE
CREATE TABLE NewBook (
bookid INTEGER,
bookname VARCHAR(20), 
publisher VARCHAR(20),
price INTEGER);

# 기본키 지정
drop table NewBook;
CREATE TABLE NewBook (
bookid INTEGER PRIMARY KEY,
bookname VARCHAR(20),
publisher VARCHAR(20),
price INTEGER);

# 복잡
drop table NewBook;
CREATE TABLE NewBook (
bookname VARCHAR(20) NOT NULL,
publisher VARCHAR(20) UNIQUE,
price INTEGER DEFAULT 10000 CHECK(price > 1000),
PRIMARY KEY	(bookname, publisher));

CREATE TABLE NewCustomer (
custid INTEGER	PRIMARY KEY,
name VARCHAR(40),
address VARCHAR(40),
phone VARCHAR(30));

CREATE TABLE NewOrders (
orderid	INTEGER,
custid	INTEGER	NOT NULL,
bookid	INTEGER	NOT NULL,
saleprice	INTEGER,
orderdate	DATE,
PRIMARY KEY(orderid),
FOREIGN KEY(custid) REFERENCES NewCustomer(custid) ON DELETE CASCADE);

#ALTER
ALTER TABLE NewBook ADD isbn VARCHAR(13);
ALTER TABLE NewBook MODIFY isbn INTEGER;
ALTER TABLE NewBook MODIFY bookid INTEGER NOT NULL;
ALTER TABLE NewBook ADD PRIMARY KEY(bookid);

#DROP
DROP TABLE NewBook;
DROP TABLE NewCustomer;
select * from NewCustomer;

DROP TABLE NewOrders;
DROP TABLE NewCustomer;

select * from NewBook;
select * from NewCustomer;
select * from NewOrders;