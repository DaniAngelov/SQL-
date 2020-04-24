-- github.com/DaniAngelov

Ships:

1.
select * 
from Ships s join Classes c on s.CLASS = c.CLASS
where c.class is not NULL

2.
select * 
from Ships s right join Classes c on s.CLASS = c.CLASS
where c.class is not NULL
union
select * 
from Ships s right join Classes c on s.CLASS = c.CLASS
where  c.class is NULL and c.CLASS in (select class from Ships)
order by name

3.
select c.country,s.NAME
from ships s join classes c  on c.CLASS = s.CLASS
where s.NAME not in(select ship from OUTCOMES)
order by c.COUNTRY

4.
select s.name as shipName
from ships s  join CLASSES c on s.CLASS = c.CLASS
where c.NUMGUNS >= 7 and s.LAUNCHED = 1916

5.
select s.name,b.name as battle,b.date
from ships s join OUTCOMES o on s.NAME = o.SHIP join BATTLES b on b.NAME = o.BATTLE
where o.RESULT = 'sunk'
order by o.BATTLE

6.
select s.name,c.displacement,s.launched
from ships s join classes c on s.CLASS = c.CLASS
where s.NAME = s.CLASS

7.
select * 
from CLASSES c left join ships s on c.CLASS = s.CLASS
where launched is NULL

8.
select s.name,c.displacement,c.numguns,o.RESULT
from ships s join classes c on s.CLASS = c.CLASS join OUTCOMES o on o.SHIP = s.NAME
where o.BATTLE = 'North Atlantic'
