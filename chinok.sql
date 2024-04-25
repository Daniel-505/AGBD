SELECT name,Composer,Milliseconds FROM tracks

SELECT FirstName,LastName,Address,City FROM customers

SELECT name,Composer,Milliseconds FROM tracks
WHERE Milliseconds > 2900000

SELECT FirstName,LastName,Company FROM customers
WHERE Company is not NULL

SELECT BillingCity FROM invoices
WHERE BillingState is not NULL
ORDER by BillingState DESC

SELECT Title FROM albums
WHERE Title like "%OF%"
ORDER by Title ASC

SELECT t.name, g.name FROM tracks t
JOIN genres g on t.GenreId

SELECT t.name, a.Title FROM tracks t
JOIN albums a on t.AlbumId = a.AlbumId
ORDER by a.Title DESC