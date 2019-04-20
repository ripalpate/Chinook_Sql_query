Select t.[Name] as TrackName, al.Title as AlbumName, mt.[Name] as MediaTypeName, g.[Name] as GenreName
From Track as t
Join Album as al
On al.AlbumId = t.AlbumId
Join MediaType as mt
On mt.MediaTypeId = t.MediaTypeId
Join Genre as g
On g.GenreId = t.GenreId

--or
Select t.[Name] as TrackName, al.Title as AlbumName, mt.[Name] as MediaTypeName, g.[Name] as GenreName
From Track as t, Album as al, MediaType as mt, Genre as g
Where t.AlbumId = al.AlbumId
And t.MediaTypeId = mt.MediaTypeId
And t.GenreId = g.GenreId