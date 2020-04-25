-- github.com/DaniAngelov

select w.id, wp.age, w.coins_needed,w.power
from wands w 
join wands_property wp on w.code = wp.code
where is_evil = 0 and coins_needed in 
(select min(coins_needed)
 from wands w2 
join wands_property wp2 on w2.code = wp2.code
where w.power = w2.power and wp2.age = wp.age)
order by power desc,age desc
