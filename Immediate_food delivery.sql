SELECT 
    ROUND(SUM(CASE 
                  WHEN order_date = customer_pref_delivery_date THEN 1 
                  ELSE 0 
              END) * 100.0 / COUNT(*), 2) AS immediate_percentage
FROM (
    SELECT customer_id, order_date, customer_pref_delivery_date
    FROM Delivery
    WHERE (customer_id, order_date) IN (
        SELECT customer_id, MIN(order_date)
        FROM Delivery
        GROUP BY customer_id
    )
) AS first_orders;






WITH first_orders AS (
    SELECT *
    FROM Delivery
    WHERE (customer_id, order_date) IN (
        SELECT customer_id, MIN(order_date) AS first_order_date
        FROM Delivery
        GROUP BY customer_id
    )
)
SELECT
    ROUND(
        100.0 * SUM(order_date = customer_pref_delivery_date) / COUNT(*), 
        2
    ) AS immediate_percentage
FROM first_orders;
