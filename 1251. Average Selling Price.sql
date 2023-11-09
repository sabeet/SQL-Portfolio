select 
    p.product_id, 
    ifnull(round(sum(p.price*us.units)/(sum(us.units)),2), 0) as average_price
from prices as p
left join unitssold as us
on p.product_id = us.product_id
and us.purchase_date between p.start_date AND p.end_date
group by p.product_id