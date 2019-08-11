-- top_2013_track.sql: Provide a query that shows the most purchased track of 2013.


SELECT TOP 1 t.[Name] as TrackName, 
Count(*) as TrackPurchaseCount 
FROM InvoiceLine IL 
JOIN Invoice I on I.InvoiceId = IL.InvoiceId
JOIN Track t on t.TrackId = IL.TrackId
WHERE YEAR(I.InvoiceDate) = 2013
GROUP BY t.[Name]
ORDER BY TrackPurchaseCount DESC

--Caveat, this will not represent multiple tracks sharing the top spot