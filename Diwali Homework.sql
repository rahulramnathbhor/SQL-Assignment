create  table customer(
custid int identity(1,1) primary key,
custname varchar(20),
city varchar(40),
postalcode int
)
select * from customer	
insert into customer values('Arun','Franch',429356)
insert into customer values('Balaji','Norway',649356)
insert into customer values('Chanakya','Berlin',121110)
insert into customer values('Danny','Tokyo',476356)
insert into customer values('Eshan','London',429344)
insert into customer values('Faresh','Berlin',121110)
insert into customer values('Govinda','Franch',429356)
insert into customer values('Harshad','Berlin',121110)
insert into customer values('Ishani','Norway',649356)
insert into customer values('kamini','Canada',429386)
insert into customer values('Lankesh','America',42356)
insert into customer values('Mahesh','Saudi',114456)
insert into customer values('Nutan','Tokyo',476356)
insert into customer values('Ojaswimi','Northwest',239356)
insert into customer values('Pankaj','India',422256)
insert into customer values('Qadar','Quito',466356)
insert into customer values('Rahul','Russiya',423356)
insert into customer values('Shubham','Karachi',329356)
insert into customer values('Tailer','Turky',349356)
insert into customer values('Umesh','Franch',429356)
insert into customer values('Vanila','London',429344)
insert into customer values('Warner','Australiya',449356)

--1)
Select city from customer

--2)
select distinct city from customer

--3)
SELECT *
FROM customer
WHERE City = 'London'

--4)
SELECT *
FROM Customer
WHERE City NOT IN ('Berlin')

--5)
SELECT * FROM Customer WHERE CustID= 23

--6)
SELECT *
FROM Customer
WHERE City = 'Berlin'
AND PostalCode = '121110'

--7)
SELECT * FROM customer
WHERE City = 'Berlin' OR City = 'London'

--8)
SELECT *
FROM Customer
ORDER BY city

--9)
select * from customer order by city asc

--10)
SELECT *
FROM Customer
ORDER BY  City

--11)
SELECT *
FROM Customer
WHERE PostalCode = ''

--12)
SELECT * FROM Customer WHERE PostalCode <> ''

--13)
UPDATE customer
SET City = 'Oslo'
WHERE City = 'Norway'

--14)
DELETE FROM Customer
WHERE City= 'Norway'

alter table customer add products int
alter table customer drop column products

   create table products(
   id int identity(1,1) primary key,
  title varchar(20),
  price real
  )
 -- sp_rename 'Products.title' ,'pname'

  select * from products
  drop table products
  insert into products values('milk',40)
    insert into products values('tea',30)
	  insert into products values('coffee',50)
	    insert into products values('Badam shek',80)
		  insert into products values('Faluda',90)
		    insert into products values('ice-cream',60)
			  insert into products values('cold coffee',100)
			    insert into products values('mango juice',110)
				  insert into products values('vannila cake',50)
				    insert into products values('ice cake',550)
					  insert into products values('vadapav',10)
					    insert into products values('pavbhaji',70)
						  insert into products values('misal',35)
						    insert into products values('panir',67)
							  insert into products values('shevbhaji',40)
							    insert into products values('apple',120)
							  insert into products values('Cucumber',30)
							    insert into products values('salad',87)
								  insert into products values('pavvada',65)
								    insert into products values('Apple juice',55)
									  insert into products values('bread cake',200)
									  insert into products values('gulkand',20)
--15)
SELECT MIN(Price) as MinimumPrice FROM Products

--16)

SELECT MAX(price) FROM products

--17)
SELECT COUNT(*)
FROM Products
WHERE Price = 20

--18)

SELECT AVG(price)
FROM products

--19)
SELECT SUM(Price) FROM Products
--20)
SELECT *
FROM Customer
WHERE City LIKE 'a%'

--21)

SELECT *
FROM customer	
WHERE City LIKE '%a'

--22)
SELECT * FROM customer WHERE City LIKE '%a%'

--23)

SELECT *FROM customer WHERE City LIKE 'a%b'

--24)
SELECT * fROM customer	 WHERE City NOT LIKE 'a%'

--25)
select* FROM Customer
WHERE City LIKE '_a%'

--26)
SELECT * FROM Customer
WHERE City LIKE 'a%'
OR City LIKE 'c%'
OR City LIKE 's%'

--27)
SELECT *FROM customer
WHERE city LIKE '[a-f]%'

--28)
SELECT *FROM customer	
WHERE City NOT LIKE 'a%'
AND City NOT LIKE 'c%'
AND City NOT LIKE 'f%'

--29)
SELECT * FROM customer
WHERE City IN ('Norway', 'France')

--30)
SELECT * FROM customer
WHERE City not in ('Norway', 'France')

--31)
SELECT * FROM products WHERE Price BETWEEN 10 AND 20

--32)
SELECT * FROM products
WHERE Price NOT BETWEEN 10 AND 20

--33)

SELECT pname
FROM products
where pname BETWEEN 'Geitost' AND 'Pavlova'

--34)
SELECT * FROM Customer as Pno

--35)
SELECT * FROM Consumers

--36)
SELECT COUNT(DISTINCT custid)
FROM customer
GROUP BY city

--37)
SELECT city, count(*) AS num_customers
FROM customer
GROUP BY city
ORDER BY num_customers DESC
--38)
create database testDB

--39)
drop database testDB

--40)
drop table person
select * from persons
create table persons(
pid int identity(1,1) primary key,
pname varchar(20
))

ALTER TABLE Persons 
ADD Birthday DATE

 --41)
drop column Birthday 