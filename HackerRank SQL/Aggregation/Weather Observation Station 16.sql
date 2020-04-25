-- github.com/DaniAngelov

select cast((min(lat_n)) as decimal(16,4))
from station
where lat_N > 38.7780
