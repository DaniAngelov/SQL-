-- github.com/DaniAngelov

-- 2.

select p.Product_ID,p.Product_Description,COUNT(p.Product_ID) as ORDERED_TIMES
from product p
join ORDER_LINE o
on o.Product_ID = p.Product_ID
group by p.Product_ID,p.Product_Description
having COUNT(p.product_ID) >= 1

-- 3.

select p.Product_ID,p.Product_Description,COUNT(o.Ordered_Quantity) as ORDERED_QUANTITY
from product p
left join ORDER_LINE o
on o.Product_ID = p.Product_ID
group by p.Product_ID,p.Product_Description,o.Ordered_Quantity
order by Product_ID

-- 4.

select c.Customer_Name,Convert(decimal(16,2),SUM(p.Standard_Price) ) as min_price
from CUSTOMER c
join ORDER_T o
on c.Customer_ID= o.Customer_ID
join ORDER_LINE o2 
on o.Order_ID = o2.Order_ID
join PRODUCT p 
on p.Product_ID = o2.Product_ID
group by c.CUSTOMER_name
