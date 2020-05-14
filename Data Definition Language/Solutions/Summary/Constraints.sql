-- github.com/DaniAngelov

-- CONSTRAINTS :

-- FOREIGN KEYS:

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
