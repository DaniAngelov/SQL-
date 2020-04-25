-- github.com/DaniAngelov

select cast((long_w) as decimal(16,4))
from station
where lat_N in (select max(lat_N) from station where lat_N < 137.2345 )
