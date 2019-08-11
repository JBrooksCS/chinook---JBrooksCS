-- top_agent.sql: Which sales agent made the most in sales over all?

SELECT E.FirstName, COUNT(*) as NumCustomers
FROM Employee E
JOIN Customer C on E.EmployeeId = C.SupportRepId
WHERE E.Title LIKE '%Sales%'
GROUP BY E.FirstName
