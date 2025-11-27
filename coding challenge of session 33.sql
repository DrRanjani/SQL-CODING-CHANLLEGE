USE Sales_Analytics;
-- sub-queries 
select * from customers where city=(
select city from customers where customername='Arjun Kumar');
select  * from products where price > ( select avg(price) from products);
select * from products where category = (select category from products where productname='laptop');
select customerid from orders group by customerid having count(*)> (select count(*) from orders where customerid = 5);
select * from products where price>(select price from products where productid=3);