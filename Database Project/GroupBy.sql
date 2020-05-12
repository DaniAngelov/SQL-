-- github.com/DaniAngelov

--V. GROUP BY

--1. Заявка,която извежда средната големина на групата от служители
--и общо групите, при които служителите са мъжи и имат първо име 'Gosho',
--групирани по големина на групата.

select AVG(Team_Size) as AVG_TEAM_SIZE, COUNT(*) as ALL_COUNT
from Employees e1
join Employee_Teams e2 
on e1.Employee_Teams_ID = e2.ID
where Gender like 'Male' and First_name like 'Gosho'
Group by Team_Size 

--2. Заявка, която извежда броят на сигналите и сумата от размерите
--на защитените места от тип 'Building', при които няма 
--етаж на сградата.

select COUNT(*) as ALL_MATCHED_LINES,SUM(s2.size) as SUM_OF_ALL_SIZES
from Signals s
join Secured_Areas s2 
on s.Secured_Areas_ID = s2.ID
where Building_Level is not NULL and Type like 'Building'

--3. Заявка,която извежда броят на компаниите,които имат име на компания,
--започващо със 'СОТ',ако те са поне 3.

select COUNT(*) as COUNT_COMPANY
from Experience e1
join Employees e2 
on e1.ID = e2.Experience_ID
where Company_Name like 'СОТ%'
group by Company_Name
having COUNT(*) >= 3

--4. Заявка, която извежда средния размер на сензорните семейства 
--и броят на идентификационните номера на сензорните детектори,
--които имат обхват по-голям от 1000.

select AVG(SIZE) as AVG_SIZE, COUNT(s.ID) as ID_COUNT
from Sensor_Detectors s
join Sensors_Families s2
on s.Sensors_Family_ID = s2.ID
where range > 1000 
group by Size,s.ID

--5. Заявка, която извежда най-голямата възраст на служители,работели
--в компанията 'СОТ СОВА 77' и адрес, който съдържа 'Himik' .

select MAX(Age) as MAX_AGE
from Experience e1
join Employees e2
on e1.ID = e2.Experience_ID
where Company_Name like 'СОТ СОВА 77' and Address like 'Himik%'
group by Age

--6. Заявка,която извежда броят на клиентите и фирмите,които имат
--ниво на сигурност поне 5, групирани по първо име.

select COUNT(*) as COUNT_CUSTOMERS_SECURED_AREAS
from Customers c1
join Secured_Areas c2
on c1.ID = c2.Customers_ID
where Security_level >= 5
group by First_Name

--7. Заявка, която извежда всички коли, които не са в състояние,
--подходящо за работа, групирани по регистрационен номер. 

select COUNT(*) as COUNT_EMPLOYEE_VEHICLES_FOR_REPAIR
from Vehicles v1
join Employees e1
on v1.ID = e1.Vehicles_ID
where isDrivable = 0
group by Registration_number

--8. Заявка, която извежда средния размер на защитените места, които
--имат ниво на сигурност най-много 5, групирани по размер.

select AVG(s2.Size) as AVG_SIZE
from Sensors_Families s1
join Secured_Areas s2
on s1.ID = s2.Sensors_Families_ID
where Security_level <= 5
group by s2.Size

--9. Заявка, която извежда средната възраст на клиентите,които 
--са на фирми с ниво на сигурност поне 3.

select AVG(Age) as AVG_CUSTOMERS_AGE
from Customers c1
join Secured_Areas s1
on c1.ID = s1.Customers_ID
where Security_level >=3
group by Age

--10. Заявка, която извежда броя и идентификационния на служителите, 
--които имат смени,когато е и празник, и уикенд.

select COUNT(*) COUNT_EMPLOYEE_SHIFTS, Employees_ID
from Shifts s1
join Employees e1
on e1.ID = s1.Employees_ID
where (isHoliday = 0) AND (isWeekend = 0)
group by e1.ID,Employees_ID
