Select  il.InvoiceLineId, ar.[Name] as ArtistName, t.[Name] as TrackName
From InvoiceLine il
Join Track as t
On il.TrackId = t.TrackId
Join Album as al
On t.AlbumId = al.AlbumId
Join Artist as ar
On ar.ArtistId = al.ArtistId
Order By il.InvoiceLineId