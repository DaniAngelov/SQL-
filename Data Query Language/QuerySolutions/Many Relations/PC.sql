-- github.com/DaniAngelov

PC:
1.select distinct maker,speed from product,laptop where product.model = laptop.model and hd > 9

2.
(select Product.model,price  from Product,Laptop where maker = 'B' and product.model = laptop.model) 
UNION
(select Product.model,price from Product,Printer where maker = 'B' and product.model = printer.model)
UNION
(select Product.model,price from Product,PC where maker = 'B' and product.model = PC.model)

3.
(select maker from Product,laptop where product.model = laptop.model)
EXCEPT
(select maker from Product,PC where product.model = pc.model)

4.
select distinct pc1.hd 
from pc pc1 join pc pc2 on pc1.hd = pc2.hd where pc1.code <> pc2.code 

5.
select distinct pc1.model,pc2.model
from pc pc1 join pc pc2 on pc1.ram = pc2.ram and pc1.speed = pc2.speed 
where pc1.code <> pc2.code and pc1.model < pc2.model 

6.
select distinct maker
from Product,pc pc1 join pc pc2 on pc1.speed >= 400 and pc2.speed >= 400
where pc1.code <> pc2.code and pc1.model = product.model and pc2.model = product.model
