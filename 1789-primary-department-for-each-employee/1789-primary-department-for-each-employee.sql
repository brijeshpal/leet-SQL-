# Write your MySQL query statement below
select emp.employee_id, emp.department_id
from Employee emp
where primary_flag='Y' union
select employee_id,department_id
from Employee
group by employee_id
having  count(department_id)=1
