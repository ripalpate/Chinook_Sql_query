Select Top (1) [EmployeeName] = e.[FirstName] + ' ' + e.[LastName], TotalSales = Sum(i.total) 
From Employee as e
Join Customer as c 
On e.EmployeeId = c.SupportRepId
Join Invoice as i 
On i.CustomerId = c.CustomerId
Group By e.FirstName, e.LastName
Order By TotalSales Desc

--or
Select Top(1) [EmployeeName] = e.[FirstName] + ' ' + e.[LastName], TotalSales = Sum(i.total) 
From Invoice as i, Customer as c, Employee as e
where c.SupportRepId = e.EmployeeId
And c.CustomerId = i.CustomerId
Group By e.FirstName, e.LastName
Order By TotalSales Desc