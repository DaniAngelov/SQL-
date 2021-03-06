-- github.com/DaniAngelov

1.

a)

create table product
(
	model char(4) ,
	maker char(1) ,
	type_pr varchar(7)

);

create table Printer
(
	code int,
	model char(4),
	price decimal(6,2)
);

б)

insert into product(model,maker,type_pr) Values('1001','A','Printer')
insert into product(model,maker,type_pr) Values('1002','B','Printer')
insert into product(model,maker,type_pr) Values('1003','C','Printer')

insert into Printer(code,model,price) values(1,'1004',150.69)
insert into Printer(code,model,price) values(2,'1007',1124.10)
insert into Printer(code,model,price) values(3,'1010',240.54)

в)

alter table printer add type varchar(6)
alter table printer add color char(1)
alter table printer add constraint printer_type_ck Check(type in ('laser','matrix' ,'jet'))
alter table printer add constraint printer_color_ck check(color in ('y','n'))

insert into Printer(code,model,price,_type,color) values(4,'1011',500.25,'jet','y')
insert into Printer(code,model,price,_type,color) values(5,'1015',568.17,'matrix','n')

г)

alter table printer drop column price

д)

drop table product
drop table printer


