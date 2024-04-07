# Write your MySQL query statement below
(select name as results
from Users 
inner join MovieRating using(user_id)
#on u.user_id=m.user_id
group by name
order by count(rating) desc, name
limit 1)

UNION ALL 

(select title as results
from Movies
inner join MovieRating using(movie_id)
where month(created_at) ='02' and year(Created_at) ='2020'
group by title
order by avg(rating) desc, title
limit 1)