
/*
Выведите список товаров products и разделов catalogs, который соответствует товару.
*/

select p.name, c.name
from products as p
join catalogs as c on p.catalog_id = c.id
group by p.id
