-- Conseguí finalizar analizando o PR da Ana Luisa
SELECT U.nome_usuario AS usuario, 
	IF(MAX(YEAR(H.data_reproducao)) = "2021", 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.info_usuario U
INNER JOIN SpotifyClone.historico_de_reproducoes H
ON U.usuario_id = H.usuario_id
GROUP BY nome_usuario
ORDER BY nome_usuario;