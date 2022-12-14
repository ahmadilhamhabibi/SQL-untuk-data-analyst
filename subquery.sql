-- Subquery

-- Subquery in WHERE
SELECT * FROM sales
WHERE customer_id IN (SELECT DISTINCT customer_id FROM customer WHERE age > 60);

-- Subquery in FROM
SELECT
	a.product_id, a.product_name, a.category, b.quantity
FROM product AS a
LEFT JOIN (SELECT product_id,
		  			SUM(quantity) AS quantity
		  			FROM sales GROUP BY product_id) AS b
ON a.product_id = b.product_id
ORDER BY b.quantity DESC;

-- Subquery in SELECT
SELECT customer_id,
	   order_line,
	   (SELECT customer_name FROM customer
	   		WHERE sales.customer_id = customer.customer_id)
FROM sales
ORDER BY customer_id;