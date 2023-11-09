with year_one_sales as (
  select 
    s.product_id, 
    min(year) as first_year
  from sales as s
  inner join product as p
  on s.product_id = p.product_id
  group by s.product_id
)

select 
  y.product_id,
  y.first_year,
  s.quantity,
  s.price
from year_one_sales as y
join sales as s
on y.product_id = s.product_id
and y.first_year = s.year