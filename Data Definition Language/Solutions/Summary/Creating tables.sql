-- github.com/DaniAngelov

CREATE TABLE CUSTOMER
(
	Customer_ID INT PRIMARY KEY IDENTITY,
	Customer_Name varchar(30),
	Customer_Address varchar(40),
	Customer_City varchar(20),
	City_Code varchar(4)

)

CREATE TABLE ORDER_T
(
	Order_ID INT PRIMARY KEY,
	Order_Date datetime2,
	Customer_ID int,
)

CREATE TABLE PRODUCT
(
	Product_ID INT PRIMARY KEY ,
	Product_Description varchar(30),
	Product_Finish varchar(20),
	Standard_Price int,
	Product_Line_ID int
)


CREATE TABLE ORDER_LINE
(
	Order_ID int,
	Product_ID int,
	Ordered_Quantity int
)
