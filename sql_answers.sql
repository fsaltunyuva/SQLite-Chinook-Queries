-- 1
-- select FirstName, LastName, CustomerId, Country 
-- from Customer
-- where Country != 'USA'

-- 2
-- select * 
-- from Customer
-- where Country == 'Brazil'

-- 3
-- select FirstName, LastName, InvoiceId, InvoiceDate, Country
-- from Customer, Invoice
-- where Customer.CustomerId == Invoice.CustomerId and Country == 'Brazil'

-- 4
-- select *
-- from Employee
-- where Employee.Title == 'Sales Support Agent'

-- 5
-- select DISTINCT(BillingCountry)
-- from Invoice

-- 6
-- select *
-- from Invoice, Customer
-- where Invoice.CustomerId == Customer.CustomerId
-- and Country == 'Brazil'

-- 7
-- select Employee.FirstName, Employee.LastName, Invoice.InvoiceId
-- from Invoice, Customer, Employee
-- where Invoice.CustomerId == Customer.CustomerId and Customer.SupportRepId == Employee.EmployeeId

-- 8 ???
-- select Invoice.Total, Customer.FirstName || " " || Customer.LastName as "Customer Name", Customer.Country, Employee.FirstName || " " || Employee.LastName as "Employee Name"
-- from Invoice, Customer, Employee
-- --where Invoice.CustomerId == Customer.CustomerId and Customer.SupportRepId == Employee.EmployeeId

-- 9 
-- select COUNT(*), SUM(Invoice.Total) as "Total Sales"
-- from Invoice
-- where InvoiceDate like "2009%" or "2010%" 

-- 10
-- select COUNT(*)
-- from InvoiceLine
-- where InvoiceLine.InvoiceId == 37

-- 11
-- select Invoice.InvoiceId, Count(*)
-- from Invoice, InvoiceLine
-- where Invoice.InvoiceId == InvoiceLine.InvoiceId
-- group by Invoice.InvoiceId

-- 12
-- select Track.Name
-- from InvoiceLine, Track
-- where Track.TrackId == InvoiceLine.TrackId

-- 13
-- select InvoiceLine.InvoiceLineId, Track.Name as "Track Name", Artist.Name as "Artist"
-- from Track, InvoiceLine, Album, Artist
-- where Track.TrackId == InvoiceLine.TrackId
-- and Album.AlbumId == Track.AlbumId
-- and Album.ArtistId == Artist.ArtistId
-- order by InvoiceLineId asc

-- 14
-- select Invoice.BillingCountry, Count(*)
-- from Invoice
-- group by Invoice.BillingCountry

-- 15
-- select Playlist.Name, Count(*)
-- from Playlist, PlaylistTrack
-- where Playlist.PlaylistId == PlaylistTrack.PlaylistId
-- group by PlayList.Name

-- 16
-- select Track.Name as "Track Name", Album.Title as "Album Name", MediaType.Name as "Media Type", Genre.Name as "Genre"
-- from Track, Album, MediaType, Genre
-- where Track.AlbumId == Album.AlbumId
-- and Track.MediaTypeId == MediaType.MediaTypeId
-- and Track.GenreId == Genre.GenreId
-- order by Track.Name asc

-- 17
-- SELECT i.InvoiceID as "Invoice Id", i.CustomerId as "Customer Id", 
-- 			i.InvoiceDate as "InvoiceDate", i.BillingAddress || " " || i.BillingCity || ", " || i.BillingState || " " || i.BillingPostalCode || " " || i.BillingCountry as "Billing Address",
-- 			COUNT(il.InvoiceLineId) as "Number Of Line Items", i.[Total] as "Total"
-- FROM Invoice i, InvoiceLine il
-- WHERE i.InvoiceId == il.InvoiceId
-- GROUP BY i.InvoiceId

-- 18
-- select Employee.FirstName|| " " || Employee.LastName as "Sale Agent", SUM(Invoice.Total) as "Total Sales"
-- from Employee, Customer, Invoice
-- where Employee.EmployeeId == Customer.SupportRepId
-- and Invoice.CustomerId == Customer.CustomerId
-- and Employee.Title == "Sales Support Agent"
-- group by Employee.EmployeeId

-- 19
-- select Employee.FirstName|| " " || Employee.LastName as "Sale Agent", SUM(Invoice.Total) as "Total Sales"
-- from Employee, Customer, Invoice
-- where Employee.EmployeeId == Customer.SupportRepId
-- and Invoice.CustomerId == Customer.CustomerId
-- and Employee.Title == "Sales Support Agent"
-- and Invoice.InvoiceDate like "2009%"
-- group by Employee.EmployeeId
-- limit 1

-- 20
-- select Employee.FirstName|| " " || Employee.LastName as "Sale Agent", SUM(Invoice.Total) as "Total Sales"
-- from Employee, Customer, Invoice
-- where Employee.EmployeeId == Customer.SupportRepId
-- and Invoice.CustomerId == Customer.CustomerId
-- and Employee.Title == "Sales Support Agent"
-- and Invoice.InvoiceDate like "2010%"
-- group by Employee.EmployeeId
-- limit 1

-- 21
-- select Employee.FirstName|| " " || Employee.LastName as "Sale Agent", SUM(Invoice.Total) as "Total Sales"
-- from Employee, Customer, Invoice
-- where Employee.EmployeeId == Customer.SupportRepId
-- and Invoice.CustomerId == Customer.CustomerId
-- and Employee.Title == "Sales Support Agent"
-- group by Employee.EmployeeId
-- limit 1

-- 22
-- select Employee.FirstName|| " " || Employee.LastName as "Sale Agent", COUNT(*)
-- from Employee, Customer
-- where Employee.Title == "Sales Support Agent"
-- and Employee.EmployeeId == Customer.SupportRepId
-- group by Employee.FirstName|| " " || Employee.LastName

-- 23
-- select Invoice.BillingCountry, SUM(Invoice.Total)
-- from Invoice
-- group by Invoice.BillingCountry
-- order by Invoice.Total desc

-- 24
-- select Track.Name, COUNT(*)
-- from Track, InvoiceLine, Invoice
-- where InvoiceLine.TrackId == Track.TrackId
-- and Invoice.InvoiceId == InvoiceLine.InvoiceId
-- and Invoice.InvoiceDate like "2013%"
-- group by Track.Name
-- order by COUNT(*) desc

-- 25
-- select Track.Name, COUNT(InvoiceLine.TrackId)
-- from Track, InvoiceLine
-- where InvoiceLine.TrackId == Track.TrackId
-- group by Track.Name
-- order by COUNT(InvoiceLine.TrackId) DESC
-- limit 5

-- 26
-- select Artist.Name, COUNT(*)
-- from Artist, Album, Track, InvoiceLine
-- where Artist.ArtistId == Album.ArtistId
-- and Album.AlbumId == Track.AlbumId
-- and Track.TrackId == InvoiceLine.TrackId
-- group by Artist.Name
-- order by COUNT(*) desc
-- limit 3

-- 27
-- select MediaType.Name, COUNT(*)
-- from MediaType, Track, InvoiceLine
-- where MediaType.MediaTypeId == Track.MediaTypeId
-- and Track.TrackId == InvoiceLine.TrackId
-- group by MediaType.Name
-- order by COUNT(*) desc
