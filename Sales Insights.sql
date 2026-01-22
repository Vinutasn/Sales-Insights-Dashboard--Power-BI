-- 1. Show all customer records
SELECT  * FROM sales.customers;

-- 2. Show total number of customers
SELECT COUNT(*) FROM sales.customers;

-- 3.  Show transactions for Chennai market (market code for chennai is Mark001)
SELECT sales.transactions.*
FROM sales.transactions
WHERE sales.transactions.market_code="Mark001";

-- 4.  Show distrinct product codes that were sold in chennai
SELECT DISTINCT product_code FROM sales.transactions
WHERE sales.transactions.market_code="Mark001";

-- 5. Show transactions where currency is US dollars
SELECT sales.transactions.*
FROM sales.transactions
WHERE sales.transactions.currency="USD";

-- 6. Show transactions in 2020 join by date table
SELECT sales.transactions.* 
FROM sales.transactions
JOIN sales.date
ON sales.transactions.order_date=sales.date.date
WHERE sales.date.year=2020;

-- 7. Show total revenue in year 2020
SELECT SUM(sales.transactions.sales_amount) AS Total_sales
FROM sales.transactions
JOIN sales.date
ON sales.transactions.order_date=sales.date.date
WHERE sales.date.year=2020;

-- 8.  Show total revenue in year 2020, January Month
SELECT SUM(sales.transactions.sales_amount) AS Total_sales
FROM sales.transactions
JOIN sales.date
ON sales.transactions.order_date=sales.date.date
WHERE sales.date.year=2020 AND sales.date.month_name="January";

-- 9.  Show total revenue in year 2020 in Chennai
SELECT SUM(sales.transactions.sales_amount) AS Total_sales
FROM sales.transactions
JOIN sales.date
ON sales.transactions.order_date=sales.date.date
WHERE sales.date.year=2020 AND sales.transactions.market_code="Mark001";

SELECT COUNT(*) FROM sales.transactions
WHERE currency='INR\r';

SELECT COUNT(*) FROM sales.transactions
WHERE currency='INR'; 

SELECT * FROM sales.transactions
WHERE currency='USD\r' or  currency='USD'; 

