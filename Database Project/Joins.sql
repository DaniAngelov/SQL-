-- github.com/DaniAngelov

--IV. JOINS: 

--1. Заявка, която извежда служителите и групите им,които имат максимален брой служители и зона на патрулиране 'GM'. 

select *
from Employees e
join Employee_Teams e2
on e.Employee_Teams_ID = e2.ID
where e2.Team_Size >= all(select Team_Size from Employee_Teams) 
and e2.Patrol_Area like 'GM'

--2. Заявка, която извежда защитеноте места(може и да не имат NULL стойности), при които няма етажи на сградата, и техните сигнали 
--са на дата започваща с  '20' .
 

select * 
from Secured_Areas s
left join signals s2 on s2.Secured_Areas_ID = s.ID
where Building_Level is not NULL and Triggered_Date like '20%'

--3. Заявка, която извежда сигналите, служителите(мъже), чието първо име е същото като това на
--клиентите с възраст над 30, и техните групи.

select * 
from Signals s
join Employee_Teams e
on s.Employee_Teams_ID = e.ID
join Employees e2 
on e.ID = e2.Employee_Teams_ID
where Gender like 'Male' and First_Name in (select First_Name from Customers where age >30) 

--4. Заявка, която извежда сензорните детектори с най-малкия обхват,сензорните им семейства, както и защитените места ,
--които използват тези семейства с ниво на сигурност поне 5.

select * 
from Sensor_Detectors s
join Sensors_Families s2 
on s.Sensors_Family_ID = s2.ID
join Secured_Areas s3
on s2.ID = s3.Sensors_Families_ID
where Range <= all(select Range from Sensor_Detectors) 
and Security_Level >= 5

--5. Заявка, която извежда опита и служителите, работили в компания,която има име 'АЛФА' ,или с опит повече от 7 години.

select * 
from Employees e
join Experience e2
on e.Experience_ID = e2.ID
where Company_Name in 
(select Company_Name from Experience where Company_Name like 'АЛФА' or Years > 7)
order by Age
