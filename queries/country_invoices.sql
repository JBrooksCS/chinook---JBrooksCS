SELECT BillingCountry, COUNT(*) as NumInvoices
FROM Invoice
GROUP BY BillingCountry