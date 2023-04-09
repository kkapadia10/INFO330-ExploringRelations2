-- What was the most purchased track of 2013?

SELECT t.Name AS TrackName, COUNT(il.InvoiceLineId) AS PurchaseCount FROM invoice_items il JOIN tracks t ON il.TrackId = t.TrackId JOIN invoices i ON il.InvoiceId = i.InvoiceId WHERE i.InvoiceDate BETWEEN '2013-01-01 00:00:00' AND '2013-12-31 00:00:00' GROUP BY TrackName ORDER BY PurchaseCount DESC ;