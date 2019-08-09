SELECT InvoiceId, Count(*) as NumOfLineItems
FROM InvoiceLine 
GROUP BY InvoiceId 