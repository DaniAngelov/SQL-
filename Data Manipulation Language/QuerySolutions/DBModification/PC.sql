-- github.com/DaniAngelov

PC:

4.

insert into Product(maker,model,type) 
Values('C',1100,'PC')
insert into Pc(code,model,speed,ram,hd,cd,price) 
Values(12,'1100',2400,2048,500,'52x',299)

5.

delete from pc where model = '1100'


6.

delete
from laptop 
where model in (
select model 
from product p
where p.type = 'Laptop' 
and p.maker not in (select maker from product p2 where p2.type = 'Printer')
)

7.

update product
set maker = 'A'
where maker = 'B'

8.

update pc
set price = price /2, hd = hd + 20


9.

update laptop
set screen = screen + 1
where model in 
(
select model from product where maker = 'B'
)
