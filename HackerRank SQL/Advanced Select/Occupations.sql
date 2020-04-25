-- github.com/DaniAngelov

select [Doctor],[Professor],[Singer],[Actor]
from (select row_number() over(partition by occupation order by name)[Rownumber], * from occupations) t 
pivot
(
    max(name) for OCCUPATION IN ([Doctor], [Professor], [Singer], [Actor])
) p


