
/*
����������� �������� ��������� � �������� ������� ������� ���� ������ shop � ���� MongoDB.
*/

use shop

db.CreateCollection('catalogs')
db.CreateCollection('products')
db.catalogs.insert({name: '����������'})
db.catalogs.insert({name: '���.�����'})
db.catalogs.insert({name: '����������'})
db.products.insert(
	{
	name:
	discription:
	price:
	catalog_id:
	}
)
