Select i.* , Count(il.InvoiceLineId) as InvoiceLineItems
From Invoice as i
Join InvoiceLine as il
On il.InvoiceId = i.InvoiceId
Group By i.InvoiceId, i.InvoiceDate,i.CustomerId,
i.BillingAddress, i.BillingCity, i.BillingCountry, 
i.BillingPostalCode, i.BillingState, i.Total