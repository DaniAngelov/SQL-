-- github.com/DaniAngelov

select cast((lat_N) as decimal(16,4))
from (select lat_N ,row_number() over(order by lat_N) as rn from station) d
where rn = (select round((count(lat_N) + 1) /2,0) from station)
