SELECT  Media_Type, MAX(Most_Purchased_Media_Type)
FROM (SELECT mt.name Media_Type, COUNT(mt.MediaTypeId) AS Most_Purchased_Media_Type
	FROM Track t, Invoice i, InvoiceLine il, MediaType mt
	WHERE t.TrackId = il.TrackId
	AND il.InvoiceId = i.InvoiceId
	AND t.MediaTypeId = mt.MediaTypeId
	GROUP BY mt.Name
	ORDER BY Most_Purchased_Media_Type DESC)
