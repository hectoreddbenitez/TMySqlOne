-- Primeiro feito 'solito', sem ajuda de ninguém!!!! Tava na hora...
SELECT M.nome_musica AS cancao, COUNT(H.musica_id) AS reproducoes
FROM SpotifyClone.info_musica M
INNER JOIN  SpotifyClone.historico_de_reproducoes H
ON H.musica_id = M.musica_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao 
LIMIT 2;