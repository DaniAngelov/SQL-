-- github.com/DaniAngelov

Movies:
1.(select distinct starname from STARSIN where MOVIETITLE = 'The Usual Suspects')
INTERSECT
(select distinct name from MOVIESTAR where Gender = 'M')

2.select DISTINCT starname from STARSIN,Studio where MOVIEYEAR = 1995 and STUDIO.NAME = 'MGM'

3.select distinct name from MOVIEEXEC,MOVIE where MOVIEEXEC.CERT# = MOVIE.PRODUCERC# and movie.STUDIONAME = 'MGM'

4.select title from MOVIE where length > (select length from MOVIE where TITLE = 'Star Wars') 

5.select distinct name from MOVIEEXEC,movie where MOVIEEXEC.CERT# = MOVIE.PRODUCERC# and NETWORTH >
(select NETWORTH from MOVIEEXEC where name = 'Stephen Spielberg')

6.select title from movie,MOVIEEXEC where MOVIEEXEC.CERT# = movie.PRODUCERC# and NETWORTH 
>(select NETWORTH from MOVIEEXEC where name = 'Stephen Spielberg') 
