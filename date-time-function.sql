-- DATE & TIME


-- CURRENT

SELECT CURRENT_DATE;

SELECT CURRENT_TIME;
SELECT CURRENT_TIME(1);

SELECT CURRENT_TIMESTAMP;


-- AGE
SELECT age('2014-01-31','2014-01-01');

SELECT order_line, order_date, ship_date,
		age(ship_date,order_date) AS time_taken
FROM sales
ORDER BY time_taken DESC;


-- EXTRACT
SELECT
	order_date,
	EXTRACT(day FROM order_date) AS day,
	EXTRACT(month FROM order_date) AS month,
	EXTRACT(year FROM order_date) AS year
FROM sales
GROUP BY order_date
LIMIT 10;
