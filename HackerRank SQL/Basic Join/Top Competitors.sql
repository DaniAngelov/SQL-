-- github.com/DaniAngelov

select s.hacker_id,h.name
from submissions s
join hackers h on h.hacker_id = s.hacker_id
join challenges c on c.challenge_id = s.challenge_id
join difficulty d on d.difficulty_level = c.difficulty_level
and d.score = s.score
group by s.hacker_id,h.name
having count(s.score) > 1
order by count(s.score) desc,s.hacker_id asc
