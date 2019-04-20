Select Top(1) mt.Name, Count(il.TrackId) as PurchasedMediaType
From MediaType as mt
Join Track as t
On t.MediaTypeId = mt.MediaTypeId
Join InvoiceLine as il
On il.TrackId = t.TrackId
Group By mt.Name
Order By PurchasedMediaType desc

