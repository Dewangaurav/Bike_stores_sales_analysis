
--5. Calculate the total quantity of each product sold in each store and identify the store with the highest sales quantity for each product.

with cte as 
(
select pp.product_name, sum(soi.quantity) as total_quantity, ss.store_name
from sales.stores ss
join sales.orders so on ss.store_id=so.store_id
join sales.order_items soi on so.order_id=soi.order_id
join production.products pp on soi.product_id=pp.product_id
group by pp.product_name,ss.store_name
)
select *
from(select *, row_number() over (partition by product_name order by total_quantity desc) as rn from cte) a
where rn=1





