SELECT * FROM pizza_sales;
SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales;
SELECT SUM(total_price) / COUNT(DISTINCT order_id) AS Avg_Order_Value FROM pizza_sales;
SELECT SUM(quantity) AS Total_Pizza_Soled FROM pizza_sales;
SELECT COUNT(DISTINCT order_id) AS Total_Orders FROM pizza_sales;
SELECT SUM(quantity) /COUNT(DISTINCT order_id) AS Avg_Pizzas_Per_Order FROM pizza_sales;

-- Daily Trend
SELECT 
  DAYNAME(STR_TO_DATE(order_date, '%Y-%m-%d')) AS order_day, 
  COUNT(DISTINCT order_id) AS Total_Orders 
FROM pizza_sales 
GROUP BY DAYNAME(STR_TO_DATE(order_date, '%Y-%m-%d'));

-- Hourly Trend
SELECT HOUR(order_time) AS Order_Hours, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales
GROUP BY HOUR(order_time);

-- Percentage of Sales by Pizza Category
SELECT pizza_category, 
       SUM(total_price) AS Total_Sales, 
       SUM(total_price) * 100 / (SELECT SUM(total_price)FROM pizza_sales) AS Percentage_Of_Total_Sales
FROM pizza_sales
GROUP BY pizza_category;

-- Percentage of Sales by Pizza Size
SELECT pizza_size, 
       SUM(total_price) AS Total_Sales, 
       SUM(total_price) * 100 / (SELECT SUM(total_price)FROM pizza_sales) AS Percentage_Of_Total_Sales
FROM pizza_sales
GROUP BY pizza_size;

-- Total Pizza soled by Pizza Category
SELECT pizza_category, SUM(quantity) AS Total_Pizzas_Sold
FROM pizza_sales
GROUP BY pizza_category;

-- Top 5 Best Sellers by Total Pizzas Sold
SELECT pizza_name, SUM(quantity) AS Total_Pizzas_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY SUM(quantity) DESC
LIMIT 5;

-- Bottem 5 Sellers by Total Pizzas Sold
SELECT pizza_name, SUM(quantity) AS Total_Pizzas_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY SUM(quantity) asc
LIMIT 5;