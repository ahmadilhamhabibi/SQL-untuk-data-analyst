-- FILTERING
-- Operator Matermatika (=, !=, >, >=, <, <=)

SELECT customer_name, age, city, region
FROM customer
WHERE age = 25;


SELECT customer_name, age, city, region
FROM customer
WHERE city = 'Miami';


SELECT customer_name, age, city, region
FROM customer
WHERE region != 'West'
LIMIT 10;


SELECT customer_name, age, city, region
FROM customer
WHERE age > 50
LIMIT 10;


SELECT customer_id, ship_date, profit
FROM sales
WHERE ship_date < '2016-11-11'
LIMIT 10;

SELECT customer_name, age, city, region
FROM customer
WHERE age <= 20
LIMIT 10;


-- Operator Logical (AND, OR, NOT)

SELECT customer_name, age, city, region
FROM customer
WHERE age = 25 AND region = 'West';

SELECT customer_name, age, city, region
FROM customer
WHERE age = 25 OR region = 'West';


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
WHERE age BETWEEN 20 AND 30;


SELECT customer_name, age, city, region
FROM customer
WHERE age >= 20 AND age <= 30;

-- IN

SELECT customer_name, age, city, region
FROM customer
WHERE city IN ('Milwaukee', 'San Antonio', 'Las Vegas');

-- LIKE

SELECT customer_name, age, city, region
FROM customer
WHERE customer_name LIKE 'V%' 


SELECT customer_name, age, city, region
FROM customer
WHERE customer_name LIKE '%m'


SELECT customer_name, age, city, region
FROM customer
WHERE city LIKE '%land%'


SELECT customer_name, age, city, region
FROM customer
WHERE customer_name LIKE '_h%'

