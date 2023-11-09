select 
  round(sum(tiv_2016), 2) as tiv_2016 
from 
  (
    select a.tiv_2016 
    from 
      insurance as a, 
      insurance as b 
    where 
      a.pid <> b.pid 
      and a.tiv_2015 = b.tiv_2015 
      and (a.lat, a.lon) not in (
        select 
          c.lat, 
          c.lon 
        from Insurance as c 
        group by lat, lon 
        having count(*) > 1
      ) 
    group by a.pid
  ) as d