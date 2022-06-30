SELECT
    c.nome AS cancao, 
    COUNT(h.cancao_id) AS reproducoes
FROM
    SpotifyClone.cancoes AS c
JOIN
    SpotifyClone.historico_de_reproducoes AS h ON c.id = h.cancao_id
GROUP BY
    cancao
ORDER BY
    reproducoes DESC, 
    cancao LIMIT 2;
