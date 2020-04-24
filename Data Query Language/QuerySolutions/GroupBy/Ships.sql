-- github.com/DaniAngelov

SHIPS:

1.
select count(class) as number
from classes c 
where c.TYPE = 'bb'

2.
select c.CLASS,AVG(c.numguns) as avgNumguns
from classes c
where c.TYPE = 'bb'
group by c.CLASS

3.
select AVG(c.numguns) as avgNumguns
from classes c
where c.TYPE = 'bb'

4.
select c.class,min(s.launched) as minYear,max(s.launched) as maxYear
from classes c join ships s on c.CLASS = s.CLASS 
group by c.class

5.
select c.class,count(s.CLASS) as No_sunk
from classes c join ships s on s.CLASS = c.CLASS
where s.name in(select ship from OUTCOMES where RESULT= 'sunk')
group by c.class

6.
select c.class,count(s.class) as shipsNUM
from classes c join ships s on c.CLASS = s.CLASS 
where s.name in (select ship from outcomes where OUTCOMES.RESULT = 'sunk')
group by c.class
having count(s.class) >= 1

7.
select country,cast(avg(bore) as numeric(16,2))
from CLASSES c join SHIPS s on s.CLASS = c.CLASS
group by country


