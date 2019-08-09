SELECT i.InvoiceId, t.[Name] as TrackName
FROM InvoiceLine i
JOIN Track t on t.TrackId = i.TrackId
ORDER BY i.InvoiceId ASC