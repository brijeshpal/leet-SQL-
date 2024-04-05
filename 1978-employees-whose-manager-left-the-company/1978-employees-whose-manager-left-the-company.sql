# Write your MySQL query statement below
select e.employee_id 
from employees e
where e.salary < 30000 and 
     manager_id not in (
        select e.employee_id 
        from employees e
     )
order by employee_id