
/*
�������� �������������, ������� ������� �������� name �������� ������� �� �������
products � ��������������� �������� �������� name �� ������� catalogs.
*/

create or replace view names (id, products_name, catalogs_name)
as select p.id as id, p.name, c.name
from products as p
left join catalogs as c
on p.id = c.id

select * from names
;
