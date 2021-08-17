
/*
Определить кто больше поставил лайков (всего) - мужчины или женщины?
*/

select count(*) as gender_likes 
from likes
where user_id in (select user_id from profiles where gender = 'm')
union all
select count(*) 
from likes
where user_id in (select user_id from profiles where gender = 'f')
;
