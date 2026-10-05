-- Retail Analytics Dashboard - SQL Analysis

-- 1. View all records
SELECT *
FROM retail_sales;


-- 2. Total Sales
SELECT SUM(Sales) AS Total_Sales
FROM retail_sales;


-- 3. Total Profit
SELECT SUM(Profit) AS Total_Profit
FROM retail_sales;


-- 4. Total Quantity Sold
SELECT SUM(Quantity) AS Total_Quantity
FROM retail_sales;


-- 5. Total Orders
SELECT COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM retail_sales;


-- 6. Sales by Region
SELECT Region,
       SUM(Sales) AS Total_Sales
FROM retail_sales
GROUP BY Region
ORDER BY Total_Sales DESC;


-- 7. Profit by Region
SELECT Region,
       SUM(Profit) AS Total_Profit
FROM retail_sales
GROUP BY Region
ORDER BY Total_Profit DESC;


-- 8. Sales by Category
SELECT Category,
       SUM(Sales) AS Total_Sales
FROM retail_sales
GROUP BY Category
ORDER BY Total_Sales DESC;


-- 9. Profit by Category
SELECT Category,
       SUM(Profit) AS Total_Profit
FROM retail_sales
GROUP BY Category
ORDER BY Total_Profit DESC;


-- 10. Sales by Customer Segment
SELECT Segment,
       SUM(Sales) AS Total_Sales
FROM retail_sales
GROUP BY Segment
ORDER BY Total_Sales DESC;


-- 11. Top 10 Products by Sales
SELECT Product,
       SUM(Sales) AS Total_Sales
FROM retail_sales
GROUP BY Product
ORDER BY Total_Sales DESC
LIMIT 10;


-- 12. Top 10 Products by Profit
SELECT Product,
       SUM(Profit) AS Total_Profit
FROM retail_sales
GROUP BY Product
ORDER BY Total_Profit DESC
LIMIT 10;


-- 13. Monthly Sales
SELECT
    YEAR(`Order Date`) AS Order_Year,
    MONTH(`Order Date`) AS Order_Month,
    SUM(Sales) AS Total_Sales
FROM retail_sales
GROUP BY YEAR(`Order Date`), MONTH(`Order Date`)
ORDER BY Order_Year, Order_Month;


-- 14. Monthly Profit
SELECT
    YEAR(`Order Date`) AS Order_Year,
    MONTH(`Order Date`) AS Order_Month,
    SUM(Profit) AS Total_Profit
FROM retail_sales
GROUP BY YEAR(`Order Date`), MONTH(`Order Date`)
ORDER BY Order_Year, Order_Month;


-- 15. Sales by City
SELECT City,
       SUM(Sales) AS Total_Sales
FROM retail_sales
GROUP BY City
ORDER BY Total_Sales DESC;


-- 16. Profit Margin by Category
SELECT
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS Profit_Margin_Percentage
FROM retail_sales
GROUP BY Category
ORDER BY Profit_Margin_Percentage DESC;