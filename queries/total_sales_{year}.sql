-- SELECT Total, YEAR(InvoiceDate) as Year
-- FROM Invoice
-- WHERE YEAR(InvoiceDate) IN (2009, 2011)

SELECT SUM(Total) as '2009 Total Sales',
        (SELECT SUM(Total) 
        FROM Invoice i 
        WHERE YEAR(InvoiceDate) = 2011) as '2011 Total Sales'
FROM Invoice i 
WHERE YEAR(InvoiceDate) = 2009
