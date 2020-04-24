-- github.com/DaniAngelov

select c2.continent,avg(c1.population)
from city c1 join country c2 on c1.countrycode = c2.code
group by c2.continent
