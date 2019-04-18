Select [Name] = E.[FirstName] + ' '+ E.[LastName], E.Title
From dbo.Employee as E
Where E.Title = 'Sales Support Agent'