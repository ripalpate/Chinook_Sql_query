Select Top 1 [EmployeeName] = e.[FirstName] + ' ' + e.[LastName], Sum(i.total) as TotalSales
From Employee as e
Join Customer as c 
On e.EmployeeId = c.SupportRepId
Join Invoice as i 
On i.CustomerId = c.CustomerId
where Year(i.InvoiceDate) = 2009
Group By e.FirstName, e.LastName
Order By TotalSales Desc

--or
Select Top 1 [EmployeeName] = e.[FirstName] + ' ' + e.[LastName], Sum(i.total) as TotalSales
From Customer as c, Invoice as i, Employee as e
Where c.SupportRepId = e.EmployeeId
And c.CustomerId = i.CustomerId
And Year(i.InvoiceDate) = 2009
Group By e.FirstName, e.LastName
Order By TotalSales Desc
