
/*
—оставьте список пользователей users, которые осуществили хот€ бы один заказ orders в интернет магазине.
*/

select u.name
from users as u
join orders as o on o.users_id = u.id
group by u.name 
having count(o.id) > 0
;
