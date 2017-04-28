SELECT c.FirstName, c.LastName, i.InvoiceId, i.InvoiceDate, i.BillingCountry
FROM Customer  c, Invoice i
WHERE c.Country = "Brazil"
