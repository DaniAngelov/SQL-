-- github.com/DaniAngelov

Ships:

1.
select distinct country
from CLASSES,ships
where CLASSES.CLASS = ships.CLASS and  CLASSES.NUMGUNS >= all(select numguns from CLASSES)

2.
select distinct ships.class
from ships
where name = any(select ship from OUTCOMES where result = 'sunk' )

3.
select distinct name,ships.class
from ships,classes
where classes.CLASS = ships.class and classes.BORE = 16

4.
select battles.name
from battles,OUTCOMES,ships
where battles.name = outcomes.BATTLE and ships.NAME = OUTCOMES.SHIP and ships.CLASS = 'Kongo'

5.
select ships.class,name
from ships,classes c
where ships.CLASS = c.CLASS and c.NUMGUNS >= all(select numguns from Ships,classes where ships.CLASS = CLASSES.CLASS and c.BORE = bore)
order by CLASS
