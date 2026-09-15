--1. WHERE clause
SELECT *
FROM orders
WHERE city = 'Hyderabad';

--2. DISTINCT clause
SELECT DISTINCT category
FROM orders;

--3. ORDER BY+LIMIT clauses
SELECT *
FROM orders
ORDER BY amount_inr DESC
LIMIT 5;

--4. Alias(AS)
SELECT SUM(amount_inr) AS total_revenue
FROM orders;

--5. IN operator
SELECT *
FROM orders
WHERE payment_mode IN ('UPI','Credit Card');

--6. BETWEEN operator
SELECT *
FROM orders
WHERE amount_inr BETWEEN 1000 AND 8000;

--7. NOT BETWEEN operator
SELECT *
FROM orders
WHERE amount_inr NOT BETWEEN 1000 AND 8000;

--8. IS NULL operator
SELECT *
FROM orders
WHERE rating IS NULL;
