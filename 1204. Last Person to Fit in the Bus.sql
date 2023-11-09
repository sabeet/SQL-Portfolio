with cte as(
  select 
    turn,
    person_id,
    person_name,
    weight,
    sum(weight) over (order by turn asc) as accum_weight
  from queue
  order by turn asc)

select person_name
from cte
where accum_weight <= 1000
order by turn desc
limit 1