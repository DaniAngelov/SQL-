-- github.com/DaniAngelov

PC: 

1.
(select p.maker,p.model,p.type
from Product p left join Laptop on p.model = laptop.model
where p.type = 'Laptop' and code is NULL)
union
(select p.maker,p.model,p.type
from Product p left join pc on p.model = pc.model
where p.type = 'PC' and code is NULL)
union
(select p.maker,p.model,p.type
from Product p left join Printer on p.model = printer.model
where p.type = 'Printer' and code is NULL)

2.
select distinct p1.maker 
from Product p1 join Product p2 on p1.maker = p2.maker 
where p1.type = 'Laptop' and p2.type = 'Printer' 

3.
select distinct l1.hd 
from Laptop l1 join Laptop l2 on l1.hd = l2.hd  and l1.model > l2.model

4.
select p.model from PC p right join Product pr on p.model = pr.model
where pr.model is NULL
