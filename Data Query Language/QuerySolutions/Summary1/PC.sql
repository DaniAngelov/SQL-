-- github.com/DaniAngelov

PC:

1.

select model,code,screen
from laptop l
where l.screen = 11 or l.screen = 15

2.

select distinct p.model
from pc p
join product pr1 on p.model = pr1.model
where maker in 
(select maker
from laptop l
join product p2 on p2.model = l.model
group by maker)
and p.price < any
(select min(l2.price)
from laptop l2
join product p3 on p3.model = l2.model
group by l2.price)

3.

select p.model,  avg(p.price) as _avgPrice
from pc p
join product pr on pr.model = p.model
group by p.model,maker
having avg(p.price) < 
(select min(l.price)
from laptop l
join product p2 on p2.model = l.model
where pr.maker = p2.maker
)

4.

select p.code,pr.maker,count(p.code) as num_higher_price
from pc p
join product pr on p.model = pr.model
join pc p2 on p.price <= p2.price and p2.model = pr.model
group by p.code,pr.maker

