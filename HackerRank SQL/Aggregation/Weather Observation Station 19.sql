-- github.com/DaniAngelov

select cast( ( sqrt( ( (min(lat_N) - max(lat_N)) * (min(lat_N) - max(lat_N))) 
+ (min(long_W) - max(long_W)) * (min(long_W) - max(long_W))  )  ) as decimal(16,4))
from station
