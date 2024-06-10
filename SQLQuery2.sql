


--2. Calculate the average discount given on orders per store for orders that were completed in the last 6 months.

with cte as 
(
select ss.store_name, avg(soi.discount) as Avg_disc,so.order_date, (select max(order_date) from sales.orders) as max_date
from sales.stores ss
join sales.orders so on ss.store_id=so.store_id
join sales.order_items soi on so.order_id=soi.order_id
where so.order_status = 4  
group by ss.store_name, so.order_date
)
 select
    store_name, 
    AVG(Avg_disc) AS Avg_disc,
    MAX(order_date) AS order_date,
    max_date
FROM 
    cte
	where 
    order_date > DATEADD(MONTH, -6, max_date)
GROUP BY 
    store_name, 
    max_date







 


having 
