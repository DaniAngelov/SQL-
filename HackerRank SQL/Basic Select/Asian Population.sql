-- github.com/DaniAngelov

select sum(c1.population)
from city c1 join country c2 on c1.countrycode = c2.code
where continent = 'Asia'
