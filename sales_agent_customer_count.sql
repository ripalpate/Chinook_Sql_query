Select [Name] = e.FirstName + ' '+ e.LastName, Count(c.CustomerId) as NumberOfCustomers
From Employee e
Join Customer c
On c.SupportRepId =  e.EmployeeId
Group by e.FirstName, e.LastName