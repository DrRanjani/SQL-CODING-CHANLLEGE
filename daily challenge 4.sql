use ecommercedb;
select * from product;
Select * from sales;
select * from product order by price DESC;
-- Order by and limit 
select * from product order by price desc limit 3 ;
-- Aggregate Functions
select sum(sale_amount) as total_sales_amount from sales;
select avg(sale_amount) as Avg_sales_amount from sales;
select count(*)  as total_sales_count from sales ;
select max(sale_amount) as Highest_sales_amount from sales;
select min(sale_amount) as Lowest_sales_amount from sales;
-- Group by 
SELECT product_id, SUM(sale_amount) AS total_sales
FROM sales
GROUP BY product_id;
-- Group by with Having 
SELECT product_id, SUM(sale_amount) AS total_sales
FROM sales
GROUP BY product_id
HAVING SUM(sale_amount)> 50000;
-- Order by with group by 
SELECT 
    product_id,
    SUM(sale_amount) AS total_sales
FROM sales
GROUP BY product_id
ORDER BY total_sales DESC;
-- LIMIT with GROUP BY
SELECT 
    product_id,
    SUM(sale_amount) AS total_sales
FROM sales
GROUP BY product_id
ORDER BY total_sales DESC
LIMIT 3;
-- HAVING with Aggregate Condition
SELECT 
    product_id,
    SUM(sale_amount) AS total_sales,
    AVG(sale_amount) AS average_sales
FROM sales
GROUP BY product_id
HAVING SUM(sale_amount) > 30000
   AND AVG(sale_amount) > 10000;




