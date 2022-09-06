SELECT
	customer_name,
	segment,
	age,
	CASE
		WHEN age BETWEEN 17 AND 30 THEN 'Young-Adults'
		WHEN age BETWEEN 31 AND 45 THEN 'Middle-Age'
		WHEN age > 45 THEN 'Senior'
	END AS age_group
FROM customer;