-- github.com/DaniAngelov

Movies:

1.
select name 
from MovieStar 
where gender = 'F' 
and name in(select name from MOVIEEXEC,movie 
where MOVIEEXEC.CERT# = movie.PRODUCERC# and MOVIEEXEC.NETWORTH > 10000000)

2.
select name
from MOVIESTAR
where name not in (select name from MOVIEEXEC,MOVIE where MOVIEEXEC.CERT# = MOVIE.PRODUCERC#)

3.
select title 
from MOVIE
where length > (select length from movie where TITLE = 'Star Wars')

4.
select MOVIE.TITLE,MOVIEEXEC.name
from MOVIE,MOVIEEXEC 
where MOVIEEXEC.CERT# = movie.PRODUCERC# and MOVIEEXEC.NETWORTH >
(select NETWORTH from MOVIEEXEC where MOVIEEXEC.NAME = 'Merv Griffin')
