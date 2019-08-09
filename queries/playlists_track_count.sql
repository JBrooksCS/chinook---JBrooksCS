
SELECT p.[Name], COUNT(*) as NumTracks
FROM PlaylistTrack pt
JOIN Playlist p on p.PlaylistId = pt.PlaylistId
GROUP BY p.[Name]