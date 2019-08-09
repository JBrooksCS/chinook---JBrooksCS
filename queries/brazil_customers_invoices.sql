SELECT c.CustomerId, c.FirstName, c.LastName, i.InvoiceId, i.BillingCountry, i.InvoiceDate
FROM Customer c
JOIN Invoice i on c.CustomerId = i.CustomerId
WHERE i.BillingCountry = 'Brazil'
