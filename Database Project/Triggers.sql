-- github.com/DaniAngelov

-- Triggers :
--1.

CREATE TRIGGER Employees_Update_History_trigger
ON Employees
AFTER UPDATE 
AS

 DECLARE @login_name VARCHAR(128)
 
    SELECT  @login_name = login_name
    FROM    sys.dm_exec_sessions
    WHERE   session_id = @@SPID

BEGIN
	INSERT INTO Employees_Update_History 
	SELECT ID,First_Name,Last_name,Gender,Age,Address,Phone_Number, @login_name, GETDATE()
	FROM deleted
END;

--2.

CREATE TRIGGER Employees_Fired_trigger
ON Employees
AFTER DELETE 
AS
BEGIN
	INSERT INTO Employees_History 
	SELECT ID, First_Name,Last_name,Gender,Age,Address,Phone_Number, GETDATE()
	FROM deleted
END;
