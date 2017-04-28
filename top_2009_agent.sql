SELECT e.FirstName, e.LastName, MAX(Total_Sales) Top_Sales_Agent_2009
FROM (SELECT ROUND(SUM (i.Total), 2) AS Total_Sales
	FROM Employee  e, Invoice i, Customer c
	WHERE e.Title = "Sales Support Agent"
	AND i.CustomerId = c.CustomerId
	AND e.EmployeeId = c.SupportRepId
	AND i.InvoiceDate LIKE '%2009%'
	GROUP BY e.EmployeeId), Employee e
