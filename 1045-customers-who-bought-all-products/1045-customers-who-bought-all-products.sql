# Write your MySQL query statement below
select customer_id
from Customer c
#left join Product p
#on c.product_key=p.product_key
group by customer_id
having count(distinct product_key) = (select count(*) from Product)
