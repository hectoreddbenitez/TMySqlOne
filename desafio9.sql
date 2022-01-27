SELECT COUNT(H.usuario_id) AS quantidade_musicas_no_historico 
FROM SpotifyClone.historico_de_reproducoes H
INNER JOIN SpotifyClone.info_usuario U
ON H.usuario_id = U.usuario_id
WHERE U.nome_usuario = 'Bill';