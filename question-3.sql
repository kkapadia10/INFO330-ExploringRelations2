-- Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT i.InvoiceLineId, t.Name AS TrackName, ar.Name AS ArtistName FROM invoice_items i JOIN tracks t ON i.TrackId = t.TrackId JOIN albums al ON t.AlbumId = al.AlbumId JOIN artists ar ON al.ArtistId = ar.ArtistId ORDER BY i.InvoiceLineId;