-- Category Analysis

SELECT category,
       SUM(sales) AS total_sales,
       SUM(profit) AS total_profit
FROM superstore
GROUP BY category
ORDER BY total_sales DESC;

-- Region Analysis

SELECT region,
       SUM(sales) AS total_sales,
       SUM(profit) AS total_profit
FROM superstore
GROUP BY region
ORDER BY total_sales DESC;

-- Top customers

SELECT customer_name,
       SUM(sales) AS total_sales
FROM superstore
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

-- Top products

SELECT product_name,
       SUM(sales) AS total_sales
FROM superstore
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

-- Discount analysis

SELECT category,
       AVG(discount) AS avg_discount,
       SUM(profit) AS total_profit
FROM superstore
GROUP BY category;