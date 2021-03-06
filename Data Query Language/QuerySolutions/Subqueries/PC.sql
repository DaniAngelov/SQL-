-- github.com/DaniAngelov

PC:

1.
select distinct maker 
from product,pc 
where pc.speed > 500 and product.model = pc.model

2.
select code,model,price
from printer
where price >= all(select price from printer )

3.
select distinct * from Laptop where laptop.speed < all(select speed from PC)

4.
select p.model,p.price
from (select model,price from PC union
select model,price from Laptop union
select model,price from Printer) p
where p.price >= all(select price from printer union
select price from laptop union select price from PC) 

5.
select maker
from product,printer
where product.model = printer.model and printer.color = 'y' and printer.price <= all(select price from Printer where color = 'y')

6.
select maker
from product
where model in (select model from PC p where ram <= all(select ram from PC) and speed >= all(select speed from PC where p.ram = ram))
