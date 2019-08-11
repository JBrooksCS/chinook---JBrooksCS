SELECT t.[Name] as TrackName,  a.Title as AlbumName, m.[Name] as MediaType 
FROM Track t
JOIN Album a on a.AlbumId = t.AlbumId
JOIN MediaType m on t.MediaTypeId = m.MediaTypeId
ORDER BY a.AlbumId