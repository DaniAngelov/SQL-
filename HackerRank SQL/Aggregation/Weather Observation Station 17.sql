-- github.com/DaniAngelov

select cast((long_w) as decimal(16,4))
from station
where lat_n in ( select min(lat_n) from station where lat_N > 38.7780)
