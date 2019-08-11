-- top_5_tracks.sql: Provide a query that shows the top 5 most purchased songs.


SELECT TOP 5 t.[Name] as TrackName, 
Count(*) as TrackPurchaseCount 
FROM InvoiceLine IL 
JOIN Invoice I on I.InvoiceId = IL.InvoiceId
JOIN Track t on t.TrackId = IL.TrackId
WHERE YEAR(I.InvoiceDate) = 2013
GROUP BY t.[Name]
ORDER BY TrackPurchaseCount DESC

--Caveat, this will not represent multiple tracks sharing the top spot if there is a tie between more than 5 tracks