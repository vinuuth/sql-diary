Select customer_id, Count(*) as count_no_trans from Visits v
left join transactions t on t.visit_id = v.visit_id
where t.transaction_id is NULL
group by customer_id;


SELECT customer_id, COUNT(*) AS count_no_trans
From Visits AS v
LEFT JOIN Transactions AS t ON v.visit_id = t.visit_id
WHERE t.visit_id IS NULL
GROUP BY customer_id; 
