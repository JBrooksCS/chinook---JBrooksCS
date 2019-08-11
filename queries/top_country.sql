-- top_country.sql: Which country's customers spent the most?

SELECT C.Country, SUM(IL.UnitPrice) as TotalCountryExpenditure
FROM Customer C
JOIN Invoice I on I.CustomerId = C.CustomerId 
JOIN InvoiceLine IL on IL.InvoiceId = I.InvoiceId
GROUP BY C.Country
