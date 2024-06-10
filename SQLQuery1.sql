
--1. Identify the top 3 products with the highest total sales revenue in the year 2017.

with cte as
(
select pp.product_name, soi.list_price, count(pp.product_name) as countt
from sales.orders so
left join sales.order_items soi on so.order_id=soi.order_id
join production.products pp on soi.product_id=pp.product_id
where so.order_status = 4
group by  pp.product_name, soi.list_price,  so.order_date
having datepart(year, so.order_date) = 2017
)
select top 3 *,sum(countt) as total_products, list_price * sum(countt) as total_revenue 
from cte
group by product_name, list_price, countt
order by total_products desc





total.products * soi.list_price as total_revenue



