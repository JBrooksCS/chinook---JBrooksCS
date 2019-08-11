
-- invoices_line_item_count.sql: Provide a query that shows all Invoices but includes the # of invoice line items.

SELECT IL.InvoiceId, COUNT(*) as numOfInvoiceLineItems, I.BillingAddress
FROM InvoiceLine IL 
JOIN Invoice I on I.InvoiceId = IL.InvoiceId
GROUP BY IL.InvoiceId, I.BillingAddress