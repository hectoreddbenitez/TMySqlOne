--https://app.betrybe.com/course/real-life-engineer/mysql-extra
SELECT
(SELECT COUNT(*) FROM SpotifyClone.info_musica) AS cancoes,
(SELECT COUNT(*) FROM SpotifyClone.info_artista) AS artistas,
(SELECT COUNT(*) FROM SpotifyClone.info_albums) AS albuns;