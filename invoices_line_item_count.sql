SELECT COUNT (il.InvoiceId) TotalLineItemsPerInvoice, il.InvoiceId
FROM InvoiceLine il
GROUP BY il.InvoiceId
