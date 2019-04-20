Select [Name] = e.[FirstName] + ' ' +e.[LastName], i.InvoiceId
From dbo.Invoice as i, dbo.Customer as c
Join dbo.Employee as e
On c.SupportRepId = e.EmployeeId
Where i.CustomerId = c.CustomerId

--or You can Do it this way
Select [Name] = e.[FirstName] + ' ' +e.[LastName], i.InvoiceId
From Employee as e
Join Customer as c
On c.SupportRepId = e.EmployeeId
Join Invoice as i
On i.CustomerId = c.CustomerId

-- or 
Select [Name] = e.[FirstName] + ' ' +e.[LastName], i.InvoiceId
From dbo.Customer as c
Join dbo.Invoice as i
On i.CustomerId = c.CustomerId
Join dbo.Employee as e
On c.SupportRepId = e.EmployeeId
Where i.CustomerId = c.CustomerId