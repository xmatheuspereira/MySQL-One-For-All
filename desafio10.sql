SELECT
    c.nome AS nome,
    COUNT(h.cancao_id) AS reproducoes
FROM
    SpotifyClone.cancoes AS c
JOIN
    SpotifyClone.historico_de_reproducoes AS h ON c.id = h.cancao_id
JOIN
    SpotifyClone.usuario AS u ON u.id = h.usuario_id
WHERE
    u.plano_id = 1 OR u.plano_id = 2
GROUP BY
    nome
ORDER BY
    nome;