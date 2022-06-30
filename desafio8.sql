SELECT
    art.nome AS artista,
    alb.nome AS album
FROM 
    SpotifyClone.artista AS art
JOIN 
    SpotifyClone.album AS alb ON art.id = alb.artista_id
WHERE 
    art.nome LIKE 'Walter Phoenix';