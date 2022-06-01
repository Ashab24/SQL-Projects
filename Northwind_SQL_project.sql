                                              /*	NORTHWIND DATABASE EXERCISES	*/

use northwind;
/*1*/ select ProductName,QuantityPerUnit from products;
/*2*/ select ProductID,ProductName from products where Discontinued=0;
/*3*/ select ProductID,ProductName from products where Discontinued=1;
/*4*/ select ProductName,UnitPrice from products order by UnitPrice desc;
/*5*/ select ProductID,ProductName,UnitPrice from products where Discontinued=0 and UnitPrice<20;
/*6*/ select ProductID,ProductName,UnitPrice from products where UnitPrice between 15 and 25;
/*7*/ select ProductName,UnitPrice from products where UnitPrice>(select avg(UnitPrice) from products);
/*8*/ select ProductName,UnitPrice from products order by UnitPrice desc limit 10;
/*9*/ select Discontinued,count(*) from products group by Discontinued;
/*10*/ select ProductName,UnitsOnOrder,UnitsInStock from products where UnitsInStock<UnitsOnOrder;
