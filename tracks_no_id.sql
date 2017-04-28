SELECT t.Name, al.Title, mt.Name, g.Name
FROM Track t, Album al, MediaType mt, Genre g
WHERE t.AlbumId = al.AlbumId
AND t.MediaTypeId = mt.MediaTypeId
AND t.GenreId = g.GenreId
