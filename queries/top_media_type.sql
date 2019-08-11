-- top_media_type.sql: Provide a query that shows the most purchased Media Type.



SELECT TOP 1 MT.[Name] as MediaType, 
Count(*) as TrackPurchaseCount 
FROM InvoiceLine IL 
JOIN Invoice I on I.InvoiceId = IL.InvoiceId
JOIN Track t on t.TrackId = IL.TrackId
JOIN MediaType MT on MT.MediaTypeId = t.MediaTypeId
GROUP BY MT.[Name]
ORDER BY TrackPurchaseCount DESC

--Caveat, this will not represent multiple mediatypes sharing the top spot if there is a tie between more than 1 mediatype