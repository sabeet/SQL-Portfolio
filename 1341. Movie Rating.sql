(
select u.name as results
from users as u
join movierating as mr
on u.user_id = mr.user_id
group by mr.user_id
order by count(1) desc, u.name
limit 1
)
union all
(
select m.title as results
from movies as m
join movierating as mr
on m.movie_id = mr.movie_id
where mr.created_at < '2020-03-01' and mr.created_at > '2020-01-31'
group by mr.movie_id
order by avg(rating) desc, m.title
limit 1
)