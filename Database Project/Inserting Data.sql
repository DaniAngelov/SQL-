-- github.com/DaniAngelov

--INSERT: 

INSERT INTO VEHICLES(Registration_Number,Type,Horse_Power,isDrivable)
VALUES( 'ВН 2012 АК' , 'sedan', 120, 1 ),
('ВН 2301 АК' , 'hatchback', 120, 1 ),
('ВН 3021 АК' , 'sedan', 60, 0 ),
( 'ВН 5015 АК' , 'coupe', 160, 0 ),
( 'ВН 2701 АК' , 'hatchback', 75, 1 ),
(  'ВН 2302 АК' , 'coupe', 230, 1 ),
( 'ВН 9960 АК' , 'high passable', 135, 0 ),
( 'ВН 7260 АК' , 'high passable', 90, 1 )


INSERT INTO EMPLOYEES( First_Name,Last_name,Gender,Age,Address,Phone_Number,Vehicles_ID,Experience_ID,Employee_Teams_ID)
VALUES
('Boris','Ivanov','MALE',24,'Himik 12','+359894452348', 1 , 2, 3),
('Ivana','Todorova','FEMALE',21,'Himik 13','+359884865132', 2 , 3, 4),
('Bako','Zahariev','MALE',45,'Himik 14','+359888761365', 1 , 3 , 5),
('Toshko','Nedev','MALE',29, 'BabaTonka 4','+359894586663', 5 , 6 , 2),
('Gergana','Zaharieva','FEMALE',45,'Balnava 1','+359895216542', 2 , 1 , 6),
('Teodor','Ivanov','MALE',36,'Kiranaru 45','+359875895219', 7,  1 , 5)

INSERT INTO Experience( Years,Number_of_Companies, Company_Name) 
VALUES ( 4 , 2 , 'СОТ 161'),
( 0 , 0 , NULL),
( 3 , 2 , 'СОТ СОВА 7'),
( 1 , 3 , 'АЛФА СОТ'),
( 7 , 1 , 'АЛФА ЩИТ'),
( 10 , 1 , 'СОТ 161')


INSERT INTO Employee_Teams(Team_Size,Patrol_Area) 
VALUES ( 3 , 'Bononia'),
( 5 , 'GM'),
( 2 , 'Simeonovo'),
( 4 , 'Bosna'),
( 3 , 'Botevo'),
( 4 , 'Vardulevo')


Insert into CUSTOMERS(First_Name,Last_Name, Address , Phone_Number , EGN, Age , Gender)
VALUES
('Iordan','Manchev','Bononiq','+359895603861','7511017896', 26, 'MALE'),
('Mani','Manchev','Himik 12','+359895659874','7505097896', 45, 'MALE'),
('Romeo','Ivanov','Bononiq','+359892679071','7511127896', 36, 'MALE'),
('Snejana','Petrova','Kaleto','+359897669824','7808069521', 25, 'FEMALE'),
('Veni','Palata','Akjamiq','+359895692199','7801014825', 21, 'MALE'),
('Joro','Grebeca','Bononiq','+359898958872','8512124589', 27, 'MALE'),
('Iordan','Ganchev','Bononiq','+359893603011','7511012729', 30, 'MALE')

INSERT INTO Shifts( Type,Date_when_Starts, Date_when_ends,isHoliday,isWeekend,Employees_ID)
VALUES
('day', '20120101 06:00', '20120101 14:00', 0, 1, 6),
('night', '2001-02-06 20:00', '20010207 06:00',  0, 1, 2),
('day', '19990501 13:00', '19990501 21:00', 1, 1, 3),
('night', '19510701 22:00', '19510702 06:00', 0, 1, 5),
('night', '20151205 00:00', '20151205 08:00', 0, 1, 7),
('day', '19781101 07:00', '19781101 15:00', 1, 0, 4),
('night', '20200502 16:00', '20200503 02:00',  1, 0, 3)


Insert into Sensors_families(Size,Triggered_Family_Members)
VALUES
(12, null),
(8, null),
(4, null),
(6, null),
(10, null),
(2, null)

INSERT INTO Sensor_Detectors(range,Sensors_Family_ID)
VALUES
(1000, 1),
(1542, 4),
(999, 2),
(863, 3),
(756, 5),
(1024, 6)


Insert into Secured_Areas( Address,Type,Security_Level,Building_level,Size,Sensors_Families_ID,Customers_ID)
VALUES
('Baba Tonka 3', 'Building', 5, 1, 45, 1, 1),
('Botevo', 'Field', 6, null, 4500, 2, 2),
('Simeonovo', 'Farm', 9, null, 1200, 3, 3),
('Himik 12', 'Building', 8, 4, 80, 4, 4),
('Akjamiq 4', 'Building', 10, 12, 182, 5, 5),
('Dianabad 45', 'Pool', 4, null, 200, 6, 6),
('Baba Tonka 3', 'Building', 5, 1, 45, 1,9)

INSERT INTO Signals(Triggered_Date,Secured_Areas_ID,Employee_Teams_ID)
VALUES
('20180203 16:00', 4 , 2),
('20011106 08:45', 2 , 6),
('20190112 22:50', 3 , 4),
('20130615 12:25', 1 , 3),
('19950712 05:20', 6 , 5),
('19970322 14:30', 5 , 4),
('20050430 23:00', 1 , 7)
