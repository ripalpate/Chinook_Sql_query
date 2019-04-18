Select [CustomerName] = c.[FirstName] + ' ' + c.[LastName], c.[Country], [AgentName] = e.[FirstName] + ' ' + e.[LastName], i.Total
From dbo.Invoice as i, dbo.Employee as e
Join dbo.Customer as c
On c.SupportRepId = e.EmployeeId
Where c.CustomerId = i.CustomerId
