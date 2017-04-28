SELECT i.[Total], c.FirstName, c.LastName, c.Country, e.FirstName, e.LastName
FROM Customer c, Invoice i, Employee e
WHERE c.CustomerId = i.CustomerId AND e.EmployeeID = c.SupportRepId
