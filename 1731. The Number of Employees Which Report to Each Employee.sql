select 
  reports_to as employee_id,  
  (select name from employees as e1 where e.reports_to = e1.employee_id) as name, 
  count(reports_to) as reports_count, 
  round(avg(age)) as average_age
from employees as e
where reports_to != 'null'
group by reports_to
order by employee_id