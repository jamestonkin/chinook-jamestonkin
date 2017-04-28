SELECT COUNT (i.InvoiceDate) TotalInvoices2009
FROM Invoice i
WHERE i.InvoiceDate LIKE '%2009%'
