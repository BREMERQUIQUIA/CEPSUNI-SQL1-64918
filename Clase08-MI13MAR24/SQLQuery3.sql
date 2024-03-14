

select 
	ShipCountry, 
	sum(case when DATEPART(qq,o.OrderDate)=1 then od.UnitPrice * od.Quantity else 0 end) T1,
	sum(case when DATEPART(qq,o.OrderDate)=2 then od.UnitPrice * od.Quantity else 0 end) T2,
	sum(case when DATEPART(qq,o.OrderDate)=3 then od.UnitPrice * od.Quantity else 0 end) T3,
	sum(case when DATEPART(qq,o.OrderDate)=4 then od.UnitPrice * od.Quantity else 0 end) T4,
	sum(od.UnitPrice * od.Quantity) VentasTotales
from Northwind..Orders o
join Northwind..[Order Details] od
on o.OrderID = od.OrderID
group by ShipCountry;
go



