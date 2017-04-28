SELECT SUM (i.Total) TotalSales2011
FROM Invoice i
WHERE i.InvoiceDate LIKE '%2011%'
