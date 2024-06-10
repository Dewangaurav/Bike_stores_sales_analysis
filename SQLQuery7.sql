
--7. List the top 5 customers with the highest total expenditure, including their last purchase date.


 SELECT TOP 5 sc.customer_id, sc.first_name, sc.last_name, SUM(soi.quantity * soi.list_price * (1 - soi.discount / 100)) AS total_expenditure, MAX(so.order_date) AS last_purchase_date
FROM sales.customers sc
JOIN sales.orders so ON sc.customer_id = so.customer_id
JOIN sales.order_items soi ON so.order_id = soi.order_id
WHERE so.order_status = 4 
GROUP BY sc.customer_id, sc.first_name, sc.last_name
ORDER BY total_expenditure DESC


