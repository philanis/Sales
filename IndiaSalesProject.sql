SELECT * 
FROM sales.customers;

SELECT count(*) 
FROM sales.customers;

SELECT COUNT(*) 
FROM sales.transactions;

SELECT * 
FROM sales.transactions 
WHERE market_code='Mark001';

SELECT COUNT(*) 
FROM sales.transactions 
WHERE market_code='Mark001';

SELECT DISTINCT product_code 
FROM sales.transactions 
WHERE market_code='Mark001';

SELECT * 
FROM sales.transactions 
WHERE currency="USD";

SELECT transactions.*, date.* 
FROM sales.transactions 
INNER JOIN sales.date 
ON sales.transactions.order_date=sales.date.date 
WHERE sales.date.year=2020;

SELECT SUM(transactions.sales_amount)
FROM sales.transactions 
INNER JOIN sales.date 
ON sales.transactions.order_date=sales.date.date 
WHERE sales.date.year=2020; 

SELECT SUM(transactions.sales_amount)
FROM sales.transactions 
INNER JOIN sales.date 
ON sales.transactions.order_date=sales.date.date 
WHERE sales.date.year=2019;

SELECT SUM(transactions.sales_amount)
FROM sales.transactions 
INNER JOIN sales.date 
ON sales.transactions.order_date=sales.date.date 
WHERE sales.date.year=2020 AND sales.transactions.currency="INR";

SELECT SUM(transactions.sales_amount) 
FROM sales.transactions 
INNER JOIN sales.date 
ON sales.transactions.order_date=sales.date.date 
WHERE sales.date.year=2020 AND sales.date.month_name="January";

SELECT SUM(transactions.sales_amount) 
FROM sales.transactions 
INNER JOIN sales.date 
ON sales.transactions.order_date=sales.date.date 
WHERE sales.date.year=2020 AND sales.transactions.market_code="Mark001";