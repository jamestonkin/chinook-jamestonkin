SELECT il.InvoiceId, t.Name
FROM InvoiceLine il
LEFT JOIN Track t ON il.TrackId = t.TrackID 
