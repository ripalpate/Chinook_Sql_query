Select  [Name] = C.[FirstName] + ' ' + C.[LastName],
C.CustomerId, C.Country
From dbo.Customer C
Where C.Country != 'USA'
