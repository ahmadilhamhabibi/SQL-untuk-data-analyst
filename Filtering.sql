-- FILTERING
-- Operator Matermatika (=, !=, >, >=, <, <=)

SELECT customer_name, age, city, region
FROM customer
WHERE age = 25;


SELECT customer_name, age, city, region
FROM customer
WHERE age != 25
LIMIT 5;


SELECT customer_name, age, city, region
FROM customer
WHERE age > 60
ORDER BY age 
LIMIT 5;


SELECT customer_name, age, city, region
FROM customer
WHERE age <= 20
ORDER BY age DESC
LIMIT 5;


-- Operator Logical (AND, OR, NOT)

SELECT customer_name, age, city, region
FROM customer
WHERE age = 25 AND region = 'West';


SELECT customer_name, age, city, region
FROM customer
WHERE age = 25 OR city = 'Aurora';


SELECT customer_name, age, city, region
FROM customer
WHERE NOT age = 69
ORDER BY age DESC;


-- BETWEEN

SELECT customer_name, age, city, region
FROM customer
WHERE age BETWEEN 26 AND 28;


SELECT customer_name, age, city, region
FROM customer
WHERE age >= 26 AND age <= 28;

-- IN

SELECT customer_name, age, city, region
FROM customer
WHERE city IN ('Milwaukee', 'San Antonio', 'Las Vegas');

