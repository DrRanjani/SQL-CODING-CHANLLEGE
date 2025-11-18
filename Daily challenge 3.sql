use ecommercedb;
select * from product;
Select * from sales;
-- Order by and limit 
select * from product order by price desc limit 3 ;
-- Aggregate Functions
select count(*)  as total_sales_count from sales ;
select sum(sale_amount) as total_sales_amount from sales;
select avg(sale_amount) as Avg_sales_amount from sales;
select max(sale_amount) as Highest_sales_amount from sales;
select min(sale_amount) as Lowest_sales_amount from sales;
-- Group by and Having
SELECT product_id, SUM(sale_amount) AS total_sales
FROM sales
GROUP BY product_id
HAVING total_sales > 100;
-- Rank and Denserank
SELECT product_id,product_name,price,
RANK() OVER (ORDER BY price DESC) AS price_rank
FROM product;
SELECT product_id,product_name,price,
DENSE_RANK() OVER (ORDER BY price DESC) AS price_rank
FROM product;





