
/*
���������� ����� ���������� ������, ������� �������� 10 ����� ������� �������������.
*/


select count(*) as total_likes
from likes
where user_id in (
		select * from (
			select profiles.user_id 
				from profiles
				order by profiles.birthday desc
				limit 10) as my_table
;
