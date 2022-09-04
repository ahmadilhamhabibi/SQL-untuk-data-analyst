-- Aggregation
-- COUNT

SELECT COUNT(1)
FROM sales;


SELECT COUNT(profit)
FROM sales;


-- ALIAS

SELECT COUNT(order_line) AS total_order
FROM sales;


SELECT COUNT(DISTINCT ship_mode) AS unique_ship_mode
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


SELECT customer_id,
	MIN(profit) AS min_profit,
	MAX(profit) AS max_profit,
	AVG(profit) AS avg_profit,
	SUM(profit) AS total_profit
FROM sales
GROUP BY customer_id
ORDER BY total_profit;
