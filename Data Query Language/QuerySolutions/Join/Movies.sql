-- github.com/DaniAngelov

Movies:

1.
select title,name from movie m join MOVIEEXEC me on m.PRODUCERC# = me.CERT#
where m.PRODUCERC# in (select PRODUCERC# from movie where title = 'Star Wars')

2.
select Distinct me.NAME from MOVIEEXEC me join MOVIE m on me.CERT# = m.PRODUCERC#
where m.TITLE in (select movietitle from STARSIN where STARNAME = 'Harrison Ford')

3.
select distinct m.studioname,s.starname from movie m join STARSIN s on m.TITLE = s.MOVIETITLE
where m.STUDIONAME in (select name from STUDIO )
order by STUDIONAME

4.
select s.STARNAME,me.networth,m.title from STARSIN s join Movie m on m.TITLE = s.MOVIETITLE 
and m.YEAR = s.MOVIEYEAR join MOVIEEXEC me on m.PRODUCERC# = me.CERT#
where me.NETWORTH >= all(select NETWORTH from MOVIEEXEC)

5.
select distinct name ,s.movietitle 
from Moviestar m left join STARSIN s on m.NAME = s.STARNAME
where m.NAME not in (select starname from Starsin)

