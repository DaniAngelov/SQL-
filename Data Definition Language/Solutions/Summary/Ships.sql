-- github.com/DaniAngelov

-- SHIPS:

-- 8.

-- a)

create view Idx_bigger_Battles as
select b.name
from battles b
join outcomes o
on b.NAME = o.BATTLE
join ships s 
on s.NAME = o.SHIP
group by b.name
having COUNT(s.Name) >
(select COUNT(s.NAME)
from OUTCOMES o
join BATTLES b 
on b.NAME = o.BATTLE
join ships s 
on s.NAME = o.SHIP
where b.NAME = 'Guadalcanal')

select * from Idx_bigger_Battles

-- b)


select d2.NAME  
from (select distinct b.name,c.country --COUNT(c.COUNTRY)
from OUTCOMES o
join BATTLES b 
on b.NAME = o.BATTLE
join ships s 
on s.NAME = o.SHIP
join CLASSES c
on c.CLASS = s.CLASS
where b.name not like 'Guadalcanal'
) d2  
group by d2.NAME
HAVING COUNT(d2.country) >=
(select COUNT(d.COUNTRY) 
from (select distinct b.name,c.country --COUNT(c.COUNTRY)
from OUTCOMES o
join BATTLES b 
on b.NAME = o.BATTLE
join ships s 
on s.NAME = o.SHIP
join CLASSES c
on c.CLASS = s.CLASS
where b.name = 'Guadalcanal') d
group by d.NAME)


-- 9.

delete d.battle,COUNT(d.name)
from (select o.BATTLE,s.name
from OUTCOMES o
join ships s 
on o.SHIP = s.NAME
group by o.BATTLE,s.name) d
group by d.battle
having count(d.name) = 1 

-- 10.

delete s.NAME,o.RESULT
from outcomes o
join ships s
on s.NAME = o.SHIP
where o.RESULT = 'sunk'
group by s.NAME, o.RESULT
HAVING COUNT(o.result) >= 2


-- 11.

select Distinct b.name 
from battles b
join outcomes o 
on b.NAME = o.BATTLE
join ships s 
on s.NAME = o.SHIP
join classes c
on c.CLASS = s.CLASS
where c.COUNTRY in
(select Distinct c.country
from classes c
join ships s 
on c.CLASS = s.CLASS
join OUTCOMES o 
on o.SHIP = s.NAME
where o.BATTLE= 'Guadalcanal') 

-- 12.


select c.COUNTRY,COUNT(b.NAME) as NUM_OF_BATTLES
from battles b
join outcomes o 
on b.NAME = o.BATTLE
join ships s 
on s.NAME = o.SHIP
right join classes c
on c.CLASS = s.CLASS
group by c.COUNTRY
