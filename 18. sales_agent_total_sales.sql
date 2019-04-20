Select [EmployeeName] = e.[FirstName] + ' ' + e.[LastName], SUM(i.Total) as TotalSales
From Employee as e
Join Customer as c 
On c.SupportRepId = e.EmployeeId
Join Invoice as i 
On i.CustomerId = c.CustomerId
Group By e.FirstName, e.LastName
Order By [EmployeeName]

--or 
Select [EmployeeName] = e.[FirstName] + ' ' + e.[LastName], SUM(i.Total) as TotalSales
From Customer as c, Invoice as i, Employee as e
Where c.SupportRepId = e.EmployeeId
And c.CustomerId = i.CustomerId
Group By e.FirstName, e.LastName
Order By TotalSales desc

--or
Select [EmployeeName] = e.[FirstName] + ' ' + e.[LastName], SUM(i.Total) as TotalSales
From Invoice as i
Join Customer as c
On c.CustomerId = i.CustomerId
Join Employee as e
On c.SupportRepId = e.EmployeeId
Group By e.FirstName, e.LastName
Order By TotalSales desc