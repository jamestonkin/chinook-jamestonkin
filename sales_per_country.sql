SELECT SUM(i.Total), i.BillingCountry
FROM Invoice i
GROUP BY i.BillingCountry
