-- github.com/DaniAngelov

--VIEWS:

-- FLIGHTS :

--1.

CREATE VIEW OPERATOR_FNUMBER_CID AS
SELECT AIRLINE_OPERATOR,FNUMBER,COUNT(C.ID) AS NUMBER_PEOPLE
FROM FLIGHT f
JOIN BOOKING B
ON f.FNUMBER = b.FLIGHT_NUMBER
JOIN CUSTOMER C
ON b.CUSTOMER_ID = C.ID
GROUP BY AIRLINE_OPERATOR,FNUMBER,C.ID

--2.

CREATE VIEW FName_LName_STATUS as 
SELECT c.FNAME,c.LNAME,COUNT(STATUS) AS MAX_RESERVATIONS
FROM AGENCY a
JOIN BOOKING b
ON a.NAME = b.AGENCY
JOIN CUSTOMER c
ON c.ID = b.CUSTOMER_ID
GROUP BY FNAME,LNAME
HAVING COUNT(STATUS) >= 
ALL( SELECT COUNT(STATUS) FROM BOOKING JOIN CUSTOMER ON CUSTOMER_ID = CUSTOMER.ID GROUP BY FNAME,LNAME) 

--3.

CREATE VIEW NAME_COUNTRY_CITY_PHONE AS SELECT NAME,COUNTRY,CITY,PHONE
FROM AGENCY
WHERE CITY = 'Sofia'
WITH CHECK OPTION

--4.

CREATE VIEW NAME_COUNTRY_CITY_PHONE2 AS SELECT NAME,COUNTRY,CITY,PHONE
FROM AGENCY
WHERE PHONE IS NULL
WITH CHECK OPTION

--5.

-- WITHOUT CHECK

INSERT INTO NAME_COUNTRY_CITY_PHONE
VALUES('T1 Tour', 'Bulgaria', 'Sofia','+359');
INSERT INTO NAME_COUNTRY_CITY_PHONE
VALUES('T2 Tour', 'Bulgaria', 'Sofia',null);
INSERT INTO NAME_COUNTRY_CITY_PHONE
VALUES('T3 Tour', 'Bulgaria', 'Varna','+359');
INSERT INTO NAME_COUNTRY_CITY_PHONE
VALUES('T4 Tour', 'Bulgaria', 'Varna',null);
INSERT INTO NAME_COUNTRY_CITY_PHONE
VALUES('T4 Tour', 'Bulgaria', 'Sofia','+359');

-- WITH CHECK


INSERT INTO NAME_COUNTRY_CITY_PHONE2
VALUES('T1 Tour', 'Bulgaria', 'Sofia','+359');
INSERT INTO NAME_COUNTRY_CITY_PHONE2
VALUES('T2 Tour', 'Bulgaria', 'Sofia',null);
INSERT INTO NAME_COUNTRY_CITY_PHONE2
VALUES('T3 Tour', 'Bulgaria', 'Varna','+359');
INSERT INTO NAME_COUNTRY_CITY_PHONE2
VALUES('T4 Tour', 'Bulgaria', 'Varna',null);
INSERT INTO NAME_COUNTRY_CITY_PHONE2
VALUES('T4 Tour', 'Bulgaria', 'Sofia','+359');
