SELECT il.InvoiceId, t.Name, a.Name
FROM InvoiceLine il
LEFT JOIN Track t ON il.TrackId = t.TrackID
LEFT JOIN Album al ON t.AlbumID = al.AlbumID
LEFT JOIN Artist a ON al.ArtistID = a.ArtistID
