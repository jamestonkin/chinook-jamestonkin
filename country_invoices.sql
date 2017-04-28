SELECT COUNT (i.InvoiceID) Total_Invoices_Per_Country, i.BillingCountry
FROM Invoice i
GROUP BY i.BillingCountry
