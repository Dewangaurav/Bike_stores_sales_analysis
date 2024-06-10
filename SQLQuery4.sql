
--4. Identify the staff members who has managed the highest total sales revenue in the every year.

with cte as 
(
select ss.staff_id, ss.first_name,ss.last_name, sum(soi.list_price) as sales_revenue,
Datepart(year,so.order_date) as yearr 
from sales.staffs ss
join sales.orders so on ss.staff_id=so.staff_id
join sales.order_items soi on so.order_id=soi.order_id
where so.order_date between '2016-01-01' and '2018-12-31'
group by ss.staff_id, ss.first_name,ss.last_name, Datepart(year,so.order_date)
)

select *
from ( 
select *
, rank() over(partition by yearr order by sales_revenue desc) as rn
from cte) A
where rn=1





