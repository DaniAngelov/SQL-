  
-- github.com/DaniAngelov


--CONSTRAINTS

----------------------------------------------

--CREATING TABLES:

create table Airline
(
	CODE VARCHAR(2) NOT NULL,
	NAME VARCHAR(40) NOT NULL,
	COUNTRY VARCHAR(30)

);

create table Airport
(
	CODE VARCHAR(3) NOT NULL,
	NAME VARCHAR(40) NOT NULL,
	COUNTRY VARCHAR(30),
	CITY VARCHAR(30)
);

create table Airplane
(
	CODE VARCHAR(3) NOT NULL,
	TYPE VARCHAR(30) NOT NULL,
	SEATS INT,
	YEAR INT
);

create table Flight
(
	FNUMBER VARCHAR(6) NOT NULL,
	AIRLINE_OPERATOR VARCHAR(2) NOT NULL,
	DEP_AIRPORT VARCHAR(3),
	ARR_AIRPORT VARCHAR(3),
	FLIGHT_TIME VARCHAR(20),
	FLIGHT_DURATION INT,
	AIRPLANE VARCHAR(3) NOT NULL
);

create table Customer
(
		ID INT NOT NULL,
		FNAME VARCHAR(20),
		LNAME VARCHAR(20),
		EMAIL VARCHAR(40)
);

create table Agency
(
	NAME VARCHAR(20) NOT NULL,
	COUNTRY VARCHAR(20),
	CITY VARCHAR(20),
	PHONE VARCHAR(20)
);

create table Booking
(
	CODE VARCHAR(20) NOT NULL,
	AGENCY VARCHAR(20) NOT NULL,
	AIRLINE_CODE VARCHAR(2) NOT NULL,
	FLIGHT_NUMBER VARCHAR(6) NOT NULL,
	CUSTOMER_ID INT NOT NULL,
	BOOKING_DATE VARCHAR(20),
	FLIGHT_DATE VARCHAR(20),
	PRICE INT,
	STATUS INT
	);
