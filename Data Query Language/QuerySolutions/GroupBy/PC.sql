-- github.com/DaniAngelov

PC:

1.
select cast(avg(speed) as numeric(16,2)) from pc 

2.
select maker,avg(screen) 
from laptop l join product p on l.model = p.model and p.type = 'Laptop'
group by maker

3.
select cast(avg(speed) as numeric(16,2)) from laptop where price > 1000

4.
select cast(avg(price) as numeric(16,2)) 
from pc p join product pr on p.model = pr.model and pr.type = 'PC'
where  pr.maker = 'A'

5.
select maker,avg(price)
from (select maker,price
from Product p,pc
where p.model = pc.model and maker = 'B'
union all
select maker,price
from product p,laptop 
where p.model = laptop.model and maker = 'B')T
group by maker

6.
select speed,avg(price) as price
from pc
group by speed

7.
select maker ,count(pc.model) as CNT
from product pr join pc on pr.model = pc.model
where pr.type = 'PC'
group by maker
having count(pr.model) >= 3

8.
select maker,Max(price) as price
from product p join pc on p.model = pc.model
where p.type = 'PC' and pc.price >= all(select price from pc)
group by maker

9.
select speed,avg(price) as avgPrice
from pc
where speed > 800
group by speed

10.
select p.maker,avg(hd) as avgHd
 from pc join product p on p.model = pc.model 
where p.type = 'PC' and p.maker in (select maker from Product where product.type = 'Printer')
group by maker
