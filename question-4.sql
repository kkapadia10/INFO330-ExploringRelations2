-- Which sales agent made the most in sales in 2010?

SELECT e.FirstName , e.LastName AS AgentName, SUM(i.Total) AS TotalSales FROM employees e JOIN customers c ON e.EmployeeId = c.SupportRepId JOIN invoices i ON c.CustomerId = i.CustomerId WHERE i.InvoiceDate BETWEEN '2010-01-01 00:00:00' AND '2010-12-31 00:00:00'  GROUP BY AgentName ORDER BY TotalSales DESC;