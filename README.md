# 🍕 Pizza Sales Data Analysis Project

## 📌 Project Overview
This project involves a comprehensive analysis of pizza sales data to gain insights into business performance. By analyzing key metrics and trends, the goal is to identify opportunities for growth, optimize operations, and improve decision-making.

The analysis is performed using **SQL** to extract, aggregate, and analyze data from the `pizza_sales` dataset.

## ❓ Problem Statement & Business Questions
The primary objective is to answer critical business questions through data analysis. The project focuses on the following key areas:

### 📊 Key Performance Indicators (KPIs)
1.  **Total Revenue**: The sum of the total price of all pizza orders.
2.  **Average Order Value**: The average amount spent per order, calculated by dividing the total revenue by the total number of orders.
3.  **Total Pizzas Sold**: The sum of the quantities of all pizzas sold.
4.  **Total Orders**: The total number of distinct orders placed.
5.  **Average Pizzas Per Order**: The average number of pizzas sold per order, calculated by dividing the total number of pizzas sold by the total number of orders.

### 📈 Sales Trends
-   **Daily Trend for Total Orders**: Identifying the busiest days of the week.
-   **Hourly Trend for Total Orders**: Identifying peak hours of the day.

### 📦 Product Performance
-   **Percentage of Sales by Pizza Category**: Understanding which pizza categories contribute most to revenue.
-   **Percentage of Sales by Pizza Size**: Analyzing customer preferences for different pizza sizes.
-   **Total Pizzas Sold by Pizza Category**: Visualizing sales volume across different categories.

### 🏆 Best & Worst Sellers
-   **Top 5 Best Sellers**: Identifying the top 5 pizzas based on total pizzas sold.
-   **Bottom 5 Worst Sellers**: Identifying the bottom 5 pizzas based on total pizzas sold.

## 📂 Data Source
-   **Dataset**: `pizza_sales excel file.xlsx` - Contains detailed records of pizza sales, including order details, pizza types, sizes, quantities, and prices.
-   **Database**: The data is imported into a SQL database (e.g., MySQL, MS SQL Server) for analysis.

## 🛠️ Tools & Technologies Used
-   **SQL (Structured Query Language)**: Used for data querying, aggregation, and analysis.
-   **Excel**: Used for initial data inspection and storage.

## 🔍 Analysis & Insights (SQL Queries)
The project utilizes a set of SQL queries to derive insights. Below is a summary of the logic used:

1.  **KPI Calculation**: Aggregating `total_price`, `quantity`, and `order_id` to calculate revenue and order metrics.
2.  **Trend Analysis**: Using date and time functions (e.g., `DAYNAME`, `HOUR`) to group orders by day and hour.
3.  **Category & Size Analysis**: Grouping data by `pizza_category` and `pizza_size` to calculate sales distribution.
4.  **Ranking**: Using `ORDER BY` and `LIMIT` clauses to identify top and bottom-performing products.

## 🚀 How to Run the Project
1.  **Database Setup**:
    -   Create a database named `pizza_db` (or your preferred name).
    -   Import the `pizza_sales excel file.xlsx` data into a table named `pizza_sales`.
2.  **Run Queries**:
    -   Open the `Pizza Sales Project.sql` file in your SQL client (e.g., MySQL Workbench, SQL Server Management Studio).
    -   Execute the queries to view the analysis results.

## 📁 Project Structure
-   `Pizza Sales Project.sql`: Contains all the SQL queries used for the analysis.
-   `pizza_sales excel file.xlsx`: The raw dataset.
-   `README.md`: Project documentation.

---
*This project demonstrates proficiency in SQL for data analysis, including data aggregation, grouping, and trend analysis.*