---CASE WHEN tiering, date-based report, and derived-fields queries
(a) 
SELECT
    product_id,
    SUM(amount_inr) AS total_revenue,
    CASE
        WHEN SUM(amount_inr)>=3000 THEN 'High'
        WHEN SUM(amount_inr)>=1000 THEN 'Medium'
        ELSE 'Low'
    END AS revenue_tier
FROM orders
WHERE status='Delivered'
GROUP BY product_id;

(b)
SELECT
    category,
    strftime('%Y-%m',order_date) AS month,
    COUNT(order_id) AS order_count,
    SUM(amount_inr) AS total_revenue,
    AVG(amount_inr) AS avg_revenue
FROM orders
WHERE status='Delivered'
GROUP BY category, month
ORDER BY category THEN month;

(c)
SELECT
    t.category,
    t.target_revenue_inr,
    r.total_revenue,
    (r.total_revenue-t.target_revenue_inr)AS variance,
    CASE
        WHEN r.total_revenue>=t.target_revenue_inr THEN 'Above Target'
        WHEN (t.target_revenue_inr-r.total_revenue)<=(t.target_revenue_inr*0.15) THEN 'Below Target - Watch'
        ELSE 'Below Target - Critical'
    END AS division_note,
    ROUND(((CAST(r.total_revenue AS REAL)-CAST(t.target_revenue_inr AS REAL))/CAST(t.target_revenue_inr AS REAL))*100.0,6)AS percentage_variance
FROM category_targets
LEFT JOIN (
    SELECT category,SUM(amount_inr)AStotal_revenue
    FROM orders
    WHERE status='Delivered'
    GROUP BY category
)r ON t.category=r.category;











