-- github.com/DaniAngelov

--I. SIMPLE QUERIES:

1. Заявка, която извежда броят високопроходими автомобили, които имат идентификационен номер по-голям от 5 
и чиито регистрационен номер съдържа '7260' .

select *
from vehicles
where ID > 5 and Type = 'high passable' and Registration_Number like '%7260%'

2. Заявка, която извежда броят служители с възраст под 35 години и чиито имена започват с 'T'.

select * 
from Employees
where First_Name like 'T%' and Age < 35

3. Заявка, която извежда идентификационен номер и област на патрулиране за групите служители, при
които броят на служители в екипа е 3 и адресът е Ботево.

select ID,Patrol_Area
from Employee_Teams
where Team_Size = 3 and Patrol_Area like 'Botevo'

4. Заявка, която извежда защитените територии от тип сграда или поле със размер - по-голям от 100 кв.м.

select * 
from Secured_Areas
where (Type like 'Building' or Type like 'Field') and Size > 100

5. Заявка, която извежда сензорните детектори с обхват по-голям от 900, но по-малък от 1300 и с 
идентификационен номер на сензорно семейство 2.

select * 
from Sensor_Detectors
where range > 900 and range < 1300 and Sensors_Family_ID = 2
