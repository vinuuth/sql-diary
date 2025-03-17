Select customer_id, Count(*) as count_no_trans from Visits v
left join transactions t on t.visit_id = v.visit_id
where t.transaction_id is NULL
group by customer_id;
