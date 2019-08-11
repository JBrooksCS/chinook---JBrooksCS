-- sales_agent_total_sales.sql: Provide a query that shows total sales made by each sales agent.

SELECT E.FirstName, SUM(IL.UnitPrice) as TotalAgentSales
FROM Employee E
JOIN Customer C on E.EmployeeId = C.SupportRepId
JOIN Invoice I on I.CustomerId = C.CustomerId
JOIN InvoiceLine IL on IL.InvoiceId = I.InvoiceId
WHERE E.Title LIKE '%Sales%'
GROUP BY E.FirstName