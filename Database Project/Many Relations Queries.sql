-- github.com/DaniAngelov

--II. MANY RELATIONS QUERIES:

1.  Заявка, която извежда всички данни за Сензорните семейства с размер най-много 10 и сензорните детектори
с обхват поне 1001, сортирани по размер на сензорните семейства.

select distinct * 
from Sensors_Families,Sensor_Detectors
where Range > 1000 and Size <= 10
and Sensors_Families.ID = Sensor_Detectors.Sensors_Family_ID
order by Size

2. Заявка, която извежда всички данни за автомобилите и служителите, които имат адрес 'Himik', сортирани
по първо име.

Select * 
from Vehicles, Employees
where vehicles.ID = Employees.Vehicles_ID 
and Address like 'Himik %'
order by First_Name

3. Заявка, която извежда първото,последно име,адреса и телефона на служителите, които имат в телефонния
си номер '3' и първото им име започва с 'B', и отборът на служителите. 

(select First_name,Last_Name,Address,Phone_Number,Team_Size
from Employee_Teams,Employees
where Employees.Employee_Teams_ID = Employee_Teams.ID
and Phone_Number like '%3%')
INTERSECT
(select First_name,Last_Name,Address,Phone_Number,Team_Size
from Employee_Teams,Employees
where Employees.Employee_Teams_ID = Employee_Teams.ID
and First_Name like 'B%')

4. Заявка, която извежда  сигналите и защитените места с адрес,започващ с 'B' , при които нивото на сградата не съществува.

select *  
from Signals, Secured_Areas
where signals.Secured_Areas_ID = Secured_Areas.ID
and Address like 'B%' and Building_Level is NULL

5. Заявка, която извежда първо,последно име,адрес и идентификационен номер на опита на служителите, които работят
в компания, чието име започва с 'СОТ' и с опит над 5 години, сортирани по последно име на служителя. 

select First_Name,Last_Name,Address,Experience_ID
from Experience,Employees
where Experience.ID = Employees.Experience_ID
and  Company_Name like  'СОТ%' and Years > 5
order by Last_Name
