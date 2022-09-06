-- Aggregation
-- COUNT

SELECT COUNT(1)
FROM sales;


SELECT COUNT(order_line)
FROM sales;



-- ALIAS

SELECT COUNT(order_line) AS number_of_order
FROM sales;


SELECT 
	COUNT(DISTINCT ship_mode) AS unique_ship_mode
FROM sales;


SELECT COUNT(ship_mode) AS total_ship_mode,
COUNT(DISTINCT ship_mode) AS unique_ship_mode
FROM sales;


SELECT
	MIN(profit) AS min_profit,
	MAX(profit) AS max_profit,
	AVG(profit) AS avg_profit,
	SUM(profit) AS total_profit
FROM sales;


SELECT order_date,
	MIN(profit) AS min_profit,
	MAX(profit) AS max_profit,
	AVG(profit) AS avg_profit,
	SUM(profit) AS total_profits
FROM sales
GROUP BY order_date
ORDER BY order_date;


SELECT order_date,
	MIN(profit) AS min_profit,
	MAX(profit) AS max_profit,
	AVG(profit) AS avg_profit,
	SUM(profit) AS total_profit
FROM sales
GROUP BY order_date
ORDER BY order_date;


SELECT order_date,
	MIN(profit) AS min_profit,
	MAX(profit) AS max_profit,
	AVG(profit) AS avg_profit,
	SUM(profit) AS total_profit
FROM sales
GROUP BY order_date
HAVING SUM(profit) > 1000
ORDER BY order_date;