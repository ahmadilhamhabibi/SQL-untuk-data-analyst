-- JOIN

-- Membuat tabel sample_sales dengan dengan data penjualan pada bulan Januari 2017
CREATE TABLE sample_sales AS
	SELECT * FROM sales
	WHERE order_date BETWEEN '2017-01-01' AND '2017-01-31';

SELECT customer_id FROM sample_sales
ORDER BY customer_id;
	
-- Membuat tabel sample_customer dengan data usia 20-30 tahun
CREATE TABLE sample_customer AS
	SELECT * FROM customer
	WHERE age BETWEEN 20 AND 30;
	
SELECT customer_id FROM sample_customer
ORDER BY customer_id;
	
-- INNER JOIN
SELECT
	s.order_line, s.product_id, s.customer_id, s.sales,	cus.customer_name, cus.age
FROM sample_sales AS s
INNER JOIN sample_customer AS cus
ON s.customer_id = cus.customer_id
ORDER BY s.customer_id;


-- LEFT JOIN
SELECT
	s.order_line, s.product_id, s.customer_id, s.sales,	cus.customer_name, cus.age
FROM sample_sales AS s
LEFT JOIN sample_customer AS cus
ON s.customer_id = cus.customer_id
ORDER BY s.customer_id;

-- RIGHT JOIN
SELECT
	s.order_line, s.product_id, s.customer_id, s.sales,	cus.customer_name, cus.age
FROM sample_sales AS s
RIGHT JOIN sample_customer AS cus
ON s.customer_id = cus.customer_id
ORDER BY s.customer_id;


-- FULL JOIN
SELECT
	s.order_line, s.product_id, s.customer_id, s.sales,	cus.customer_name, cus.age
FROM sample_sales AS s
FULL JOIN sample_customer AS cus
ON s.customer_id = cus.customer_id
ORDER BY s.customer_id;

-- UNION
SELECT customer_id FROM sample_sales
UNION
SELECT customer_id FROM sample_customer
ORDER BY customer_id;