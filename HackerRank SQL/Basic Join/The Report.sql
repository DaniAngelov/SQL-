-- github.com/DaniAngelov

select 
 case
 when g.grade < 8 then null
 else s.name
 end,
 g.grade,s.marks
from students s join grades g on s.marks >= g.min_mark and s.marks <= g.max_mark
order by grade desc,name asc
