-- top_agent.sql: Which sales agent made the most in sales over all?

SELECT TOP 1 E.FirstName, SUM(IL.UnitPrice) as TotalAgentSales
FROM Employee E
JOIN Customer C on E.EmployeeId = C.SupportRepId
JOIN Invoice I on I.CustomerId = C.CustomerId
JOIN InvoiceLine IL on IL.InvoiceId = I.InvoiceId
WHERE E.Title LIKE '%Sales%'
GROUP BY E.FirstName
ORDER BY TotalAgentSales DESC
