select 
    contest_id, 
    round(count(u.user_id) / (select count(user_id) from users), 4) * 100 as percentage
from users as u
inner join register as r
on u.user_id = r.user_id
group by contest_id
order by percentage desc, contest_id asc