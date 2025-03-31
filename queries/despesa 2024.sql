SELECT 
    o.Razao_Social,
    SUM(c.vl_saldo_final) AS total_despesa
FROM 
    contabeis c
JOIN 
    operadora o ON c.reg_ans = o.Registro_ANS
WHERE 
    REPLACE(TRIM(c.descricao), ' ', '') LIKE REPLACE(TRIM('%EVENTOS/ SINISTROS CONHECIDOS OU AVISADOS DE ASSISTÊNCIA A SAÚDE MEDICO HOSPITALAR%'), ' ', '')
    AND c.data BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY 
    o.Razao_Social
ORDER BY 
    total_despesa DESC
LIMIT 10;
