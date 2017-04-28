SELECT  Track_Name, MAX(Most_Purchased_Track_2013)
FROM (SELECT t.name Track_Name, COUNT(t.TrackId) AS Most_Purchased_Track_2013
	FROM Track t, Invoice i, InvoiceLine il
	WHERE t.TrackId = il.TrackId
	AND il.InvoiceId = i.InvoiceId
	AND INSTR (i.InvoiceDate, '2013')
	GROUP BY t.Name
	ORDER BY Most_Purchased_Track_2013 DESC)
