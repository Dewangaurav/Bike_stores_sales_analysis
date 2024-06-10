


 --3. Find the customer who has placed the most orders, along with the total number of orders they have placed.


SELECT TOP 1 sc.customer_id, sc.first_name, sc.last_name, COUNT(so.order_id) AS total_orders
FROM sales.customers sc
JOIN sales.orders so ON sc.customer_id =so.customer_id
GROUP BY sc.customer_id,sc.first_name, sc.last_name
ORDER BY total_orders DESC;