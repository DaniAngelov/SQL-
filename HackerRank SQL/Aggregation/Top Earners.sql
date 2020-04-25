  -- github.com/DaniAngelov
  
  select top 1 salary * months,count(salary * months)
from employee
group by salary * months
order by salary * months desc
