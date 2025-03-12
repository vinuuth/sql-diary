Select product_name, year, price from product
right join sales  on product.product_id = sales.product_id ;

SELECT P.product_name AS product_name, S.year AS year, S.price AS price
FROM Sales S
JOIN Product P
ON P.product_id = S.product_id;
