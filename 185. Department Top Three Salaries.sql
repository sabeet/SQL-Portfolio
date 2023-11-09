select 
    d.name as department, 
    e1.name as employee, 
    e1.salary as Salary
from Employee as e1 
join Department as d 
on e1.DepartmentId = d.Id
where  3 > (select count(distinct (e2.Salary))
        from  Employee as e2
        where e2.Salary > e1.Salary
            and e1.DepartmentId = e2.DepartmentId)