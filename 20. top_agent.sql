Select Top 1 [EmployeeName] = e.[FirstName] + ' ' + e.[LastName], Sum(i.total) as TotalSales
From Employee as e
Join Customer as c 
On e.EmployeeId = c.SupportRepId
Join Invoice as i 
On i.CustomerId = c.CustomerId
Group By e.FirstName, e.LastName
Order By TotalSales Desc