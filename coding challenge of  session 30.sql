USE Sales_Analytics;
-- Distinct 
select distinct City from customers;
select distinct ProductName from products;
-- Alias 
select CustomerName as Customer_Name ,Email  as Email_ID FROM customers;
select ProductName,Price ,round(price*2) as Doubleprice from products;
-- Where 
SELECT 
    CustomerName, City
FROM
    customers
WHERE
    City = 'Hyderabad';
select ProductName,Price from products where Price > '10,000';
Select * from orders where OrderDate > '2025-01-12';
select ProductName,price,round(price*1.10) as price_with_tax from products;
select CustomerName,Gender,City from customers  where Gender='Female' and City='Chennai';
select ProductName,Price from products where price <> '1500';
-- IS NULL/ NOT NULL
select CustomerName,Email from customers where Email IS NULL;
select * from orders where Quantity IS NOT NULL;
-- IN/ NOT IN 
SELECT CustomerName,City FROM customers
 WHERE City IN ('Chennai', 'Bangalore', 'Hyderabad');
 select * from products 
 where category NOT IN  ('Electronics', 'Furniture');
 

