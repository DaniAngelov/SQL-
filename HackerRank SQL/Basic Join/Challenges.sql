-- github.com/DaniAngelov

SELECT h.hacker_id ,h.name ,COUNT(*) 

FROM hackers h 
LEFT JOIN challenges c 
ON h.hacker_id = c.hacker_id

GROUP BY h.hacker_id, h.name

HAVING COUNT(*) = (
SELECT top 1 COUNT(*) 
    FROM CHALLENGES 
    GROUP BY hacker_id 
    ORDER BY COUNT(*) DESC )
OR COUNT(*) IN ( SELECT TOTAL 
               FROM 
               ( 
                   SELECT COUNT(*) as TOTAL 
                   FROM HACKERS H2, CHALLENGES C2 
                   WHERE H2.hacker_id = C2.hacker_id 
                   GROUP BY H2.hacker_id, H2.name ) AS COUNTS 
               GROUP BY TOTAL
               HAVING COUNT(*) = 1 )
ORDER BY COUNT(*) DESC, H.hacker_id
