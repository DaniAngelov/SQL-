-- github.com/DaniAngelov

select cast( ( abs(min(lat_N) - max(lat_N)) + abs( min(long_W) - max(long_W) ) ) as decimal(16,4))
from station
