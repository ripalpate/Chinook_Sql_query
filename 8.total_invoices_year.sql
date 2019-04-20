Select Count(*) as InvoiceCount, Year(i.InvoiceDate) 
From dbo.Invoice as i
Where Year(i.InvoiceDate) = '2009'
or Year(i.InvoiceDate) = '2011'
Group By Year(i.InvoiceDate);