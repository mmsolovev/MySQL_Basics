
/*
� ���� ������ shop � sample ������������ ���� � �� �� �������, ������� ���� ������.
����������� ������ id = 1 �� ������� shop.users � ������� sample.users.
����������� ����������.
*/

start transaction;
insert into sample.users (name, birthday_at)
select shop.users.name, shop.users.birthday_at
from shop.users
where id = 1;
commit;
