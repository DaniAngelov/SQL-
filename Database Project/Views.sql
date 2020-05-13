-- github.com/DaniAngelov 

--1.

CREATE VIEW Employee_Employee_Teams_Join as 
(select e.ID, First_Name, Last_Name,Gender,Age,Address,Phone_Number,Vehicles_ID,Experience_ID,
Employee_Teams_ID, Team_Size, Patrol_Area
from Employees e
join Employee_Teams e2
on e.Employee_Teams_ID = e2.ID)

--2.

CREATE VIEW Secured_Areas_Customers_Join as 
(select s.ID,s.Address,Type,Security_Level,Building_Level, Size,Sensors_Families_ID, Customers_ID,
First_Name,Last_Name,Phone_Number,EGN,Age,Gender
from Secured_Areas s
join Customers c
on s.Customers_ID = c.ID)
