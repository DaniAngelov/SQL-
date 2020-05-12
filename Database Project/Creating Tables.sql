-- github.com/DaniAngelov

create table Vehicles
(
	ID int primary key identity,
	Registration_Number varchar(10),
	Type varchar(13),
	Horse_Power int,
	isDrivable int
);


create table Employees
(
	ID int primary key identity,
	First_Name varchar(35),
	Last_Name varchar(35),
	Gender char(6),
	Age int,
	Address varchar(60),
	Phone_Number varchar(13),

	Vehicles_ID int,
	Experience_ID int,
	Employee_Teams_ID int	
)

create table Employee_Teams
(
	ID int primary key identity,
	Team_Size int,
	Patrol_Area text
)

create table Shifts
(
	ID int primary key identity,
	Type varchar(5),
	Date_When_Starts datetime2(0),
	Date_When_Ends datetime2(0),
	isHoliday int,
	isWeekend int,
	Employees_ID int
)


create table Experience
(
	ID int primary key identity,
	Years int,
	Number_of_Companies int,
	Company_Name varchar(30)
)

create table Customers
(
	ID int primary key identity,
	First_Name varchar(35),
	Last_Name varchar(35),
	Address varchar(60),
	Phone_Number varchar(13),
	EGN varchar(10),
	Age int,
	Gender varchar(6)
)


create table Secured_Areas
(
	ID int primary key identity,
	Address varchar(60),
	Type text,
	Security_Level int,
	Building_Level int,
	Size int,
 	Sensors_Families_ID int,
	Customers_ID int
)

create table Sensors_Families
(
	ID int primary key identity,
	Size int,
	Triggered_Family_Members int

)


create table Sensor_Detectors
(
	ID int primary key identity,
	range int,
	Sensors_Family_ID int
)


create table Signals 
(
	ID int primary key identity,
	Triggered_Date datetime2(0),
	Secured_Areas_ID int,
	Employee_Teams_ID int,
)

-- Trigger Tables

CREATE TABLE Employees_Update_History(
	ID int,
	First_Name varchar(35),
	Last_Name varchar(35),
	Gender char(6),
	Age int,
	Address varchar(60),
	Phone_Number varchar(13),
	Changed_By varchar(128),
	Changed_date datetime2
)

CREATE TABLE Employees_History(
	ID int ,
	First_Name varchar(35),
	Last_Name varchar(35),
	Gender char(6),
	Age int,
	Address varchar(60),
	Phone_Number varchar(13),
	Date_fired datetime2
)
