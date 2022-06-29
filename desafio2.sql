SELECT
    COUNT(art.id) AS cancoes,
    COUNT(DISTINCT alb.artista_id) AS artistas, 
    COUNT(DISTINCT alb.nome) AS albuns
FROM 
    SpotifyClone.artista AS art
JOIN
    SpotifyClone.album AS alb ON art.id = alb.artista_id
JOIN 
    SpotifyClone.cancoes AS can ON can.album_id = alb.id;
