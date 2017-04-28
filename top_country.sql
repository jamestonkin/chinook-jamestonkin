SELECT i.BillingCountry, MAX(Most_Sales_By_Country) Country_With_Most_Sales
FROM (SELECT SUM(i.Total) AS Most_Sales_By_Country
	FROM Invoice i
	GROUP BY i.BillingCountry), Invoice i
