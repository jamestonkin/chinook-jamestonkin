SELECT e.FirstName, e.LastName, COUNT(c.CustomerId) Total_Customers_Assigned
FROM Employee  e, Customer c
WHERE e.Title = "Sales Support Agent"
AND e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId
