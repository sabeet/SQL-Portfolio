select 
    p.product_name, 
    sum(unit) as unit
from products as p
join orders as o
on p.product_id = o.product_id
where o.order_date < '2020-03-01' and o.order_date > '2020-01-31'
group by p.product_id
having sum(unit) >= 100