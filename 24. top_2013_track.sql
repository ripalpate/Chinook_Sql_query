Select t.TrackId, t.[Name], t.Composer,
	   t.UnitPrice, Count(*) as PurchsedTrack
From InvoiceLine as il 
Join Invoice as i
On i.InvoiceId = il.InvoiceId 
Join Track as t
On t.TrackId = il.TrackId
Where Year(i.InvoiceDate) = 2013
Group By t.TrackId, t.Name,t.Composer, t.UnitPrice
Order By PurchsedTrack

--or
declare @invoiceYear as int
Set @invoiceYear = 2013
-- or Declare @invoiceYear as int = 2013
Select t.TrackId, t.Name, Count(*)
From Track as t
	Join InvoiceLine il 
		On il.TrackId = t.TrackId
	Join Invoice i
		On i.InvoiceId = il.InvoiceId
Where DatePart(Year,i.InvoiceDate) = @invoiceYear
Group By t.TrackId, t.Name
Order By t.Name
--i.InvoiceDate > '1/1/2013' and i.InvoiceDate < '1/1/2014'