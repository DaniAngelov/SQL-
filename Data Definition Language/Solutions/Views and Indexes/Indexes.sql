-- github.com/DaniAngelov

-- INDEXES:

-- PC:

-- 12.

CREATE INDEX Idx_PC_Code_Model ON PC(CODE,MODEL)
CREATE INDEX Idx_Laptop_Code_Model ON Laptop(CODE,MODEL)
CREATE INDEX Idx_Printer_Code_Model ON Printer(CODE,MODEL)
CREATE INDEX Idx_Product_Maker_Model ON Product(MAKER,MODEL)

-- Ships:

-- 13.

CREATE INDEX Idx_Classes_Class on Classes(CLASS)
CREATE INDEX Idx_Ships_Class_Name on Ships(CLASS,NAME)
CREATE INDEX Idx_Battles_NAME on Battles(NAME)
CREATE INDEX Idx_Outcomes_Ship_Battle on Outcomes(SHIP,BATTLE)

-- 14.

-- PC:


DROP INDEX Idx_PC_Code_Model 
DROP INDEX Idx_Laptop_Code_Model 
DROP INDEX Idx_Printer_Code_Model 
DROP INDEX Idx_Product_Maker_Model

-- Ships:

DROP INDEX Idx_Classes_Class 
DROP INDEX Idx_Ships_Class_Name
DROP INDEX Idx_Battles_NAME  
DROP INDEX Idx_Outcomes_Ship_Battle 
