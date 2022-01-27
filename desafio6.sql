SELECT 
ROUND(MIN(P.valor_plano), 2) AS faturamento_minimo,
ROUND(MAX(P.valor_plano), 2) AS faturamento_maximo,
ROUND(AVG(P.valor_plano), 2) AS faturamento_medio,
ROUND(SUM(P.valor_plano), 2) AS faturamento_total
FROM SpotifyClone.info_planos P
INNER JOIN SpotifyClone.info_usuario U
ON U.plano_id = P.plano_id;