-- top_3_artists.sql: Provide a query that shows the top 3 best selling artists.



SELECT TOP 3 AR.[Name] as ArtistName, 
Count(*) as TrackPurchaseCount 
FROM InvoiceLine IL 
JOIN Invoice I on I.InvoiceId = IL.InvoiceId
JOIN Track t on t.TrackId = IL.TrackId
JOIN Album AL on AL.AlbumId = t.AlbumId
JOIN Artist AR on AR.ArtistId = AL.ArtistId
GROUP BY AR.[Name]
ORDER BY TrackPurchaseCount DESC

--Caveat, this will not represent multiple artists sharing the top spot if there is a tie between more than 3 artists