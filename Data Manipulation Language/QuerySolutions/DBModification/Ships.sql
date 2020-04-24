-- github.com/DaniAngelov

Ships:

10.
insert into classes(class,type,country,numguns,bore,DISPLACEMENT)
 Values('Nelson','bb','Gt.Britain',9,16,34000)
insert into ships(name,class,launched) VALUES('Nelson','Nelson',1927)
insert into ships(name,class,launched) VALUES('Rodney','Nelson',1927)

11.

delete 
from ships
where name in (select ship from outcomes where result = 'sunk')

12.

update classes
set bore = bore * 2.5, DISPLACEMENT = DISPLACEMENT * 1.1
