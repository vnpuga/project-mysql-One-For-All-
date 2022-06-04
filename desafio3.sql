SELECT 
	u.name AS "usuario",
  COUNT(h.song_id) AS "qtde_musicas_ouvidas",
  ROUND(SUM(s.duration / 60), 2) AS "total_minutos"
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.history AS h ON h.user_id = u.user_id
INNER JOIN SpotifyClone.song AS s ON s.song_id = h.song_id
GROUP BY u.user_id
ORDER BY u.name;