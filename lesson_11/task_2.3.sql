
/*
Организуйте хранение категорий и товарных позиций учебной базы данных shop в СУБД MongoDB.
*/

use shop

db.CreateCollection('catalogs')
db.CreateCollection('products')
db.catalogs.insert({name: 'Процессоры'})
db.catalogs.insert({name: 'Мат.платы'})
db.catalogs.insert({name: 'Видеокарты'})
db.products.insert(
	{
	name:
	discription:
	price:
	catalog_id:
	}
)
