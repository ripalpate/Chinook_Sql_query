Select Top(5) t.TrackId, t.[Name], t.Composer,
	   t.UnitPrice, Count(t.TrackId) as PurchsedTrack
From InvoiceLine as il 
Join Invoice as i
On i.InvoiceId = il.InvoiceId 
Join Track as t
On t.TrackId = il.TrackId
Group By t.TrackId, t.Name,t.Composer, t.UnitPrice
Order By PurchsedTrack desc;


