with cte as(
  select
    visited_on,
    sum(amount) as amount
  from customer
  group by visited_on
)

select 
  a.visited_on,
  round(sum(a.amount),2) as amount,
  round(avg(a.amount), 2) as average_amount
from cte as a, cte as b
where datediff(a.visited_on, b.visited_on) between 0 and 6
group by b.visited_on
having count(*) > 6