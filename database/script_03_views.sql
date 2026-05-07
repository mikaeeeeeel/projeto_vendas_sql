SELECT
    c.Nome,
    SUM(v.ValorToal) AS TotalGasto
    FROM Clientes c
    JOIN Vendas v ON c.ClienteID = v.ClienteID
    GROUP BY c.Nome
    ORDER BY TotalGasto DESC;

-- Ranking com Windows Function

SELECT
    Nome,
    TotalGasto,
    RANK() OVER (ORDER BY TotalGasto DESC) AS Ranking
FROM (
    SELECT
        c.Nome,
        SUM(v.ValorTotal) AS TotalGasto
    FROM Clientes c
    JOIN Vendas v ON c.ClienteID = v.ClienteID
    GROUP BY c.Nome
) AS Subconsulta;