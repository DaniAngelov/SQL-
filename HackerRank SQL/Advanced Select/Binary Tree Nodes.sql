-- github.com/DaniAngelov

select N,
case 
when P is NULL then 'Root'
when (select count(*) from BST where P = b.N) > 0 then 'Inner'
else 'Leaf'
end
from bst b
order by N
