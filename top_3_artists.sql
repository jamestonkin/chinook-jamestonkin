SELECT  Artist_Name, Top3_Selling_Artists
FROM (SELECT a.Name Artist_Name, COUNT(t.TrackId) AS Top3_Selling_Artists
	FROM Track t, Invoice i, InvoiceLine il, Album al, Artist a
	WHERE t.TrackId = il.TrackId
	AND il.InvoiceId = i.InvoiceId
	AND t.AlbumId = al.AlbumId
	AND al.ArtistId = a.ArtistId
	GROUP BY a.Name
	ORDER BY Top3_Selling_Artists DESC
	LIMIT 3)
