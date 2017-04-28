SELECT e.FirstName, e.LastName, ROUND(SUM (i.Total), 2) Total_Sales
FROM Employee  e, Invoice i, Customer c
WHERE e.Title = "Sales Support Agent"
AND i.CustomerId = c.CustomerId
AND e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId
