USE Sales_Analytics;
-- Order by
select * from customers order by customername;
select  * from products order by price desc limit 3 ;
-- Count with groupby,having and orderby
select count(*) as customer_count from customers;
select city, count(*) as total_customer from customers group by city ;
select gender,count(*) as gender_count from customers group by gender;
select  city,count(*) as total_customers  from customers group by city having count(*) >2;
SELECT CustomerName,customerid,COUNT(*) AS total_orders 
from Customers 
GROUP BY customerid
HAVING COUNT(*) > 3;
select productname,price from products where price>5000 order by price desc limit 3;
SELECT city,COUNT(*) AS customer_count
FROM customers
GROUP BY city
ORDER BY customer_count DESC;
-- Between  with  Aggregations
select productid,sum(quantity) as total_quantity
 from orders 
 group by productid 
 having sum(quantity) between  5 and 8;
 -- In 
 select * from customers where city IN ('Chennai' , ' Pune', ' Hyderabad') order by customername ;
 select customername,city from customers 
 where city in ('Chennai','Pune','Hyderabad') 
 group by city,customername 
 order by city,customername;
 -- Not In 
 select * from products where category not in ('Electronics' , 'Furniture') and price <10000;
 -- like 
SELECT * FROM customers
WHERE customername LIKE 'A%'
ORDER BY customerid;
-- aggregation with group by and having 
select category,round(avg(price)) as avg_price from products 
group by category 
having avg(price) > 5000; 

