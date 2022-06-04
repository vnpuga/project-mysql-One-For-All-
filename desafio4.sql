SELECT 
	u.name AS "usuario",
  IF(MAX(YEAR(h.reproduction_date)) >= 2021, "Usuário ativo", "Usuário inativo") AS "condicao_usuario"
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.history AS h ON h.user_id = u.user_id
GROUP BY u.user_id
ORDER BY u.name;