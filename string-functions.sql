-- String 

-- Length
SELECT
	customer_name,
	LENGTH(customer_name) AS Len_char
FROM customer
WHERE customer_name LIKE 'Ad%';


-- Upper and Lower
SELECT
	customer_name,
	UPPER(customer_name) AS Upper_characters,
	LOWER(customer_name) AS Lower_characters
FROM customer
WHERE customer_name LIKE 'Ad%';

-- Replace
SELECT
	customer_name,
	state,
	country,
	REPLACE(country,'United States','US') AS new_country
FROM customer
WHERE customer_name LIKE 'Ad%';

-- Concate
SELECT
	customer_name,
	city||', '||state||', '||country AS address
FROM customer
WHERE customer_name LIKE 'Ad%';

--TRIM
SELECT TRIM('   Ahmad     Ilham    Habibi    ');

