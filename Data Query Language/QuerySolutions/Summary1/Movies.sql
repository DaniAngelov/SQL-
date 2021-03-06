-- github.com/DaniAngelov

Movies:

1.
select title,year 
from
(select title,year
from Movie  m
where m.LENGTH > 120 and m.YEAR < 2000 
union all
select title,year
from Movie  m
where m.length is NULL
) d
order by title

2.
select name,gender
from moviestar m
where m.NAME like 'j%' and m.BIRTHDATE > 1948
order by name desc

3.
select studioname,count(STARNAME) as num_stars
from movie m
join starsin s on m.TITLE = s.MOVIETITLE 
group by studioname

4.
select name,count(movietitle)
from moviestar m
join starsin s on m.NAME = s.STARNAME
group by name

5.

select name,title,year
from studio s
join movie m on s.NAME = m.STUDIONAME
group by name,title,year
having year >= all(select year from movie m2 where m2.STUDIONAME = s.NAME)

6.


select name
from moviestar
where gender = 'm' and BIRTHDATE >= all(select BIRTHDATE from moviestar where GENDER = 'm')

7.


select starname,studioname,count(movietitle) as num_movies
from movie m
join starsin s on s.MOVIETITLE = m.TITLE and s.MOVIEYEAR =m.YEAR
group by studioname,starname
having count(movietitle) >= 
all( select count(movietitle)
from movie m2
join starsin s2 on s2.MOVIETITLE = m2.TITLE and m2.YEAR= s2.MOVIEYEAR
group by  studioname,starname)

8.

select title,year,count(starname) as num_actors
from movie m
join starsin s on m.TITLE = s.MOVIETITLE and m.YEAR = s.MOVIEYEAR
group by title,year
having count(starname) > 2
