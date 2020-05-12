-- github.com/DaniAngelov

--III. SUBQUERIES :

--1. Заявка, която извежда всички служители с трудов стаж над 5 години и съответнита им група.

 select * 
from Employees, Employee_Teams
where Employees.Employee_Teams_ID = Employee_Teams.ID
and First_Name in 
(select First_Name 
from Employees,Experience 
where employees.Experience_ID = Experience.ID and Years > 5)

--2. Заявка, която извежда всички защитени места и клиенти,чиито адрес е същият като този 
--на хората,чието име свършва с 'hev'. 

select * 
from Secured_Areas,Customers
where Secured_Areas.Customers_ID = Customers.ID
and customers.Address in (select address from Customers where  Last_Name like '%hev')


--3. Заявка, която извежда първо,последно име,телефонен номер,възраст и адрес на най-възрастните служители, 
--чиито адрес не съвпада с адресите на клиентите.

select First_Name,Last_Name,Phone_Number,Age,Address
from employees,Employee_Teams
where Employees.Employee_Teams_ID = Employee_Teams.ID
and Age >= all(select Age from Customers) and Address not in (select  Address from Customers)

--4. Заявка, която извежда първо,последно име,адрес на служителите,чийто идентификационен номер на групата
--не е в групите с максимален брой служители .

select First_Name,Last_Name,Address,Registration_Number
from Vehicles,Employees
where Vehicles.ID = Employees.Vehicles_ID
and Employees.Employee_Teams_ID not in 
(select ID from Employee_Teams where Team_Size >= 
all(select Team_Size from Employee_Teams))

--5. Заявка, която извежда защитените зони на най-висок етаж, клиентите им и сензорните семейства,които са свързани с тях
--и имат най-голям размер.
 
select * 
from Secured_Areas, Customers, Sensors_Families
where Secured_Areas.Customers_ID = Customers.ID
and Secured_Areas.Sensors_Families_ID = Sensors_Families.ID
and  Sensors_Families.Size >= all( select Size from Sensors_Families)
