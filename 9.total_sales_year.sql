Select Sum(i.Total), Year(i.InvoiceDate)
From Invoice as i
Where Year(i.InvoiceDate) = '2009'
or Year(i.InvoiceDate) = '2011'
Group By Year(i.InvoiceDate)