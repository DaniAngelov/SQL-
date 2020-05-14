-- github.com/DaniAngelov

-- PC:

-- 5.

-- SUBQUERIES: 

select maker
from product p
where p.model in (select model from Laptop)
INTERSECT
select maker
from product p
where p.model in (select model from Printer)

-- JOINS:

select maker
from product p
join Laptop l
on p.model = l.model
INTERSECT
select maker 
from product p
join Printer pr
on p.model = pr.model

-- 6.

select price - (price * 5 / 100) as New_PRICE
from pc
join product p
on pc.model = p.model
where p.maker in 
(select maker
from product p
join printer pr
on p.model = pr.model
GROUP by maker
having AVG(PRICE) > 800)


-- 7.

select hd,min(price) as MIN_PRICE
from pc 
where hd between 10 and 30
group by hd
