select * from superstore order by Row_ID desc;

-- Write an sql query to solve the given problem statement.

-- 1. What percentage of total orders were shipped on the same date?

select count(*) * 100.0 / (select count(*) from superstore) as percentage_shipped_same_day From superstore where order_date = ship_date;
-- 6.33942

-- 2.Name Top 3 customers with highest total value of orders.

select distinct(Customer_Name),sum(sales) from superstore group by Row_Id order by sum(sales) desc limit 3;

-- 3.Find the top 5 items with the highest average sales per day.

select (distinct(Product_name) as Product_name), count(sales) from superstore  order by Product_name desc;


select order_Id,sales from superstore;