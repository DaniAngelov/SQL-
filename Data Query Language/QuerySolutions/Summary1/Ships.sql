-- github.com/DaniAngelov

Ships:

1.

select  name
from ships s
join OUTCOMES o on s.NAME = o.SHIP
where s.NAME like 'c%'  or s.NAME like 'k%'
group by name
having count(battle) >= 1

2.

select distinct name,country
from outcomes o
right join ships s on s.NAME = o.SHIP
join CLASSES c on c.CLASS = s.CLASS
where battle is null or o.RESULT not like 'sunk'

3.

select country,count(result) as _sunkShips
from ships s
right join classes c on c.CLASS = s.CLASS
left join OUTCOMES o on o.SHIP = s.NAME
where o.RESULT = 'sunk' or o.battle is NULL
group by country

4.

select o.battle
from outcomes o
group by o.battle
having count(o.ship) > 
all(select count(o2.ship) from OUTCOMES o2 where battle = 'Guadalcanal')


5.

select o.battle
from outcomes o
join ships s on s.NAME = o.SHIP
join classes c on c.CLASS = s.CLASS
group by o.battle
having count(c.COUNTRY)
> all(select count(c.COUNTRY) 
from OUTCOMES o2 
join ships s2 on s2.NAME = o2.SHIP 
join classes c2 on c2.CLASS = s2.CLASS 
where battle = 'Surigao Strait')

6.

select name,displacement,numguns
from ships s
join classes c on s.CLASS = c.CLASS
where c.DISPLACEMENT <= all(select DISPLACEMENT from classes)
and c.NUMGUNS >= 
(select c2.numguns 
from classes c2
 where c2.DISPLACEMENT <= all(select DISPLACEMENT from classes))

7.

select count(s1.name) as num_restored
from outcomes o1
join ships s1 on s1.NAME =o1.SHIP
join BATTLES b1 on b1.NAME =o1.BATTLE
where o1.RESULT = 'damaged' and b1.DATE <=
any(select b2.date
from battles b2 
join OUTCOMES o2 on o2.BATTLE = b2.NAME
join ships s2 on s2.NAME = o2.SHIP
where o2.RESULT = 'ok' and s1.NAME = s2.NAME)

8.

select s1.name as shipName
from ships s1
join outcomes o1 on s1.NAME = o1.SHIP 
join battles b1 on b1.NAME = o1.BATTLE
where o1.result = 'damaged' and b1.DATE <= any
(select b2.date
from battles b2
join OUTCOMES o2 on b2.NAME = o2.BATTLE
join ships s2 on s2.NAME = o2.SHIP
where o2.RESULT = 'ok' and s1.NAME = s2.name 
) 
and battle = any
(select battle 
from ships s1 
join OUTCOMES o3 on o3.SHIP =s1.NAME
join battles b3 on b3.NAME = o3.BATTLE
group by battle
having count(s1.NAME) < any
( select count(s3.name) 
from ships s3 
join OUTCOMES o4 on o4.SHIP = s3.NAME
join battles b4 on b4.NAME = o4.BATTLE
))
