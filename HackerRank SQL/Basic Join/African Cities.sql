-- github.com/DaniAngelov

select c1.name
from city c1 join country c2 on c1.countrycode = c2.code
where continent = 'Africa'
