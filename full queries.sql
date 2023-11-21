-- In this project, I will leverage SQL to extract meaningful insights from Superstore's data.
-- The analysis will span from basic observations to more sophisticated Key Performance Indicators (KPIs
-- Assuming the role of a data analyst for Superstore, my goal is to derive actionable insights for 
-- effective communication with stakeholders and management.
-- Throughout the project, each SQL query will be accompanied by a clear explanation of its purpose and the insights it unveils, 
-- providing a comprehensive understanding of the supermarket's performance.

-- Creat table
CREATE TABLE IF NOT EXISTS sales (
    invoice_id VARCHAR(20) PRIMARY KEY,
    branch CHAR(1),
    city VARCHAR(50),
    customer_type VARCHAR(20),
    gender VARCHAR(10),
    product_line VARCHAR(50),
    unit_price DECIMAL(10, 2),
    quantity INT,
    tax DECIMAL(10, 4),
    total DECIMAL(10, 2),
    date DATE,
    time TIME,
    payment VARCHAR(50),
    cogs DECIMAL(10, 2),
    gross_margin_percentage DECIMAL(10, 2),
    gross_income DECIMAL(10, 2),
    rating DECIMAL(3, 1)
);
-- Select * to view all data in the table
SELECT *
FROM sales;

-- Total Sales for Each Product Line:
SELECT product_line, SUM(total) AS total_sales
FROM sales
GROUP BY product_line;
-- Food and beverages is the highest performing product line

-- Average Rating by City
SELECT city, AVG(rating) AS avg_rating
FROM sales
GROUP BY city;
-- The three cities have similar ratings ranging from 6.8 - 7.07

-- Top 5 Selling products
SELECT product_line, SUM(quantity) AS total_quantity_sold
FROM sales
GROUP BY product_line
ORDER BY total_quantity_sold DESC
LIMIT 5;
-- "Electronic accessories", "Food and beverages", "Sports and travel", "Home and lifestyle", "Fashion accessories"

--Average Gross Margin Percentage by Branch:
SELECT branch, AVG(gross_margin_percentage) AS avg_margin_percentage
FROM sales
GROUP BY branch;
-- Avg gross margin percentage were all the same @ 4.76 %

-- Sales by customer type
SELECT customer_type, SUM(total) AS total_sales
FROM sales
GROUP BY customer_type;
-- Normal $158743.62 and members slightly higher @ $164223.81

SELECT gender, product_line, COUNT(*) AS num_sales
FROM sales
GROUP BY gender, product_line;
-- "Female", "Fashion accessories", 96 sales

-- Sales by paymebt method
SELECT
    payment,
    COUNT(*) AS num_transactions,
    SUM(total) AS total_sales
FROM sales
GROUP BY payment;
-- "Credit card" 311 , 100767.29
-- "Ewallet" 345 , 109993.38
-- "Cash" 344 ,112206.76

-- Time of day where shoppers are most frequent
SELECT
    EXTRACT(HOUR FROM time) AS hour_of_day,
    COUNT(*) AS num_transactions,
    SUM(total) AS total_sales
FROM sales
GROUP BY hour_of_day
ORDER BY hour_of_day;
-- 19 113 39699.58, 7 oclock seems to be where most shoppers go to store

-- See the distrubition of sales in each city
SELECT
    city,
    COUNT(*) AS num_transactions,
    SUM(total) AS total_sales
FROM sales
GROUP BY city
ORDER BY total_sales DESC;
-- "Naypyitaw",	328, 110568.86 -- top sales 
-- "Yangon",340, 106200.57
-- "Mandalay",	332, 106198.00

-- Calculate the total sales, cost of goods sold (COGS), and profit for each month.
SELECT
    EXTRACT(MONTH FROM date) AS month,
    EXTRACT(YEAR FROM date) AS year,
    SUM(total) AS total_sales,
    SUM(cogs) AS total_cogs,
    SUM(gross_income) AS total_profit
FROM sales
GROUP BY year, month
ORDER BY year, month;

-- 1, 2019, 116292.11, 110754.16, 5537.95
-- 2, 2019, 97219.58, 92589.88, 4629.70
-- 3, 2019, 109455.74, 104243.34, 5212.40

SELECT
    product_line,
    SUM(total) AS total_sales,
    SUM(cogs) AS total_cogs,
    SUM(gross_income) AS total_profit
FROM sales
GROUP BY  product_line
ORDER BY  total_profit DESC;


-- Avg taxes 
SELECT
    AVG(tax / total) * 100 AS avg_tax_rate
FROM sales;
-- 4.76188584063124112500

SELECT
    product_line,
    customer_type,
    AVG(quantity) AS avg_quantity_sold
FROM sales
GROUP BY product_line, customer_type
ORDER BY avg_quantity_sold DESC;
-- "Home and lifestyle", "Member", 5.9036144578313253 is the top by customer type and avg quantity sold

-- Top 5 dates wuth most transactions
SELECT
    date,
    COUNT(*) AS num_transactions
FROM sales
GROUP BY date
ORDER BY num_transactions DESC, date
LIMIT 5;

-- "2019-02-07"	20
-- "2019-02-15"	19
-- "2019-01-08"	18
-- "2019-03-02"	18
-- "2019-03-14"	18
