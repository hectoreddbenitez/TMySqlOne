SELECT
 U.nome_usuario AS usuario,
 COUNT(H.usuario_id) AS qtde_musicas_ouvidas,
 ROUND(SUM((M.duração_segundos)/60),2) AS total_minutos
FROM SpotifyClone.info_usuario U
INNER JOIN SpotifyClone.historico_de_reproducoes H
ON U.usuario_id = H.usuario_id
INNER JOIN SpotifyClone.info_musica M
ON M.musica_id = H.musica_id
GROUP BY usuario
ORDER BY usuario;