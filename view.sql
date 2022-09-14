-- Virtual Table

-- CTE 
WITH CTE_Logistic AS 
 (SELECT a.order_line, a.order_id, b.customer_name, b.city, b.state, b.country
 FROM sales AS a
 LEFT JOIN customer AS b
 ON a.customer_id = b.customer_id
 ORDER BY a.order_id)
SELECT order_id, customer_name, city
FROM CTE_Logistic

-- TEMP TABLE
DROP TABLE IF EXISTS Temp_logistic;

CREATE TEMP TABLE Temp_logistic (
order_line INT, 
order_id VARCHAR(50), 
customer_name VARCHAR(50), 
city VARCHAR(50), 
state VARCHAR(50), 
country VARCHAR(50)
)

INSERT INTO Temp_logistic 
SELECT a.order_line, a.order_id, b.customer_name, b.city, b.state, b.country
FROM sales AS a
LEFT JOIN customer AS b
ON a.customer_id = b.customer_id
ORDER BY a.order_id;

SELECT * FROM Temp_logistic


-- VIEW

CREATE VIEW logistics AS
SELECT a.order_line, a.order_id, b.customer_name, b.city, b.state, b.country
FROM sales AS a
LEFT JOIN customer AS b
ON a.customer_id = b.customer_id
ORDER BY a.order_id;

SELECT * FROM logistics


-- DROP
DROP VIEW logistics


