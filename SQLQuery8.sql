

--8. Calculate the stock turnover rate for each product in each store, defined as the total quantity sold divided by the average stock quantity available.

select pp.product_name, ss.store_name,sum(soi.quantity) as quantity_sold, sum(soi.quantity)/ avg(ps.quantity) as stock_turnover_rate
from production.products pp
join  sales.order_items soi on pp.product_id=soi.product_id
join  sales.orders so on soi.order_id=so.order_id
join sales.stores ss on so.store_id=ss.store_id
join production.stocks ps on ss.store_id=ps.store_id and ss.store_id = ps.store_id
where so.order_status=4
group by ss.store_name,pp.product_name
order by stock_turnover_rate desc




