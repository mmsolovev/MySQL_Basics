
/*
��������� ������ ������������� users, ������� ����������� ���� �� ���� ����� orders � �������� ��������.
*/

select u.name
from users as u
join orders as o on o.users_id = u.id
group by u.name 
having count(o.id) > 0
;
