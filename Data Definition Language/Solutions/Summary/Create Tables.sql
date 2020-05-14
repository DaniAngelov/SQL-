-- CUSTOMER :

CREATE TABLE CUSTOMER
(
	Customer_ID INT PRIMARY KEY IDENTITY,
	Customer_Name text,
	Customer_Address text,
	Customer_City text,
	City_Code text

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
	Product_Description text,
	Product_Finish text,
	Standard_Price int,
	Product_Line_ID int
)


CREATE TABLE ORDER_LINE
(
	Order_ID int,
	Product_ID int,
	Ordered_Quality int
)

-- CONSTRAINTS :

ALTER TABLE ORDER_T ADD CONSTRAINT Customer_Order_fk 
FOREIGN KEY(CUSTOMER_ID) REFERENCES CUSTOMER(Customer_ID)

ALTER TABLE ORDER_LINE ADD CONSTRAINT Order_Line_Order_fk 
FOREIGN KEY(Order_ID) REFERENCES ORDER_T(Order_ID)

ALTER TABLE ORDER_LINE ADD CONSTRAINT Order_Line_Product_fk 
FOREIGN KEY(Product_ID) REFERENCES PRODUCT(Product_ID)

-- CHECK

ALTER TABLE PRODUCT ADD CONSTRAINT Product_Finish_Chk 
CHECK( Product_Finish like 'череша' or Product_Finish like 'естествен ясен' or
Product_Finish like 'бял ясен' or Product_Finish like 'червен дъб' or Product_Finish like 'естествен дъб'
or Product_Finish like 'орех')
