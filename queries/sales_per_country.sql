SELECT I.BillingCountry, SUM(IL.UnitPrice) as TotalCountrySales
FROM Invoice I
JOIN InvoiceLine IL on IL.InvoiceId = I.InvoiceId
GROUP BY I.BillingCountry