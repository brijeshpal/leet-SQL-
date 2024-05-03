# Write your MySQL query statement below
select d.name as Department, e.name as Employee, e.salary
from Employee e, Department d
where e.departmentId=d.id and (e.departmentId, salary) in
(
    select departmentId, Max(salary)
    from Employee
    group by departmentId
)