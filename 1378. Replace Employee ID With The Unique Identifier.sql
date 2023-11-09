select unique_id, name
from Employees as e
left join EmployeeUNI as eu 
on eu.id = e.id