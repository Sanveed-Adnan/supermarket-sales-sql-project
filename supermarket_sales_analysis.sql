-- Supermarket Sales SQL Project
-- Author: Sanveed Adnan Qureshi
-- Date: 2024-12-19
-- Description: This file contains SQL queries used for data analysis 
-- and business insights extraction from the supermarket sales dataset.

-- Total Sales by City
SELECT City, SUM(Total_Amount) AS Total_Sales 
FROM Sales
GROUP BY City
ORDER BY Total_Sales DESC;

-- Total Sales by Product Line
SELECT Product_Line, SUM(Total_Amount) AS Total_Sales 
FROM Sales
GROUP BY Product_Line
ORDER BY Total_Sales DESC;

-- Average Spending by Customer Type
SELECT Customer_Type, AVG(Total_Amount) AS Average_Spending 
FROM Sales
GROUP BY Customer_Type;

-- Monthly Sales Trend
SELECT strftime('%Y-%m', Date) AS Sale_Month, SUM(Total_Amount) AS Monthly_Sales 
FROM Sales
GROUP BY Sale_Month
ORDER BY Sale_Month ASC;

-- Peak Sales Hours
SELECT strftime('%H', Time) AS Sale_Hour, SUM(Total_Amount) AS Total_Sales 
FROM Sales
GROUP BY Sale_Hour
ORDER BY Total_Sales DESC;

-- Top-Selling Products by Revenue
SELECT Product_Line, SUM(Total_Amount) AS Total_Revenue 
FROM Sales
GROUP BY Product_Line
ORDER BY Total_Revenue DESC
LIMIT 5;

-- Sales by Payment Method
SELECT Payment_Method, COUNT(*) AS Transaction_Count, SUM(Total_Amount) AS Total_Sales 
FROM Sales
GROUP BY Payment_Method
ORDER BY Total_Sales DESC;

-- Sales by Gender
SELECT Gender, SUM(Total_Amount) AS Total_Sales, COUNT(*) AS Transaction_Count 
FROM Sales
GROUP BY Gender
ORDER BY Total_Sales DESC;

-- Best-Selling Products by Quantity
SELECT Product_Line, SUM(Quantity) AS Total_Quantity 
FROM Sales
GROUP BY Product_Line
ORDER BY Total_Quantity DESC
LIMIT 5;
