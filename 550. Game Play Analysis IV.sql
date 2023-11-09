select ROUND(SUM(login)/COUNT(DISTINCT player_id), 2) AS fraction
from
  (select
    player_id,
    datediff(event_date, min(event_date) over(partition by player_id)) = 1 as login
  from activity) as t