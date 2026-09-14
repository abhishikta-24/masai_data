---VERIFCATION RESULTS
---products:31
---customers:50
---orders:500
---category_targets:6
---orders.status split: Delivered, Cancelled, Pending

SELECT COUNT(*) FROM products;
SELECT COUNT(*) FROM customers;
SELECT COUNT (*) FROM orders;
SELECT COUNT(*) FROM category_targets;

SELECT status, COUNT(*)
FROM orders
GROUP BY status;