SELECT
    COUNT(h.usuario_id) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.historico_de_reproducoes AS h
WHERE
    h.usuario_id = 3;