SELECT COUNT (i.InvoiceDate) TotalInvoices2011
FROM Invoice i
WHERE i.InvoiceDate LIKE '%2011%'
