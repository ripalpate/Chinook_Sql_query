Select  [Name] = C.[FirstName] + ' ' + C.[LastName], i.InvoiceId, i.InvoiceDate,i.BillingCountry
from dbo.Customer C
Join dbo.Invoice i
On C.CustomerId = i.CustomerId
Where i.BillingCountry = 'Brazil';