--just a regular join
Select * from Invoice i
Join Customer c
On c.CustomerId = i.CustomerId
Where c.FirstName like 'a%'

-- --in clause with subquery
Select *
From Invoice i
Where i.CustomerId in (Select CustomerId from Customer Where FirstName like 'a%')


--Corelated subquery take 1 query 
Select *
From Invoice i
Where i.CustomerId in (
	Select CustomerId 
	from Customer c 
	Where FirstName like 'a%' 
		and i.CustomerId = c.CustomerId)


--Joined subquery
Select *
From Invoice i
Join (
Select CustomerId 
	from Customer
	where FirstNAme like 'a%'
) c
on i.CustomerId = c.CustomerId