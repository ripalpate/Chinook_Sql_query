Select Top(3) ar.[Name] as ArtistName, Count(il.TrackId) as PurchasedTracks
From Artist as ar
Join Album as al
On ar.ArtistId = al.ArtistId
Join Track as t
On t.AlbumId = al.AlbumId
Join InvoiceLine as il
On il.TrackId = t.TrackId
Group By ar.Name
Order By PurchasedTracks Desc

