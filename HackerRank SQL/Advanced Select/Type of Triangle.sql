-- github.com/DaniAngelov

select 
case
when A + B <= C or A + C <= B or B + C <= A then 'Not A Triangle'
when A = B and B =C then 'Equilateral'
when A = B or A = C OR B = C then 'Isosceles'
else 'Scalene'
end
from Triangles
