# Write your MySQL query statement below
select mnr.employee_id,mnr.name,
count(emp.employee_id) as reports_count,
round(avg (emp.age))as average_age
from Employees emp
join Employees mnr
on emp.reports_to=mnr.employee_id
group by employee_id
order by employee_id