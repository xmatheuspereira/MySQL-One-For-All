SELECT 
    u.nome AS usuario,
	  COUNT(h.usuario_id) AS qtde_musicas_ouvidas,
	  ROUND(SUM(c.duracao_segundos) / 60 ,2) AS total_minutos
FROM 
    SpotifyClone.historico_de_reproducoes AS h 
JOIN 
    SpotifyClone.usuario AS u ON u.id = h.usuario_id
JOIN
    SpotifyClone.cancoes AS c ON c.id = h.cancao_id 
GROUP BY 
    u.nome 
ORDER BY 
    u.nome;
