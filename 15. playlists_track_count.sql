Select p.[Name] as PlaylistName, Count(p.PlaylistId) as TotalNumbersOfTracks
From Playlist as p
Join PlaylistTrack pt
On pt.PlaylistId = p.PlaylistId
Group By p.[Name]
Order By p.[Name]