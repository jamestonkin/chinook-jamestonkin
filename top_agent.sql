SELECT e.FirstName, e.LastName, MAX(Total_Sales) Top_Sales_Agent
FROM (SELECT ROUND(SUM (i.Total), 2) AS Total_Sales
	FROM Employee  e, Invoice i, Customer c
	WHERE e.Title = "Sales Support Agent"
	AND i.CustomerId = c.CustomerId
	AND e.EmployeeId = c.SupportRepId
	GROUP BY e.EmployeeId), Employee e
