-- Similar ao req. 7, dessa vez utilizando WHERE para realizar uma busqueda específica, pelo parametro nome_artista
SELECT 
Art.nome_artista AS artista,
Alb.nome_album AS album
FROM SpotifyClone.info_artista Art
INNER JOIN SpotifyClone.info_albums Alb
ON Alb.artista_id = Art.artista_id
WHERE Art.nome_artista = 'Walter Phoenix'
ORDER BY album;