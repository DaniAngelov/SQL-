-- github.com/DaniAngelov

Ships:
1.
select name from ships,classes where classes.CLASS = ships.CLASS and classes.DISPLACEMENT > 50000

2.
select distinct name,displacement,numguns 
from OUTCOMES,CLASSES,ships 
where ships.name = OUTCOMES.SHIP
and CLASSES.CLASS = SHIPS.CLASS
and OUTCOMES.BATTLE = 'Guadalcanal'

3.
(select country from classes where type = 'bb')
INTERSECT
(select country from classes where type = 'bc')

4.
select Distinct Ships.name 
from classes,SHIPS,OUTCOMES outcome1 join OUTCOMES outcome2 on outcome1.BATTLE <> outcome2.BATTLE
where  ships.CLASS = CLASSES.CLASS and outcome1.RESULT =  'damaged' and outcome1.SHIP = ships.name and outcome2.SHIP = ships.name
