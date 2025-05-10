SELECT p.product_id, IFNULL(ROUND(SUM(p.price* u.units) / SUM(u.units), 2),0) as average_price
FROM Prices p
LEFT Join Unitssold u on u.product_id = p.product_id

AND  u.purchase_date BETWEEN p.start_date AND p.end_date
group by p.product_id
order by average_price;
