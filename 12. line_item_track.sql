Select  il.InvoiceLineId, t.[Name] as TrackName
From Track as t
Join InvoiceLine as il
On il.TrackId = t.TrackId
Order By il.InvoiceLineId