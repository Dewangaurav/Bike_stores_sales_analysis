
--6. Determine the average list price of products by brand and category. Additionally, include the total number of products sold in each brand-category combination and identify the highest average list price among all brand-category combinations. Present the results in descending order of average list price.


select pb.brand_name, pc.category_name, avg(soi.list_price) as avg_price, count(soi.order_id) as total_products_sold
from sales.orders so
join sales.order_items soi on so.order_id=soi.order_id
join production.products pp on soi.product_id=pp.product_id
join production.brands pb on pp.brand_id=pb.brand_id
join production.categories pc on pp.category_id=pc.category_id
group by pb.brand_name, pc.category_name
order by avg_price desc

 