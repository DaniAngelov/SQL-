-- github.com/DaniAngelov

select h.hacker_id,h.name,d2.total
from
(select hacker_id,sum(maximum_score) as total
from (select hacker_id,MAX(score) as maximum_score
     from submissions s
     group by s.hacker_id,s.challenge_id) d
group by hacker_id) d2
join hackers h on h.hacker_id = d2.hacker_id
where d2.total != 0
order by total desc,h.hacker_id asc
