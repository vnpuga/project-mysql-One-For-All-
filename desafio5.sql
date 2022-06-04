SELECT
	s.name AS "cancao",
  COUNT(h.song_id) AS "reproducoes"
FROM SpotifyClone.song AS s
INNER JOIN SpotifyClone.history AS h ON s.song_id = h.song_id
GROUP BY s.name
ORDER BY reproducoes DESC, cancao
LIMIT  2;