Select [Name] = e.[FirstName] + ' ' +e.[LastName], i.InvoiceId
From dbo.Invoice as i, dbo.Customer as c
Join dbo.Employee as e
On c.SupportRepId = e.EmployeeId
Where i.CustomerId = c.CustomerId