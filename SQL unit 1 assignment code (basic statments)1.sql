SELECT  product_name , list_price
FROM production.products
WHERE list_price >= 5000 
ORDER BY list_price DESC;


select product_name
from production.products INNER JOIN production.brands
	ON production.products.brand_id = production.brands.brand_id
where brand_name ='Haro'
order by product_name


select * 
from sales.customers
where zip_code = 14450


select A.first_name, A.last_name
from sales.staffs A  INNER JOIN sales.staffs B
 on A.manager_id = B.staff_id 
 where B.first_name = 'Mireya' AND B.last_name = 'Copeland'

 insert into production.brands(brand_name)
values ('GT Bicycles');


update production.stocks 
set quantity =20

select * from production.stocks
where product_id=198 and store_id =2


use BikeStores
go

select P.product_name, OI.quantity*OI.list_price*(1-discount)  as SalesAmt 
From Sales.order_items OI INNER JOIN  production.products P
on OI.product_id =P.product_id
where OI.list_price>=10000;
go


select distinct State
from sales.customers
order by state;


select product_name, state , quantity 
from production.products p INNER JOIN production.stocks S 
on p.product_id= s.product_id
INNER JOIN sales.stores ST
on  S.store_id = ST.store_id  

where ST.state ='TX' AND quantity =0 
order by product_name ASC;
