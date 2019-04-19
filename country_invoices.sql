Select i.BillingCountry, Count(i.InvoiceId) As NumberOfInvoices
From Invoice as i
Group By i.BillingCountry