SELECT  Track_Name, Most_Purchased_Track
FROM (SELECT t.name Track_Name, COUNT(t.TrackId) AS Most_Purchased_Track
	FROM Track t, Invoice i, InvoiceLine il
	WHERE t.TrackId = il.TrackId
	AND il.InvoiceId = i.InvoiceId
	GROUP BY t.Name
	ORDER BY Most_Purchased_Track DESC
	LIMIT 5)
