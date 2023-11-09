select e2.name
from employee as e1
inner join employee as e2
on e1.managerId = e2.id
group by e1.managerId
having count(e1.id) >= 5