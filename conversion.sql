-- Conversion Data Types

-- Conversion to string
SELECT sales, TO_CHAR(sales, '9999.99') AS CHAR
FROM sales;

SELECT sales, TO_CHAR(sales, 'L9999.99') AS CURRENT
FROM sales;

SELECT order_date, TO_CHAR(order_date, 'MM-DD-YY') AS TEXT_DATE
FROM sales;


SELECT order_date, TO_CHAR(order_date, 'Month DD, YYYY') AS text_date_format
FROM sales;


-- Conversion to date
SELECT TO_DATE('2014/04/14','YYYY/MM/DD');



-- Conversion to number
SELECT TO_NUMBER('1234.5678','9999.99');

SELECT TO_NUMBER('$1,234.567', 'L9,999.99');