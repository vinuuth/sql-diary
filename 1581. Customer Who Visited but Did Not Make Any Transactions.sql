


SELECT customer_id, COUNT(*) AS count_no_trans
From Visits AS v
LEFT JOIN Transactions AS t ON v.visit_id = t.visit_id
WHERE t.visit_id IS NULL
GROUP BY customer_id; 

Select v.customer_id, count(v.visit_id) as count_no_trans
From Visits v
Left Join Transactions t on v.visit_id = t.visit_id
Where t.transaction_id is null
Group By v.customer_id
