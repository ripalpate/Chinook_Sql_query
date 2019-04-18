Select il.InvoiceId, Count(il.InvoiceId) as CountOfLineItems
From InvoiceLine as il 
Group By il.InvoiceId