--  Usando o INNER JOIN como RIGHT e LEFT JOIN!
SELECT 
Art.nome_artista AS artista,
Alb.nome_album AS album,
COUNT(usuario_id)AS seguidores
FROM SpotifyClone.info_artista Art
INNER JOIN SpotifyClone.info_albums Alb
INNER JOIN SpotifyClone.info_seguidores Seg
ON Alb.artista_id = Art.artista_id AND Alb.artista_id = Seg.artista_id
GROUP BY Alb.album_id, Art.artista_id
ORDER BY seguidores DESC, artista, album;