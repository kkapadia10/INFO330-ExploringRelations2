-- Find tracks (id, name, and composer) that have never been purchased (that is, they aren't part of a line item in an invoice).

SELECT t.TrackId, t.Name AS TrackName, t.Composer FROM tracks t  LEFT JOIN invoice_items i ON t.TrackId = i.TrackId WHERE i.InvoiceLineId IS NULL;