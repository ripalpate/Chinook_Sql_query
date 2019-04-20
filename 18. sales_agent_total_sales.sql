Select [EmployeeName] = e.[FirstName] + ' ' + e.[LastName], SUM(i.Total) as TotalSales
From Employee as e
Join Customer as c 
On c.SupportRepId = e.EmployeeId
Join Invoice as i 
On i.CustomerId = c.CustomerId
Group By e.FirstName, e.LastName
Order By [EmployeeName]