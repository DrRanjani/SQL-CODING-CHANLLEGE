USE Sales_Analytics;
-- Inner join 
 select o.* ,c.Customername
 from customers c
 inner join orders o
 on c.customerid=o.customerid;
 -- Left join 
 select c.customername,o.* from customers c 
 left join orders o 
 on c.customerid=o.customerid;
 -- Right join 
select s.salespersonname ,o.* from orders o 
 right join salespersons s 
 on o.salespersonid=s.salespersonid;
 -- Multi joins 1
 select o.OrderID,p.productname,c.customername,o.quantity,o.orderdate 
 from orders o 
 join customers c 
 on o.customerid=c.customerid
 join products p 
 on o.productid=p.productid
 order by o.OrderID Asc;
 -- multi joins 2
 select o.orderid,c.customername,c.city,p.productname,p.price ,o.quantity,o.orderdate from customers c 
 join orders o on c.customerid=o.customerid
 join products p on o.productid=p.productid
 where city=' chennai';
 -- total sales amount 
 select o.orderid,o.customerid,p.productname,(o.quantity*p.price) as  total_sales_amount
 from orders o 
  join products p 
  on o.productid=p.productid;
  -- top 5 customers 
  select c.customerid,c.customername,sum(o.quantity*p.price) as total_purchase_amount 
  from orders o 
  join customers c on o.customerid=c.customerid
  join products p on o.productid=p.productid
  group by c.customerid,c.customername 
  order by total_purchase_amount limit 5;
  -- salesperson with their region and totalsales 
  select s.salespersonid,s.salespersonname,s.region ,sum(o.quantity*p.price) as total_sales 
  from orders o   
  join salespersons s on o.salespersonid=s.salespersonid
  join products p on o.productid=p.productid
  group by s.salespersonid,s.salespersonname,s.region order by total_sales Desc;
  -- customers who purchased laptop
  select distinct c.customerid,c.customername,c.city from orders o 
  join customers c on o.customerid=c.customerid
  join products p on o.productid=p.productid
  where p.productname='laptop';
  -- Most sold product 
  select p.productid,p.productname,sum(o.quantity) as total_quantity
  from orders o 
  join products p on o.productid=p.productid
  group by p.productid,p.productname
  order by total_quantity desc
  limit 1  ;
  -- orders of jan-2025
  select * from orders where orderdate>= '2025-01-01' and '2025-01-31' ; 
  -- week-wise orders 
  select year(orderdate) as year,week(orderdate) as weeknum,count(*) as total_orders 
  from orders 
  group by year,weeknum
  order by year,weeknum;
  -- minimum and maximum orderdate
  select min(orderdate) as earliest_order,max(orderdate) as latest_order from orders;
  -- orders with day name
  select o.* ,dayname(o.orderdate) as dayname from orders o 
  order by o.orderdate;
  -- complex query 
  SELECT
  WEEKDAY(o.orderdate) AS weekday_index,
  DAYNAME(o.orderdate) AS day_name,
  SUM(o.quantity * p.price) AS total_sales,
  SUM(o.quantity) AS total_quantity
FROM orders o
JOIN products p ON o.productid = p.productid
GROUP BY weekday_index, day_name
ORDER BY weekday_index;

