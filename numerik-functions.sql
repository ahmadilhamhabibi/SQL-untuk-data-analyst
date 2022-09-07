-- Numerik Functions

-- CEIL, FLOOR, and Round

SELECT 
	Sales,
	CEIL(sales) AS ceiling,
	FLOOR(sales) AS flooring,
	ROUND(sales) AS rounding
FROM sales;


-- Power
SELECT POWER(6,2);

SELECT
	age,
	POWER(age,2)
FROM customer
ORDER BY age;