SELECT 
    u.nome AS usuario,
    IF (YEAR(MAX(h.data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM
    SpotifyClone.historico_de_reproducoes AS h
JOIN 
    SpotifyClone.usuario AS u
ON u.id = h.usuario_id 
GROUP BY 
    usuario;