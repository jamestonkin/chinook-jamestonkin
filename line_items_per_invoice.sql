SELECT COUNT (il.InvoiceId) TotalLineItemsPerInvoice
FROM InvoiceLine il
GROUP BY il.InvoiceId
