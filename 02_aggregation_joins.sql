---Aggregation and Join Queries


--(a) INNER JOIN

SELECT
    category,
    COUNT(order_id) AS total_delivered_orders,
    SUM(amount_inr) AS total_revenue,
    AVG(amount_inr) AS avg_amount_inr
FROM orders
INNER JOIN products ON orders.product_id=products.product_id
WHERE status='Delivered'
GROUP BY category
HAVING total_revenue>10000;

(b)LEFT JOIN

SELECT 
    product_id,
    product_name,
    COUNT(orders.oder_id) AS total_orders
FROM products
LEFT JOIN orders ON products.product_id=orders.product_id
GROUP BY product_id,product_name
ORDER BY total_orders ASC;


