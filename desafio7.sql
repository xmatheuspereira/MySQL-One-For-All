
SELECT
    art.nome AS artista,
    alb.nome AS album,
    COUNT(seg.usuario_id) AS seguidores
FROM
    SpotifyClone.artista AS art
JOIN
    SpotifyClone.album AS alb ON art.id = alb.artista_id
JOIN
    SpotifyClone.seguindo_artistas AS seg ON art.id = seg.artista_id
GROUP BY
    artista,
    album
ORDER BY
    seguidores DESC,
    artista,
    album;
