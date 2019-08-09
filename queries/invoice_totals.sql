SELECT i.Total as InvoiceTotal, 
c.FirstName as CustomerFirstName,
c.FirstName as CustomerLastName,
c.Country as CustomerCountry,
e.FirstName as SaleAgentFirstName,
e.FirstName as SaleAgentLastName
FROM Invoice i
JOIN Customer c on c.CustomerId = i.CustomerId
JOIN Employee e on e.EmployeeId = c.SupportRepId
WHERE e.Title LIKE '%Sales%'
