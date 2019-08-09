SELECT e.FirstName, e.LastName, i.InvoiceId, i.InvoiceDate, i.Total FROM Employee e
JOIN Invoice i on e.EmployeeId = i.CustomerId
WHERE e.Title LIKE '%Sales%'