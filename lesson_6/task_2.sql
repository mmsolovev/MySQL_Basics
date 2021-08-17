
/*
����� ����� ��������� ������������. 
�� ���� ������ ����� ������������ ������� ��������, ������� ������ ���� ������� � ����� �������������.
*/

select *, count(target_user_id) as messages_cout
from (select to_user_id as target_user_id from messages
		where from_user_id = 501
		union all
		select to_user_id as target_user_id from messages
		where to_user_id = 501
) as test

group by target_user_id
order by messages_cout desc
limit 1;
