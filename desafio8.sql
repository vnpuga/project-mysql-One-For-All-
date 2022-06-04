SELECT 
	a.name AS "artista",
  al.name AS "album"
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.album AS al ON al.artist_id = a.artist_id
WHERE a.name = "Walter Phoenix"
ORDER BY album;