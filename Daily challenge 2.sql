-- Dataase creation
create database online_Bookstore;
use online_Bookstore;
-- Table 1 creation
create table online_Books(
BookID int primary key,
Tittle varchar(100) not null,
Author varchar(50) not null,
ISBN varchar(20) unique,
price decimal(8,2) check(price>=0)
);
-- Table 2 creation 
create table online_orders(
orderID int primary key,
Book_ID int,
FOREIGN KEY (Book_ID) REFERENCES online_Books(BookID),
orderDate DATE  Not Null,
Quantity int check(Quantity >0)
);
-- Inserting values
select * from online_Books;
insert into online_Books( BookID,Tittle,Author,ISBN ,price)
values
(1000, 'Harry Potter', 'J.K.Rowling', 'HP1000', 900),
(1001, 'War and Peace' , 'Leo Tolstoy', 'WAP1001' , 800),
(1002, 'Twilight Saga', 'Stephenie Meyer' , 'TS1002' , 850),
(1003, 'Alchemist'  , 'Paulo Coelhno' , 'APC1003', 700),
(1004, 'Lord Of Rings' , 'J.R.R Tolkien' , 'LOR1004' , 750);
-- inserting values into orders table
select * from online_orders;
insert into  online_orders (orderID,Book_ID,orderDate,Quantity)
values 
(50, 1000 , '2025-10-01',5),
(51, 1002 , '2025-07-08',4),
(53, 1004 , '2025-09-10' ,3);
select * from online_orders;
-- Update book price 
Set SQL_SAFE_UPDATES=0;
select * from online_Books;
UPDATE online_Books
SET price = 840
WHERE Book_ID = 1004;
select * from online_Books;
select * from online_orders;
-- Update Quantity
UPDATE online_orders
SET quantity = 5
WHERE Book_ID = 1004;
select * from online_orders;
select * from online_orders;
Delete from online_orders
where orderID=51;
select * from online_orders;
Set SQL_SAFE_UPDATES=0;
SELECT * FROM online_Books;
DELETE FROM online_orders
WHERE Book_ID = 1000;
select * from online_orders;
DELETE FROM online_Books
WHERE Tittle = 'Harry Potter';
SELECT * FROM online_Books;
-- Truncate 
-- remove all dependent rows first
DELETE FROM online_orders;
-- truncate 
TRUNCATE TABLE online_orders;









