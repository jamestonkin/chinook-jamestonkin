SELECT SUM (i.Total) TotalSales2009
FROM Invoice i
WHERE i.InvoiceDate LIKE '%2009%'
