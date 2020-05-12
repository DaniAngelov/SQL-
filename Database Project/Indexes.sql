-- github.com/DaniAngelov

--INDEXES

CREATE INDEX idx_Secured_Areas_address ON Secured_Areas (Address)


CREATE INDEX idx_Customers_phone_number ON Customers (Phone_Number)


CREATE INDEX idx_Experience_Company_Name ON Experience (Company_Name)


CREATE INDEX idx_IsDrivable ON Vehicles(isDrivable)


CREATE INDEX idx_Date_When_Starts ON Shifts(Date_When_Starts,Date_When_Ends)

CREATE INDEX idx_Triggered_Date ON Signals(Triggered_Date)
