SELECT
    FORMAT(MIN(p.preco), 2) AS faturamento_minimo, 
    FORMAT(MAX(p.preco), 2) AS faturamento_maximo,
    FORMAT(AVG(p.preco), 2) AS faturamento_medio, 
    FORMAT(SUM(p.preco), 2) AS faturamento_total
FROM
    SpotifyClone.plano AS p
JOIN 
    SpotifyClone.usuario AS u ON p.id = u.plano_id;
