-- github.com/DaniAngelov

PC:
1.select model,speed as MHz ,hd as GB from PC where price < 1200
2.select Distinct maker from product where type = 'Printer'
3.select model,ram,screen from laptop where price > 1000
4.select * from printer where color = 'y'
5.select model,speed,hd from pc where (cd = '12x' or cd = '16x') and price < 2000
