sql-- E-commerce Sales Analysis
-- Dataset: ecommerce_customer_behavior_dataset_v2
-- Tool: MySQL

-- =============================================
-- 1. Overview
-- =============================================
SELECT 
    COUNT(*) AS total_orders,
    COUNT(DISTINCT Customer_ID) AS unique_customers,
    ROUND(SUM(Total_Amount), 0) AS total_revenue,
    ROUND(AVG(Total_Amount), 0) AS avg_order_value,
    ROUND(AVG(Customer_Rating), 2) AS avg_rating,
    ROUND(AVG(Delivery_Time_Days), 1) AS avg_delivery_days
FROM sales;

-- =============================================
-- 2. Revenue by Category
-- =============================================
SELECT 
    Product_Category,
    COUNT(*) AS orders,
    ROUND(SUM(Total_Amount), 0) AS revenue,
    ROUND(AVG(Total_Amount), 0) AS avg_order_value,
    ROUND(AVG(Customer_Rating), 2) AS avg_rating,
    ROUND(AVG(Delivery_Time_Days), 1) AS avg_delivery_days
FROM sales
GROUP BY Product_Category
ORDER BY revenue DESC;

-- =============================================
-- 3. Delivery VS Rating
-- =============================================
SELECT 
    Delivery_Time_Days,
    COUNT(*) AS orders,
    ROUND(AVG(Customer_Rating), 2) AS avg_rating
FROM sales
GROUP BY Delivery_Time_Days
ORDER BY Delivery_Time_Days;