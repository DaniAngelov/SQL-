-- github.com/DaniAngelov

select cast((sum(lat_n)) as  decimal(16,2)),cast((sum(long_w)) as  decimal(16,2))
from station
