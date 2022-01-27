SELECT
M.nome_musica AS nome,
COUNT(H.musica_id) AS reproducoes 
FROM SpotifyClone.info_musica M
INNER JOIN SpotifyClone.historico_de_reproducoes H
ON H.musica_id = M.musica_id
INNER JOIN SpotifyClone.info_usuario U
ON H.usuario_id = U.usuario_id 
WHERE U.plano_id IN (1, 4)
GROUP BY nome
ORDER BY nome;