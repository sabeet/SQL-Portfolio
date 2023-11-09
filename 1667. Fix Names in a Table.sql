select 
  user_id, 
  concat(
      upper(left(lower(name), 1)), 
      right(lower(name), length(name) - 1)) as name
from users
order by user_id