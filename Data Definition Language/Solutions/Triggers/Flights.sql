-- github.com/DaniAngelov

--1. 

ALTER TABLE FLIGHT ADD num_pass int

--2. 

ALTER TABLE AGENCY ADD num_book int

-- 3.

CREATE TRIGGER UPDEPT

ON Booking

AFTER INSERT

AS UPDATE Agency SET Agency.num_book =
(SELECT COUNT(c.ID) 
FROM BOOKING b 
JOIN CUSTOMER c 
ON b.CUSTOMER_ID = c.ID
) 

CREATE TRIGGER INSERT_FLIGHT

ON Booking

AFTER INSERT

AS UPDATE Flight SET Flight.num_pass = 
(SELECT COUNT(c.ID) 
FROM BOOKING b 
JOIN CUSTOMER c 
ON b.CUSTOMER_ID = c.ID
) 

-- 4. 5.

CREATE TRIGGER UPDEPT

ON Booking

AFTER INSERT

AS UPDATE Agency SET Agency.num_book =
(SELECT COUNT(c.ID) 
FROM BOOKING b 
JOIN CUSTOMER c 
ON b.CUSTOMER_ID = c.ID
) 


CREATE TRIGGER INSERT_FLIGHT

ON Booking

AFTER DELETE

AS UPDATE Flight SET Flight.num_pass = 
(SELECT COUNT(c.ID) 
FROM BOOKING b 
JOIN CUSTOMER c 
ON b.CUSTOMER_ID = c.ID
) 
