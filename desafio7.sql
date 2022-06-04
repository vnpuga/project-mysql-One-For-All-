SELECT 
	a.name AS "artista",
  al.name AS "album",
  (SELECT COUNT(user_id) FROM SpotifyClone.follow WHERE artist_id = a.artist_id) AS "seguidores"
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.album AS al ON al.artist_id = a.artist_id
ORDER BY seguidores DESC, artista, album;